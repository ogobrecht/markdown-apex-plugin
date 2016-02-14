FUNCTION markdown_render( p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin )
   RETURN apex_plugin.t_dynamic_action_render_result
IS
   v_result apex_plugin.t_dynamic_action_render_result;
BEGIN
   IF APEX_APPLICATION.g_debug THEN
      apex_plugin_util.debug_dynamic_action( p_plugin => p_plugin, p_dynamic_action => p_dynamic_action );
   END IF;

   apex_css.add_file( p_name => 'markdown-', p_directory => p_plugin.file_prefix, p_version => '1.1.0' );

   apex_javascript.add_library( p_name                  => 'markdown-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '1.1.0'
                              , p_check_to_add_minified => TRUE );

   apex_javascript.add_library( p_name                  => 'highlight.pack.common.'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '9.1.0'
                              , p_check_to_add_minified => FALSE );

   --> Add custom styles, if defined under "Shared Components > User Interface > Component Settings > Markdown [Plug-in]"
   IF p_plugin.attribute_01 IS NOT NULL THEN
      apex_css.add( p_css => p_plugin.attribute_01, p_key => 'markdown_custom_styles' );
   END IF;

   apex_javascript.add_onload_code(
       'markdown.substitutions.image_prefix = '''     || v('IMAGE_PREFIX')     || ''';' ||
       'markdown.substitutions.app_images = '''       || v('APP_IMAGES')       || ''';' ||
       'markdown.substitutions.workspace_images = ''' || v('WORKSPACE_IMAGES') || ''';' ||
       'markdown.substitutions.images = '''           || p_plugin.attribute_14 || ''';' ||
       'markdown.options.debug = '               || CASE WHEN APEX_APPLICATION.g_debug    THEN 'true;' ELSE 'false;' END ||
       'markdown.options.sanitizingConverter = ' || CASE WHEN p_plugin.attribute_13 = 'Y' THEN 'true;' ELSE 'false;' END ||
       'markdown.options.tryToUseOriginalValueFromDisplayOnlyItems = '
                                                 || CASE WHEN p_plugin.attribute_12 = 'Y' THEN 'true;' ELSE 'false;' END ||
       'markdown.options.syntaxHighlighting = '  || CASE WHEN p_plugin.attribute_02 = 'Y' THEN 'true;' ELSE 'false;' END ||
       'markdown.options.markdownExtra = '       || CASE WHEN p_plugin.attribute_03 = 'Y' THEN 'true;' ELSE 'false;' END ||
       'markdown.options.markdownExtraExtensions = [' || RTRIM (
           CASE WHEN p_plugin.attribute_04 = 'Y' THEN '"tables",'          ELSE NULL END ||
           CASE WHEN p_plugin.attribute_05 = 'Y' THEN '"fenced_code_gfm",' ELSE NULL END ||
           CASE WHEN p_plugin.attribute_06 = 'Y' THEN '"def_list",'        ELSE NULL END ||
           CASE WHEN p_plugin.attribute_07 = 'Y' THEN '"footnotes",'       ELSE NULL END ||
           CASE WHEN p_plugin.attribute_08 = 'Y' THEN '"attr_list",'       ELSE NULL END ||
           CASE WHEN p_plugin.attribute_09 = 'Y' THEN '"smartypants",'     ELSE NULL END ||
           CASE WHEN p_plugin.attribute_10 = 'Y' THEN '"newlines",'        ELSE NULL END ||
           CASE WHEN p_plugin.attribute_11 = 'Y' THEN '"strikethrough",'   ELSE NULL END , ',' ) || '];' ||
       'markdown.init();'
       ,
       'NET.GOBRECHTS.MARKDOWN'
   );

   v_result.javascript_function := 'function(){ markdown.makeHtmlOrCreateEditors(this.triggeringElement); }';

   RETURN v_result;
END;