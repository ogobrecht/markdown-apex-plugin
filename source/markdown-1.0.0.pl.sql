FUNCTION markdown_render( p_dynamic_action IN apex_plugin.t_dynamic_action
                        , p_plugin         IN apex_plugin.t_plugin )
   RETURN apex_plugin.t_dynamic_action_render_result
IS
   v_result apex_plugin.t_dynamic_action_render_result;
BEGIN
   IF APEX_APPLICATION.g_debug THEN
      apex_plugin_util.debug_dynamic_action( p_plugin         => p_plugin
                                           , p_dynamic_action => p_dynamic_action );
   END IF;

   apex_css.add_file( p_name      => 'markdown-'
                    , p_directory => p_plugin.file_prefix
                    , p_version   => '1.0.0' );

   apex_javascript.add_library( p_name                  => 'markdown-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '1.0.0'
                              , p_check_to_add_minified => TRUE );

   --> Add custom styles, if defined under
   --> "Shared Components > User Interface > Component Settings > Markdown [Plug-in]"
   IF p_plugin.attribute_01 IS NOT NULL THEN
      apex_css.add( p_css => p_plugin.attribute_01, p_key => 'markdown_custom_styles' );
   END IF;

   v_result.javascript_function :=    'function(){ markdown.makeHtmlOrCreateEditors(this.triggeringElement, '
                                   || CASE
                                         WHEN APEX_APPLICATION.g_debug THEN 'true'
                                         ELSE 'false'
                                      END
                                   || '); }';

   RETURN v_result;
END;