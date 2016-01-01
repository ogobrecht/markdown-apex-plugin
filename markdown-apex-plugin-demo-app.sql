set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end;
/
 
 
--application/set_environment
prompt  APPLICATION 66154 - Markdown Dynamic Action Type Plugin - Demo App
--
-- Application Export:
--   Application:     66154
--   Name:            Markdown Dynamic Action Type Plugin - Demo App
--   Date and Time:   20:25 Friday January 1, 2016
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.2.6.00.03
--   Instance ID:     63112407790382
--
-- Import:
--   Using Application Builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application
 
-- Application Statistics:
--   Pages:                      3
--     Items:                    5
--     Processes:                4
--     Regions:                  5
--     Dynamic Actions:          3
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 2
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                17
--         Region:              18
--         Label:                7
--         List:                14
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               6
--         Report:              11
--       LOVs:                   1
--       Plug-ins:               1
--     Globalization:
--     Reports:
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,100000));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2012.01.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,66154);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,66154));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,66154));
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,66154),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,66154),
  p_owner => nvl(wwv_flow_application_install.get_schema,'TEST'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'Markdown Dynamic Action Type Plugin - Demo App'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'MARKDOWN'),
  p_page_view_logging => 'YES',
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt=> '0A076E7E4B3C1D235E81894112A06404B6DE48E02C3382689F0FCBE2501E803B',
  p_max_session_length_sec=> null,
  p_compatibility_mode=> '4.2',
  p_html_escaping_mode=> 'E',
  p_flow_language=> 'en',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> 'N',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,''),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 31797679814104970 + wwv_flow_api.g_id_offset,
  p_logout_url=> '',
  p_application_tab_set=> 0,
  p_logo_image => 'TEXT:Markdown Dynamic Action Type Plugin - Demo App',
  p_public_url_prefix => '',
  p_public_user=> 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '',
  p_cust_authentication_page=> '',
  p_flow_version=> 'Demo App Release 2016-01-01 - Plugin Release 1.0.0 (2016-01-01)',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'N',
  p_browser_frame=>'D',
  p_deep_linking=>'Y',
  p_vpd=> '',
  p_vpd_teardown_code=> '',
  p_authorize_public_pages_yn=>'N',
  p_csv_encoding=> 'Y',
  p_auto_time_zone=> 'N',
  p_include_legacy_javascript=> 'Y',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20160101202537',
  p_ui_type_name => null,
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

----------------
--package app map
--
prompt  ...user interfaces
--
 
begin
 
--application/user interface/desktop
wwv_flow_api.create_user_interface (
  p_id => 31797461327104937 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_ui_type_name => 'DESKTOP'
 ,p_display_name => 'Desktop'
 ,p_display_seq => 10
 ,p_use_auto_detect => false
 ,p_is_default => true
 ,p_theme_id => 25
 ,p_home_url => 'f?p=&APP_ID.:1:&SESSION.'
 ,p_login_url => 'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
  );
null;
 
end;
/

prompt  ...plug-in settings
--
 
begin
 
--application/plug-in setting/dynamic_action_plugin_net_gobrechts_markdown
wwv_flow_api.create_plugin_setting (
  p_id => 3663714109471327 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_plugin => 'PLUGIN_NET.GOBRECHTS.MARKDOWN'
  );
--application/plug-in setting/item_type_native_yes_no
wwv_flow_api.create_plugin_setting (
  p_id => 31779573141104780 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_plugin => 'NATIVE_YES_NO'
 ,p_attribute_01 => 'Y'
 ,p_attribute_03 => 'N'
  );
null;
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 31797581407104962 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_home
wwv_flow_api.create_tab (
  p_id=> 31799061535104993 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_HOME',
  p_tab_text => 'Home',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_reportexample
wwv_flow_api.create_tab (
  p_id=> 31809662335738849 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'T_REPORTEXAMPLE',
  p_tab_text => 'Report Example',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
--application/shared_components/user_interface/lov/user_tables
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 29666768047009992 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'USER_TABLES',
  p_lov_query=> '  SELECT table_name d, table_name r'||unistr('\000a')||
'    FROM user_tables'||unistr('\000a')||
'ORDER BY 1');
 
null;
 
end;
/

prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00001
prompt  ...PAGE 1: Home
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_user_interface_id => 31797461327104937 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Home'
 ,p_step_title => 'Home [Markdown Plugin]'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Home'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20151231171103'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 3657104829441941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Standard Textarea, No Label, Form Element Class "markdown" ',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 31792776117104815+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 6,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 29410040058322127 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Plugin Description',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 31792776117104815+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 6,
  p_plug_display_column=> 7,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>3664102236491458 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_SAMPLE_MARKDOWN_EDITOR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 3657104829441941+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source=>'# Headers Are Starting With 1-6 Hash Characters `#`'||unistr('\000a')||
''||unistr('\000a')||
'## The Number Of Hash Characters'||unistr('\000a')||
''||unistr('\000a')||
'### Defining The Header Level '||unistr('\000a')||
''||unistr('\000a')||
'Text wrapped into asterisks `*` or underscores `_`'||unistr('\000a')||
'is emphasized. One of these characters results in'||unistr('\000a')||
'*italic* `*italic*` font style, two in '||unistr('\000a')||
'**bold** `**bold**` font style. Both styles can be'||unistr('\000a')||
'***combined*** `***combined***`.'||unistr('\000a')||
''||unistr('\000a')||
'New paragraphs  '||unistr('\000a')||
'begin with a blank line. You can make line breaks'||unistr('\000a')||
'by placing two or more spaces at the end of a line like'||unistr('\000a')||
'in this sentence after the words "New paragraphs".'||unistr('\000a')||
''||unistr('\000a')||
'* An unordered list begins with one of the following'||unistr('\000a')||
'  signs: `* - +`'||unistr('\000a')||
'* You can hard wrap the lines for better readability'||unistr('\000a')||
'like in the first list item, but you can also be lazy'||unistr('\000a')||
'like in this item...'||unistr('\000a')||
'    * Sublist entries start by adding four spaces'||unistr('\000a')||
'    * Another sublist entry'||unistr('\000a')||
'* Ordered lists begin with a number'||unistr('\000a')||
'    1. The number value is not interesting for the'||unistr('\000a')||
'       rendered result'||unistr('\000a')||
'    1. Can you see the point?'||unistr('\000a')||
''||unistr('\000a')||
'You can write `inline code` by wrapping the text'||unistr('\000a')||
'in back ticks (`` `code` ``)...'||unistr('\000a')||
''||unistr('\000a')||
'    ... or complete code blocks by adding four spaces'||unistr('\000a')||
'    in front of your text.'||unistr('\000a')||
''||unistr('\000a')||
'> Blockquotes start with `>`'||unistr('\000a')||
'>> Blockquotes can be nested by adding additional `>`'||unistr('\000a')||
''||unistr('\000a')||
'Links are wrapped in square brackets. There are two'||unistr('\000a')||
'types of links: inline and reference.'||unistr('\000a')||
''||unistr('\000a')||
'Inline example:  '||unistr('\000a')||
'`[example](http://example.com/ "Optional title")`'||unistr('\000a')||
''||unistr('\000a')||
'Reference example:  '||unistr('\000a')||
'`[Markdown basics][1]`  '||unistr('\000a')||
'You then put the link target anywhere in your text:  '||unistr('\000a')||
'`[1]: https://daringfireball.net/projects/markdown/basics`'||unistr('\000a')||
''||unistr('\000a')||
'The rendered result: [Markdown basics][1]'||unistr('\000a')||
''||unistr('\000a')||
'Images can be created in the same way like links - the only'||unistr('\000a')||
'difference is the exclamation mark at the beginning:  '||unistr('\000a')||
'`![Alt text](/path/to/img.jpg "Optional title")`'||unistr('\000a')||
''||unistr('\000a')||
'We now try to reference an image from your webserver - '||unistr('\000a')||
'hopefully your image prefix is `/i/` ;-)'||unistr('\000a')||
''||unistr('\000a')||
'![SQL Workshop Icon][2]'||unistr('\000a')||
''||unistr('\000a')||
'[More on the philosophy of Markdown by John Gruber (markdown syntax description)][3]'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'[1]: https://daringfireball.net/projects/markdown/basics'||unistr('\000a')||
'[2]: /i/apex/builder/menu-sqlws-128.png "SQL Workshop Icon"'||unistr('\000a')||
'[3]: https://daringfireball.net/projects/markdown/syntax',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 4000,
  p_cHeight=> 10,
  p_tag_css_classes=> 'markdown',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 31795770883104823+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>3665728601676783 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_SAMPLE_READONLY_TEXTAREA',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 29410040058322127+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source=>'# Markdown For APEX'||unistr('\000a')||
''||unistr('\000a')||
'*This plugin uses the Stack Overflow JavaScript Markdown implementation to convert'||unistr('\000a')||
'Markdown formatted text into HTML.*'||unistr('\000a')||
''||unistr('\000a')||
'* Works with APEX versions 4.2.x and 5.x'||unistr('\000a')||
'* Turns a standard APEX text area into a Markdown editor only by setting the form element class to `markdown`'||unistr('\000a')||
'    * Live preview - try it out in the sample editor'||unistr('\000a')||
'    * Supports the readonly mode of the textarea - this plugin description is a textarea in read only mode ;-)'||unistr('\000a')||
'* Converts the content of all other DOM elements with the class `markdown` into HTML  '||unistr('\000a')||
'* Can be used on dynamic contents like reports'||unistr('\000a')||
'* Prints runtime statistics to the browser console when the page is in debug mode'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'## How To Use'||unistr('\000a')||
''||unistr('\000a')||
'1. Install the plugin'||unistr('\000a')||
'2. On your page create a dynamic action on `page load` with the action `Markdown [Plug-in]`'||unistr('\000a')||
'3. Add the CSS class `markdown` to your text areas and other content which should be converted'||unistr('\000a')||
'4. Optionally create an additional dynamic action per dynamic content (reports and other'||unistr('\000a')||
'   refreshable region types) on framework event `After Refresh` with selection type `Region`'||unistr('\000a')||
'5. For more information and how it works internally see the [project page][1]'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'## Links'||unistr('\000a')||
''||unistr('\000a')||
'* [Project page][1]'||unistr('\000a')||
'* [Sourcecode][2]'||unistr('\000a')||
'* [License: MIT][3]'||unistr('\000a')||
'* [Download][4]'||unistr('\000a')||
'* [Issues][5]'||unistr('\000a')||
''||unistr('\000a')||
'Download of this demo application is available [here][6].'||unistr('\000a')||
''||unistr('\000a')||
'Happy writing!'||unistr('\000a')||
''||unistr('\000a')||
'Ottmar'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'[1]: https://gobrechts.net/wiki/projects/markdown-apex-plugin'||unistr('\000a')||
'[2]: https://github.com/ogobrecht/markdown-apex-plugin'||unistr('\000a')||
'[3]: https://github.com/ogobrecht/markdown-apex-plugin/blob/master/LICENSE.txt'||unistr('\000a')||
'[4]: https://github.com/ogobrecht/markdown-apex-plugin/releases/latest'||unistr('\000a')||
'[5]: https://github.com/ogobrecht/markdown-apex-plugin/issues'||unistr('\000a')||
'[6]: https://github.com/ogobrecht/markdown-apex-plugin/blob/master/markdown-apex-plugin-demo-app.sql',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 4000,
  p_cHeight=> 10,
  p_tag_css_classes=> 'markdown',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_read_only_when_type=>'ALWAYS',
  p_field_template=> 31795770883104823+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 3664805155537607 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_name => 'Markdown'
 ,p_event_sequence => 10
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 3665118137537613 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 1
 ,p_event_id => 3664805155537607 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_NET.GOBRECHTS.MARKDOWN'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Report Example
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 2
 ,p_user_interface_id => 31797461327104937 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Report Example'
 ,p_step_title => 'Report Example [Markdown Plugin]'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Data Model Visualization'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20151231170838'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'WITH t'||unistr('\000a')||
'     AS (  SELECT    ''### '''||unistr('\000a')||
'                  || table_name'||unistr('\000a')||
'                  || CHR( 10 )'||unistr('\000a')||
'                  || (  SELECT LISTAGG( column_id || ''. '' || column_name, CHR( 10 ) )'||unistr('\000a')||
'                                  WITHIN GROUP (ORDER BY column_id)'||unistr('\000a')||
'                          FROM user_tab_columns c'||unistr('\000a')||
'                         WHERE c.table_name = u.table_name )'||unistr('\000a')||
'                     AS table_name'||unistr('\000a')||
'  ';

s:=s||'           FROM user_tables u)'||unistr('\000a')||
'  SELECT table_name AS wrapped_in_pre_tag'||unistr('\000a')||
'       , table_name AS with_markdown_class'||unistr('\000a')||
'       , table_name AS standard_report_column'||unistr('\000a')||
'    FROM t';

wwv_flow_api.create_page_plug (
  p_id=> 3674210087048537 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Sample Report With Markdown Content',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31792256145104814+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'WITH t'||unistr('\000a')||
'     AS (  SELECT    ''### '''||unistr('\000a')||
'                  || table_name'||unistr('\000a')||
'                  || CHR( 10 )'||unistr('\000a')||
'                  || (  SELECT LISTAGG( column_id || ''. '' || column_name, CHR( 10 ) )'||unistr('\000a')||
'                                  WITHIN GROUP (ORDER BY column_id)'||unistr('\000a')||
'                          FROM user_tab_columns c'||unistr('\000a')||
'                         WHERE c.table_name = u.table_name )'||unistr('\000a')||
'                     AS table_name'||unistr('\000a')||
'  ';

a1:=a1||'           FROM user_tables u)'||unistr('\000a')||
'  SELECT table_name AS wrapped_in_pre_tag'||unistr('\000a')||
'       , table_name AS with_markdown_class'||unistr('\000a')||
'       , table_name AS standard_report_column'||unistr('\000a')||
'    FROM t';

wwv_flow_api.create_worksheet(
  p_id=> 3674303368048537+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_region_id=> 3674210087048537+wwv_flow_api.g_id_offset,
  p_name=> 'Sample Report With Markdown Content',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '1000000',
  p_max_row_count_message=> 'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'Y',
  p_allow_save_rpt_public=>'N',
  p_allow_report_categories=>'N',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y_OF_Z',
  p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT',
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'Y',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'N',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'N',
  p_show_calendar=>'N',
  p_show_flashback=>'Y',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL',
  p_allow_exclude_null_values=>'N',
  p_allow_hide_extra_columns=>'N',
  p_icon_view_enabled_yn=>'N',
  p_icon_view_use_custom=>'N',
  p_icon_view_columns_per_row=>1,
  p_detail_view_enabled_yn=>'N',
  p_owner=>'ADMIN',
  p_internal_uid=> 3674303368048537);
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 3700617670367799+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_worksheet_id => 3674303368048537+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'WRAPPED_IN_PRE_TAG',
  p_display_order          =>1,
  p_column_identifier      =>'C',
  p_column_label           =>'Wrapped In Pre Element',
  p_report_label           =>'Wrapped In Pre Element',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_column_html_expression =>'<pre>#WRAPPED_IN_PRE_TAG#</pre>',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 3696415757032411+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_worksheet_id => 3674303368048537+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'WITH_MARKDOWN_CLASS',
  p_display_order          =>2,
  p_column_identifier      =>'A',
  p_column_label           =>'Wrapped In Span Element With Class "markdown"',
  p_report_label           =>'Wrapped In Span Element With Class "markdown"',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_column_html_expression =>'<span class="markdown">#WITH_MARKDOWN_CLASS#</span>',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 3702203843392329+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_worksheet_id => 3674303368048537+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'STANDARD_REPORT_COLUMN',
  p_display_order          =>3,
  p_column_identifier      =>'D',
  p_column_label           =>'Standard Report Column - Line Feeds Are Lost',
  p_report_label           =>'Standard Report Column - Line Feeds Are Lost',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'WRAPPED_IN_PRE_TAG:WITH_MARKDOWN_CLASS:STANDARD_REPORT_COLUMN:';

wwv_flow_api.create_worksheet_rpt(
  p_id => 3680407448057202+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_worksheet_id => 3674303368048537+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'36805',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>5,
  p_report_columns          =>rc1,
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div class="markdown">'||unistr('\000a')||
''||unistr('\000a')||
'# Example For Dynamic Content'||unistr('\000a')||
''||unistr('\000a')||
'This page has two Markdown dynamic actions. One on page load and one after refresh of the report. You can try to change some view options to trigger an AJAX refresh of the report. This description is written in the regions source of a HTML region and wrapped into a `div` element with the class `markdown`.'||unistr('\000a')||
''||unistr('\000a')||
'If you are interested in runtime stat';

s:=s||'istics of the Markdown converter, you can switch the page in debug mode. Statistics are printed to the browser console when a dynamic action is triggered.'||unistr('\000a')||
''||unistr('\000a')||
'You can see in the SQL statement of the following report how easy it is to create HTML content - no tag hell and you get clean, human readable export data:'||unistr('\000a')||
''||unistr('\000a')||
'    WITH t'||unistr('\000a')||
'         AS (  SELECT    ''### '''||unistr('\000a')||
'                      || table_name'||unistr('\000a')||
'        ';

s:=s||'              || CHR( 10 )'||unistr('\000a')||
'                      || (  SELECT LISTAGG( column_id || ''. '' || column_name, CHR( 10 ) )'||unistr('\000a')||
'                                      WITHIN GROUP (ORDER BY column_id)'||unistr('\000a')||
'                              FROM user_tab_columns c'||unistr('\000a')||
'                             WHERE c.table_name = u.table_name )'||unistr('\000a')||
'                         AS table_name'||unistr('\000a')||
'                 FROM user_tables u)'||unistr('\000a')||
'      SELECT tab';

s:=s||'le_name AS wrapped_in_pre_tag  -- wrapping is done via column '||unistr('\000a')||
'           , table_name AS with_markdown_class -- formatting (HTML expression)'||unistr('\000a')||
'           , table_name AS standard_report_column'||unistr('\000a')||
'        FROM t'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 3697425257063091 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Description',
  p_region_name=>'',
  p_region_css_classes=>'markdown',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 3696705864055619 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 2
 ,p_name => 'Markdown - on page load'
 ,p_event_sequence => 10
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 3697005046055625 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 2
 ,p_event_id => 3696705864055619 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_NET.GOBRECHTS.MARKDOWN'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 3679931904054821 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 2
 ,p_name => 'Markdown - after report refresh'
 ,p_event_sequence => 20
 ,p_triggering_element_type => 'REGION'
 ,p_triggering_region_id => 3674210087048537 + wwv_flow_api.g_id_offset
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'apexafterrefresh'
  );
wwv_flow_api.create_page_da_action (
  p_id => 3680221371054823 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 2
 ,p_event_id => 3679931904054821 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_NET.GOBRECHTS.MARKDOWN'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_user_interface_id => 31797461327104937 + wwv_flow_api.g_id_offset
 ,p_name => 'Login'
 ,p_alias => 'LOGIN_DESKTOP'
 ,p_step_title => 'Login'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 31779659356104786 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_cache_page_yn => 'N'
 ,p_last_upd_yyyymmddhh24miss => '20150523235452'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 31797965737104977 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 31791875258104813+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>31798074532104982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 31797965737104977+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Username',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31795982572104824+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>31798172506104982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 31797965737104977+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 31795982572104824+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>31798262309104984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 31797965737104977+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(31796467180104825 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.send_login_username_cookie ('||unistr('\000a')||
'    p_username => lower(:P101_USERNAME) );';

wwv_flow_api.create_page_process(
  p_id     => 31798466776104986 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.login('||unistr('\000a')||
'    p_username => :P101_USERNAME,'||unistr('\000a')||
'    p_password => :P101_PASSWORD );';

wwv_flow_api.create_page_process(
  p_id     => 31798386947104985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 31798659964104987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P101_USERNAME := apex_authentication.get_login_username_cookie;';

wwv_flow_api.create_page_process(
  p_id     => 31798584118104986 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 31798757617104987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>31799163527104994 + wwv_flow_api.g_id_offset,
  p_menu_id=>31798757617104987 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Home',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 66154
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 31779659356104786
 
begin
 
wwv_flow_api.create_template (
  p_id => 31779659356104786 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Login'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# id="uLogin">'||unistr('\000a')||
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'  #FORM_OPEN#'
 ,p_box => 
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div id="uLoginContainer">'||unistr('\000a')||
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_notification_message => '<section class="uSingleAlertMessage red" id="uNotificationMessage">'||unistr('\000a')||
'	<p>#MESSAGE#</p>'||unistr('\000a')||
'	<a href="javascript:void(0)" class="closeMessage" onclick="apex.jQuery(''#uNotificationMessage'').remove();"></a>'||unistr('\000a')||
'</section>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0"'
 ,p_theme_class_id => 6
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
 ,p_template_comment => '18'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31779778563104793 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31779659356104786 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 4
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_sidebar
prompt  ......Page template 31779859424104793
 
begin
 
wwv_flow_api.create_template (
  p_id => 31779859424104793 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - Left Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideLeftCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="uFooterBG">'||unistr('\000a')||
'        <div class="uLeft"></d'||
'iv>'||unistr('\000a')||
'        <div class="uRight"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_notification_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31779981294104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31779859424104793 + wwv_flow_api.g_id_offset
 ,p_name => 'Main Content'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780078724104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31779859424104793 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780176284104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31779859424104793 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780266426104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31779859424104793 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780367180104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31779859424104793 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar
prompt  ......Page template 31780463802104794
 
begin
 
wwv_flow_api.create_template (
  p_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - Left and Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uThreeColumns">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_8" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols ape'||
'x_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => 'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 17
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780571043104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 8
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780681433104794 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780773601104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780857744104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31780956047104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781058086104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31780463802104794 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITOIN_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_no_sidebar
prompt  ......Page template 31781167541104795
 
begin
 
wwv_flow_api.create_template (
  p_id => 31781167541104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - No Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<div class="apex_cols apex_span_12">'||unistr('\000a')||
'  <section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'    <div class="uRegionContent">'||unistr('\000a')||
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>'||unistr('\000a')||
'      <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'      <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="uRegionHeading">'||unistr('\000a')||
'      <span class="uButtonContainer">'||unistr('\000a')||
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>'||unistr('\000a')||
'      </span>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </section>'||unistr('\000a')||
'</div>'
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781268596104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781167541104795 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781384117104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781167541104795 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781465417104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781167541104795 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781561940104795 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781167541104795 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_right_sidebar
prompt  ......Page template 31781661769104796
 
begin
 
wwv_flow_api.create_template (
  p_id => 31781661769104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'No Tabs - Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideRightCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||
''||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781767584104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781661769104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Main Content'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781879400104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781661769104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31781963447104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781661769104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782068552104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781661769104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782158996104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31781661769104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_content_frame
prompt  ......Page template 31782260004104796
 
begin
 
wwv_flow_api.create_template (
  p_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Content Frame'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_javascript_code_onload => 
'initContentFrameTabs();'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uRegion uRegionNoPadding clearfix uRegionFrame">'||unistr('\000a')||
'      <div class="uRegionHeading">'||unistr('\000a')||
'        <h1>#TITLE#</h1>'||unistr('\000a')||
'        <span class="uButtonContainer">'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'  '||
'      </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="uFrameContent">'||unistr('\000a')||
'        <div class="uFrameMain">'||unistr('\000a')||
'            #BOX_BODY#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="uFrameSide">'||unistr('\000a')||
'          <div class="apex_cols apex_span_2 alpha omega">'||unistr('\000a')||
'            #REGION_POSITION_03#'||unistr('\000a')||
'          </div>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>'
 ,p_sidebar_def_reg_pos => 'BODY_3'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 10
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782378608104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782481943104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782573661104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Frame Buttons'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782658770104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Side Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782766874104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782882855104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31782971485104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783085559104797 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31782260004104796 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar
prompt  ......Page template 31783172864104798
 
begin
 
wwv_flow_api.create_template (
  p_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Left Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideLeftCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783264595104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783376597104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783469318104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783565837104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783670967104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783769203104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31783867485104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783172864104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar
prompt  ......Page template 31783979252104798
 
begin
 
wwv_flow_api.create_template (
  p_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Left and Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uThreeColumns">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_8" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols ape'||
'x_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784083149104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 8
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784186909104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784275837104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITON_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784380064104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITON_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784465614104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITON_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784571645104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITON_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784684937104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITON_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784762334104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31783979252104798 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITON_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_no_sidebar
prompt  ......Page template 31784871752104799
 
begin
 
wwv_flow_api.create_template (
  p_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - No Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => 'class="regionColumns"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 1
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31784963277104801 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785062658104801 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785156937104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785264124104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785379428104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785482945104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31784871752104799 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar
prompt  ......Page template 31785560438104802
 
begin
 
wwv_flow_api.create_template (
  p_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideRightCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||
''||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 16
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => '// show / hide grid'||unistr('\000a')||
'function showGrid() {'||unistr('\000a')||
'  apex.jQuery(''.apex_grid_container'').addClass(''showGrid'');'||unistr('\000a')||
'};'||unistr('\000a')||
'function hideGrid() {'||unistr('\000a')||
'  apex.jQuery(''.apex_grid_container'').removeClass(''showGrid'');'||unistr('\000a')||
'};'||unistr('\000a')||
'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => false
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785670906104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785785986104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785883702104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31785966433104802 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786071296104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786185944104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786263775104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31785560438104802 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_wizard_page
prompt  ......Page template 31786371352104803
 
begin
 
wwv_flow_api.create_template (
  p_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'One Level Tabs - Wizard Page'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_javascript_code_onload => 
'loadWizardTrain();'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <div class="cWizard">'||unistr('\000a')||
'      <div class="cWizardHeader">'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="cWizardContentContainer">'||unistr('\000a')||
'        <div class="cWizardContent">'||unistr('\000a')||
'            #BOX_'||
'BODY#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 8
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786467599104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Wizard Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 11
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786575707104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786670860104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Wizard Header'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786774182104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786864463104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31786960331104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787069393104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31786371352104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 31787173186104803
 
begin
 
wwv_flow_api.create_template (
  p_id => 31787173186104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Popup'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# id="uPopup">'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 4
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787285285104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787173186104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 31787373438104803
 
begin
 
wwv_flow_api.create_template (
  p_id => 31787373438104803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Printer Friendly'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# class="printerFriendly">'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 5
 ,p_error_page_template => '<div class="apex_cols apex_span_12">'||unistr('\000a')||
'  <section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'    <div class="uRegionContent">'||unistr('\000a')||
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>'||unistr('\000a')||
'      <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'      <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="uRegionHeading">'||unistr('\000a')||
'      <span class="uButtonContainer">'||unistr('\000a')||
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>'||unistr('\000a')||
'      </span>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </section>'||unistr('\000a')||
'</div>'
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787456076104804 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787373438104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787579065104804 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787373438104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787677330104804 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787373438104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787765618104804 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787373438104803 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar
prompt  ......Page template 31787886104104804
 
begin
 
wwv_flow_api.create_template (
  p_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - Left Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideLeftCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'<'||
'/div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31787982105104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788064975104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788165778104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788286226104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788358303104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788474919104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788586057104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31787886104104804 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar
prompt  ......Page template 31788667979104805
 
begin
 
wwv_flow_api.create_template (
  p_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - Left and Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uThreeColumns">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uLeftCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_02#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_8" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols ape'||
'x_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 18
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788783075104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 8
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788861716104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Left Column'
 ,p_placeholder => 'REGION_POSITION_02'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31788976453104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITON_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789060174104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITON_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789180482104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITON_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789278365104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITON_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789355149104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITON_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789479059104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31788667979104805 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITON_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_no_sidebar
prompt  ......Page template 31789563020104806
 
begin
 
wwv_flow_api.create_template (
  p_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - No Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uOneCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789668335104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789765318104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789877827104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31789962223104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790080827104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790184385104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31789563020104806 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar
prompt  ......Page template 31790262830104807
 
begin
 
wwv_flow_api.create_template (
  p_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 25
 ,p_name => 'Two Level Tabs - Right Sidebar'
 ,p_is_popup => false
 ,p_javascript_file_urls => '#IMAGE_PREFIX#libraries/modernizr/2.5.3/modernizr.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'
 ,p_css_file_urls => '#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#'||unistr('\000a')||
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'#APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>'||unistr('\000a')||
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'#FORM_OPEN#'||unistr('\000a')||
'<div class="uParentTabs">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <ul>'||unistr('\000a')||
'        #PARENT_TAB_CELLS#'||unistr('\000a')||
'      </ul>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>  '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<header id="uHeader">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      #REGION_POSITION_07#'||unistr('\000a')||
'      <div class="logoBar">'||unistr('\000a')||
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>'||unistr('\000a')||
'        <div class="userBlock">'||unistr('\000a')||
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'          <span>&APP_USER.</span>'||unistr('\000a')||
'          #NAVIGATION_BAR#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <nav>'||unistr('\000a')||
'    <div class="apex_grid_container clearfix">'||unistr('\000a')||
'      <div class="apex_cols apex_span_12">'||unistr('\000a')||
'        <ul class="uMainNav">'||unistr('\000a')||
'          #TAB_CELLS#'||unistr('\000a')||
'          #REGION_POSITION_06#'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </nav>'||unistr('\000a')||
'</header>'
 ,p_box => 
'<div id="uBodyContainer">'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div id="uTwoColumns" class="sideRightCol">'||unistr('\000a')||
'  <div class="apex_grid_container">'||unistr('\000a')||
'    <div class="apex_cols apex_span_10" id="uMidCol">'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="apex_cols apex_span_2" id="uRightCol">'||unistr('\000a')||
'      <aside>'||unistr('\000a')||
'        #REGION_POSITION_03#'||unistr('\000a')||
'      </aside>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||
''||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="apex_grid_container clearfix">'||unistr('\000a')||
'    <div class="apex_cols apex_span_12">'||unistr('\000a')||
'      <div class="uFooterContent">'||unistr('\000a')||
'        #REGION_POSITION_05#'||unistr('\000a')||
'        <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'        #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'        <span class="uFooterVersion">'||unistr('\000a')||
'          #APP_VERSION#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBA'||
'R#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVASCRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_top_non_curr_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>'||unistr('\000a')||
'          #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_03'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 2
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '#ROWS#'
 ,p_grid_row_template => '<div class="apex_row">'||unistr('\000a')||
'#COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">'||unistr('\000a')||
'#CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'alpha'
 ,p_grid_last_column_attributes => 'omega'
 ,p_grid_javascript_debug_code => 'apex.jQuery(document)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-on", showGrid)'||unistr('\000a')||
'    .on("apex-devbar-grid-debug-off", hideGrid);'
 ,p_has_edit_links => true
 ,p_translate_this_template => 'N'
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790380835104807 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Content Body'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 10
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790456271104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Breadcrumb'
 ,p_placeholder => 'REGION_POSITION_01'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790560842104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Right Column'
 ,p_placeholder => 'REGION_POSITION_03'
 ,p_has_grid_support => false
 ,p_max_fixed_grid_columns => 2
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790656010104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Footer'
 ,p_placeholder => 'REGION_POSITION_05'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790786007104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Page Level Tabs'
 ,p_placeholder => 'REGION_POSITION_06'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790882168104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Header'
 ,p_placeholder => 'REGION_POSITION_07'
 ,p_has_grid_support => false
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 31790973484104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 31790262830104807 + wwv_flow_api.g_id_offset
 ,p_name => 'Icon Nav Bar'
 ,p_placeholder => 'REGION_POSITION_08'
 ,p_has_grid_support => false
  );
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 31796467180104825
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31796467180104825 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button'
 ,p_template => 
'<button class="uButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_hot_template => 
'<button class="uButton uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_icon
prompt  ......Button Template 31796584942104859
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31796584942104859 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button - Icon'
 ,p_template => 
'<button class="uButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_hot_template => 
'<button class="uButton uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 6
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_icon_only
prompt  ......Button Template 31796683651104859
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31796683651104859 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button - Icon Only'
 ,p_template => 
'<button class="uButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_hot_template => 
'<button class="uButton uHotButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 7
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/large_button
prompt  ......Button Template 31796755711104861
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31796755711104861 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Large Button'
 ,p_template => 
'<button class="uButtonLarge #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_hot_template => 
'<button class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_template_comment => 'Standard Button'
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/large_button_icon
prompt  ......Button Template 31796887290104862
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31796887290104862 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Large Button - Icon'
 ,p_template => 
'<button class="uButtonLarge iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_hot_template => 
'<button class="uButtonLarge uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_theme_id => 25
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/large_button_icon_only
prompt  ......Button Template 31796960384104862
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 31796960384104862 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Large Button - Icon Only'
 ,p_template => 
'<button class="uButtonLarge iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_hot_template => 
'<button class="uButtonLarge uHotButton iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 8
 ,p_theme_id => 25
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/accessible_region_with_heading
prompt  ......region template 31791058159104808
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791058159104808 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">'||unistr('\000a')||
'  <h1 class="visuallyhidden">#TITLE#</h1>'||unistr('\000a')||
'  #BODY#'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Accessible Region with Heading'
 ,p_theme_id => 25
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/alert_region
prompt  ......region template 31791179356104811
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791179356104811 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Alert Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 31791269655104812
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791269655104812 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_theme_id => 25
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template when you want to contain content without a border.'||unistr('\000a')||
''||unistr('\000a')||
'TITLE=YES'||unistr('\000a')||
'BUTTONS=YES'||unistr('\000a')||
'100% WIDTH=NO'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 31791367304104812
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791367304104812 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <div class="uBreadcrumbs">'||unistr('\000a')||
'      #BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_theme_id => 25
 ,p_theme_class_id => 6
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<div id="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">'||unistr('\000a')||
'<div class="apex_grid_container">'||unistr('\000a')||
'  <div class="apex_cols apex_span_12">'||unistr('\000a')||
'    <div id="uBreadcrumbs">'||unistr('\000a')||
'      #BODY#'||unistr('\000a')||
'      <div class="uBreadcrumbsBG">'||unistr('\000a')||
'        <div class="uLeft"></div>'||unistr('\000a')||
'        <div class="uRight"></div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 31791485711104812
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791485711104812 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uButtonRegionContentContainer">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_theme_id => 25
 ,p_theme_class_id => 4
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 31791566737104812
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791566737104812 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uButtonRegionContentContainer">'||unistr('\000a')||
'    <div class="uButtonRegionContent">#BODY#</div>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_theme_id => 25
 ,p_theme_class_id => 17
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/content_frame_body_container
prompt  ......region template 31791678593104812
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791678593104812 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'#SUB_REGION_HEADERS#'||unistr('\000a')||
'#BODY#'||unistr('\000a')||
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">'||unistr('\000a')||
'#SUB_REGIONS#'||unistr('\000a')||
'</div>'
 ,p_sub_plug_header_template => '<div class="uFrameRegionSelector clearfix">'||unistr('\000a')||
'  <ul>'||unistr('\000a')||
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>'||unistr('\000a')||
'    #ENTRIES#'||unistr('\000a')||
'  </ul>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_header_entry_templ => '<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
 ,p_page_plug_template_name => 'Content Frame Body Container'
 ,p_theme_id => 25
 ,p_theme_class_id => 7
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/div_region_with_id
prompt  ......region template 31791778392104813
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791778392104813 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> '||unistr('\000a')||
'#BODY#'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'DIV Region with ID'
 ,p_theme_id => 25
 ,p_theme_class_id => 22
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 31791875258104813
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31791875258104813 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 25
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 31791961871104813 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 31791875258104813 + wwv_flow_api.g_id_offset
 ,p_name => 'Region Body'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => -1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region_expanded
prompt  ......region template 31792077725104813
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792077725104813 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>'||unistr('\000a')||
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>'||unistr('\000a')||
'      #TITLE#'||unistr('\000a')||
'    </h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE'||
'2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Hide and Show Region (Expanded)'
 ,p_theme_id => 25
 ,p_theme_class_id => 1
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region_hidden
prompt  ......region template 31792174399104814
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792174399104814 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>'||unistr('\000a')||
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>'||unistr('\000a')||
'      #TITLE#'||unistr('\000a')||
'    </h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANG'||
'E##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix" style="display: none;">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Hide and Show Region (Hidden)'
 ,p_theme_id => 25
 ,p_theme_class_id => 1
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/interactive_report_region
prompt  ......region template 31792256145104814
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792256145104814 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">'||unistr('\000a')||
'  <h1 class="visuallyhidden">#TITLE#</h1>'||unistr('\000a')||
'  #BODY#'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Interactive Report Region'
 ,p_theme_id => 25
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/modal_region
prompt  ......region template 31792377749104814
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792377749104814 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="apex_grid_container modal_grid">'||unistr('\000a')||
'  <div class="apex_cols apex_span_8 modal_col">'||unistr('\000a')||
'    <section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'      <div class="uRegionHeading">'||unistr('\000a')||
'        <h1>#TITLE#</h1>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="uRegionContent clearfix">'||unistr('\000a')||
'        #BODY#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'        <span class'||
'="uButtonContainer">'||unistr('\000a')||
'          #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'    </section>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Modal Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 31792472760104814 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 31792377749104814 + wwv_flow_api.g_id_offset
 ,p_name => 'Region Body'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 6
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
prompt  ......region template 31792560787104814
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792560787104814 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Region without Buttons and Titles'
 ,p_theme_id => 25
 ,p_theme_class_id => 19
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 31792657674104815
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792657674104815 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 25
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => '<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#FF0000" height="16">'||unistr('\000a')||
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td align=middle valign="top">'||unistr('\000a')||
'                  <div align="center">'||unistr('\000a')||
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">'||unistr('\000a')||
'                      <b>#TITLE# </b></font></div>'||unistr('\000a')||
'                </td>'||unistr('\000a')||
'              </tr>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'   <tr>'||unistr('\000a')||
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />'||unistr('\000a')||
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">'||unistr('\000a')||
'              <tr>'||unistr('\000a')||
'                <td colspan="2">'||unistr('\000a')||
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">'||unistr('\000a')||
'                    <tr>'||unistr('\000a')||
'                      <td>&nbsp;</td>'||unistr('\000a')||
'                      <td valign="top" width="106">'||unistr('\000a')||
'                        <P><FONT face="arial, helvetica" size="1">'||unistr('\000a')||
'                            #BODY#'||unistr('\000a')||
'                           </font>'||unistr('\000a')||
'                        </P>'||unistr('\000a')||
'                      </td>'||unistr('\000a')||
'                    </tr>'||unistr('\000a')||
'                  </table>'||unistr('\000a')||
'            </table>'||unistr('\000a')||
'          </td>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'      </table>'||unistr('\000a')||
'      <table border="0" cellpadding="0" cellspacing="0">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/standard_region
prompt  ......region template 31792776117104815
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31792776117104815 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Standard Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 31792877100104816 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 31792776117104815 + wwv_flow_api.g_id_offset
 ,p_name => 'Region Body'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => -1
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 31792970925104816 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 31792776117104815 + wwv_flow_api.g_id_offset
 ,p_name => 'Sub Regions'
 ,p_placeholder => 'SUB_REGIONS'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => -1
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/standard_region_no_padding
prompt  ......region template 31793085732104816
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31793085732104816 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <h1>#TITLE#</h1>'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_page_plug_template_name => 'Standard Region - No Padding'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 25
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_buttons
prompt  ......region template 31793158336104816
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 31793158336104816 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="cWizardButtons cWizardButtonsLeft">'||unistr('\000a')||
'#PREVIOUS##CLOSE#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div class="cWizardButtons cWizardButtonsRight">'||unistr('\000a')||
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'Wizard Buttons'
 ,p_theme_id => 25
 ,p_theme_class_id => 28
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 31794386945104820
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<button onclick="javascript:location.href=''#LINK#''" class="uButton uHotButton #A01#" type="button"><span>#TEXT#</span></a> ';

t2:=t2||'<button onclick="javascript:location.href=''#LINK#''" class="uButton #A01#" type="button"><span>#TEXT#</span></a> ';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794386945104820 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 25,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="uButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/featured_list_with_subtext
prompt  ......list template 31794478166104821
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li>'||unistr('\000a')||
'  <a href="#LINK#">'||unistr('\000a')||
'    <h3>#TEXT#</h3>'||unistr('\000a')||
'    <p>#A01#</p>'||unistr('\000a')||
'  </a>'||unistr('\000a')||
'</li>';

t2:=t2||'<li>'||unistr('\000a')||
'  <a href="#LINK#">'||unistr('\000a')||
'    <h3>#TEXT#</h3>'||unistr('\000a')||
'    <p>#A01#</p>'||unistr('\000a')||
'  </a>'||unistr('\000a')||
'</li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794478166104821 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Featured List with Subtext',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="featuredLinksList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 31794561095104821
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="active">'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li>'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794561095104821 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<div class="uImagesList uHorizontalImagesList clearfix">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 31794683762104821
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li> ';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li> ';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794683762104821 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<ul class="uHorizontalLinksList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_wizard_progress_list
prompt  ......list template 31794774263104821
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="#LIST_STATUS#">'||unistr('\000a')||
'      <span>#TEXT#</span>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li class="#LIST_STATUS#">'||unistr('\000a')||
'      <span>#TEXT#</span>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794774263104821 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Wizard Progress List',
  p_theme_id  => 25,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="uHorizontalProgressList hidden-phone">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/page_level_tabs_list
prompt  ......list template 31794866115104822
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#" class="active">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794866115104822 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Page Level Tabs List',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_list_template_before_rows=>' ',
  p_list_template_after_rows=>' ',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 31794973355104822
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31794973355104822 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<div class="uHorizontalTabs">'||unistr('\000a')||
'<ul>',
  p_list_template_after_rows=>'</ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 31795071749104822
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'    <li class="active">'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t2:=t2||'    <li>'||unistr('\000a')||
'      <a href="#LINK#">'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />'||unistr('\000a')||
'        <span>#TEXT#</span>'||unistr('\000a')||
'      </a>'||unistr('\000a')||
'    </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795071749104822 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 25,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<div class="uImagesList uVerticalImagesList clearfix">'||unistr('\000a')||
'  <ul>',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_list_with_subtext_and_icon
prompt  ......list template 31795185233104823
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'  <li>'||unistr('\000a')||
'    <a href="#LINK#">'||unistr('\000a')||
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>'||unistr('\000a')||
'      <h3>#TEXT#</h3>'||unistr('\000a')||
'      <h4>#A01#</h4>'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'  </li>';

t2:=t2||'  <li>'||unistr('\000a')||
'    <a href="#LINK#">'||unistr('\000a')||
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>'||unistr('\000a')||
'      <h3>#TEXT#</h3>'||unistr('\000a')||
'      <h4>#A01#</h4>'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'  </li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795185233104823 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical List with Subtext and Icon',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="largeLinkList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 31795273675104823
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795273675104823 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 25,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="uNumberedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 31795377415104823
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795377415104823 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 25,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<ul class="uVerticalSidebarList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 31795462777104823
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795462777104823 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="uVerticalList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 31795585330104823
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795585330104823 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 25,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="uVerticalList noBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list_vertical
prompt  ......list template 31795669257104823
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>';

t2:=t2||'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>31795669257104823 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List - Vertical',
  p_theme_id  => 25,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>',
  p_list_template_after_rows=>'</ul></div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless_report
prompt  ......report template 31793271602104816
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793271602104816 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless Report',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31793271602104816 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/comment_bubbles
prompt  ......report template 31793367664104817
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li class="#1#">'||unistr('\000a')||
'<div>'||unistr('\000a')||
'	<em>#2#</em>'||unistr('\000a')||
'	#3##4##5##6##7#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<span>'||unistr('\000a')||
'	#8# (#9#) #10#'||unistr('\000a')||
'</span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793367664104817 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Comment Bubbles',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="commentBubbles">',
  p_row_template_after_rows =>'</ul>'||unistr('\000a')||
'<table class="uPaginationTable">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/fixed_headers
prompt  ......report template 31793461356104817
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793461356104817 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Fixed Headers',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<div class="uFixedHeadersContainer">'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>'||unistr('\000a')||
'',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31793461356104817 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 31793571312104817
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793571312104817 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31793571312104817 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 31793683460104817
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793683460104817 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<ul class="uReportList">',
  p_row_template_after_rows =>'</ul>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'NOT_CONDITIONAL',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'NOT_CONDITIONAL',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31793683460104817 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/search_results_report_select_link_text_link_target_detail1_detail2_last_modified
prompt  ......report template 31793762584104818
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'<span class="title"><a href="#2#">#1#</a></span>'||unistr('\000a')||
'<span class="description"><span class="last_modified">#5#</span>#3#</span>'||unistr('\000a')||
'<span class="type">#4#</span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793762584104818 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="sSearchResultsReport">',
  p_row_template_after_rows =>'</ul>'||unistr('\000a')||
'<table class="uPaginationTable">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
  p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>',
  p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 31793856049104818
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793856049104818 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31793856049104818 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternative
prompt  ......report template 31793982420104818
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3:=c3||'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>';

c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31793982420104818 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard - Alternative',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportBody">'||unistr('\000a')||
'<tr><td>'||unistr('\000a')||
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'<tbody class="uReportPagination">'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'<thead>',
  p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'</thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 25,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 31793982420104818 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr>',
  p_row_template_after_last =>'</tr>'||unistr('\000a')||
'');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/two_column_portlet
prompt  ......report template 31794071862104818
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'  <span class="uValueHeading">'||unistr('\000a')||
'    #1#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'  <span class="uValue">'||unistr('\000a')||
'    #2#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31794071862104818 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Two Column Portlet',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
  p_row_template_after_rows =>'</ul>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'NAMED_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 25,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 31794187333104818
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'  <span class="uValueHeading">'||unistr('\000a')||
'    #COLUMN_HEADER#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'  <span class="uValue">'||unistr('\000a')||
'    #COLUMN_VALUE#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31794187333104818 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>',
  p_row_template_after_rows =>'</ul>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 25,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs_left_aligned
prompt  ......report template 31794260995104819
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>'||unistr('\000a')||
'  <label>'||unistr('\000a')||
'    #COLUMN_HEADER#'||unistr('\000a')||
'  </label>'||unistr('\000a')||
'  <span>'||unistr('\000a')||
'    #COLUMN_VALUE#'||unistr('\000a')||
'  </span>'||unistr('\000a')||
'</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 31794260995104819 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs - Left Aligned',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">',
  p_row_template_after_rows =>'</ul>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_theme_id  => 25,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> 'shrahman 03/12/2012 Making table based ');
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_readers
prompt  ......label template 31795770883104823
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31795770883104823 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Hidden Label (Read by Screen Readers)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="visuallyhidden">',
  p_template_body2=>'</label>',
  p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_horizontal_left_aligned
prompt  ......label template 31795862075104824
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31795862075104824 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional (Horizontal - Left Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_horizontal_right_aligned
prompt  ......label template 31795982572104824
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31795982572104824 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional (Horizontal - Right Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button"  title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_above
prompt  ......label template 31796068349104824
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31796068349104824 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional (Label Above)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_horizontal_left_aligned
prompt  ......label template 31796186281104825
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31796186281104825 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required (Horizontal - Left Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />',
  p_template_body2=>'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_horizontal_right_aligned
prompt  ......label template 31796278824104825
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31796278824104825 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required (Horizontal - Right Aligned)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />',
  p_template_body2=>' <span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_above
prompt  ......label template 31796383729104825
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 31796383729104825 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required (Label Above)',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />',
  p_template_body2=>'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>'||unistr('\000a')||
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>'||unistr('\000a')||
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>'||unistr('\000a')||
'<div class="fieldControls">',
  p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">',
  p_after_item=>'</div>'||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 25,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 31797058103104862
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 31797058103104862 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<ul>'||unistr('\000a')||
'<li class="uStartCap"><span></span></li>',
  p_current_page_option=>'<li class="active"><span>#NAME#</span></li> ',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> ',
  p_menu_link_attributes=>'',
  p_between_levels=>'<li class="uSeparator"><span></span></li>',
  p_after_last=>'<li class="uEndCap"><span></span></li>'||unistr('\000a')||
'</ul>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 31797284230104866
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 31797284230104866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif',
  p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />'||unistr('\000a')||
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_25/css/4_2.css" type="text/css" media="all"/>'||unistr('\000a')||
'#THEME_CSS#',
  p_page_body_attr=>'class="uPopUpLOV"',
  p_before_field_text=>'<div class="uActionBar">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'class="searchField"',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'class="lovButton hotButton"',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'class="lovButton"',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'class="lovButton"',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'class="lovButton"',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="lovLinks">',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 31797175431104864
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 31797175431104864 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th id="#DY#" scope="col" class="uCalDayCol">#IDAY#</th>',
  p_month_title_format=> '<div class="uCal">'||unistr('\000a')||
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>',
  p_month_open_format=> '<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">',
  p_month_close_format=> '</table>'||unistr('\000a')||
'<div class="uCalFooter"></div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'',
  p_day_title_format=> '<span class="uDayTitle">#DD#</span>',
  p_day_open_format=> '<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td class="uDay today" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>',
  p_weekend_title_format=> '<span class="uDayTitle weekendday">#DD#</span>',
  p_weekend_open_format => '<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<span class="uDayTitle">#DD#</span>',
  p_nonday_open_format => '<td class="uDay nonday" headers="#DY#">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<div class="uCal uCalWeekly">'||unistr('\000a')||
'<h1 class="uMonth">#WTITLE#</h1>',
  p_weekly_day_of_week_format => '<th scope="col" class="aCalDayCol" id="#DY#">'||unistr('\000a')||
'  <span class="visible-desktop">#DD# #IDAY#</span>'||unistr('\000a')||
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>'||unistr('\000a')||
'</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">',
  p_weekly_month_close_format => '</table>'||unistr('\000a')||
'<div class="uCalFooter"></div>'||unistr('\000a')||
'</div>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="uDay" headers="#DY#"><div class="uDayData">',
  p_weekly_day_close_format => '</div></td>',
  p_weekly_today_open_format => '<td class="uDay today" headers="#DY#"><div class="uDayData">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td class="uDay weekend" headers="#DY#"><div class="uDayData">',
  p_weekly_weekend_close_format => '</div></td>',
  p_weekly_time_open_format => '<th scope="row" class="uCalHour">',
  p_weekly_time_close_format => '</th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th scope="col" id="#DY#" class="aCalDayCol">#IDAY#</th>',
  p_daily_month_title_format => '<div class="uCal uCalWeekly uCalDaily">'||unistr('\000a')||
'<h1 class="uMonth">#IMONTH# #DD#, #YYYY#</h1>',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="uCal">',
  p_daily_month_close_format => '</table>'||unistr('\000a')||
'<div class="uCalFooter"></div>'||unistr('\000a')||
'</div>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td class="uDay" headers="#DY#"><div class="uDayData">',
  p_daily_day_close_format => '</div></td>',
  p_daily_today_open_format => '<td class="uDay today" headers="#DY#"><div class="uDayData">',
  p_daily_time_open_format => '<th scope="row" class="uCalHour" id="#TIME#">',
  p_daily_time_close_format => '</th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '<ul class="listCalendar">'||unistr('\000a')||
'  <li class="monthHeader">'||unistr('\000a')||
'    <h1>#IMONTH# #YYYY#</h1>'||unistr('\000a')||
'  </li>'||unistr('\000a')||
'  #DAYS#'||unistr('\000a')||
'  <li class="listEndCap"></li>'||unistr('\000a')||
'</ul>',
  p_agenda_past_day_format => '  <li class="dayHeader past">'||unistr('\000a')||
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>'||unistr('\000a')||
'  </li>',
  p_agenda_today_day_format => '  <li class="dayHeader today">'||unistr('\000a')||
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>'||unistr('\000a')||
'  </li>',
  p_agenda_future_day_format => '  <li class="dayHeader future">'||unistr('\000a')||
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>'||unistr('\000a')||
'  </li>',
  p_agenda_past_entry_format => '  <li class="dayData past">#DATA#</li>',
  p_agenda_today_entry_format => '  <li class="dayData today">#DATA#</li>',
  p_agenda_future_entry_format => '  <li class="dayData future">#DATA#</li>',
  p_month_data_format => '#DAYS#',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 25,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/blue_responsive
prompt  ......theme 31797383890104880
begin
wwv_flow_api.create_theme (
  p_id =>31797383890104880 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 25,
  p_theme_name=>'Blue Responsive',
  p_ui_type_name=>'DESKTOP',
  p_is_locked=>false,
  p_default_page_template=>31784871752104799 + wwv_flow_api.g_id_offset,
  p_error_template=>31781167541104795 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>31787373438104803 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>31779659356104786 + wwv_flow_api.g_id_offset,
  p_default_button_template=>31796467180104825 + wwv_flow_api.g_id_offset,
  p_default_region_template=>31792776117104815 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>31792776117104815 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>31791875258104813 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>31792776117104815 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>31792776117104815 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>31791875258104813 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>31791367304104812 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>31792776117104815 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>31792256145104814 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>31793856049104818 + wwv_flow_api.g_id_offset,
  p_default_label_template=>31795982572104824 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>31797058103104862 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>31797175431104864 + wwv_flow_api.g_id_offset,
  p_default_list_template=>31795462777104823 + wwv_flow_api.g_id_offset,
  p_default_option_label=>31795982572104824 + wwv_flow_api.g_id_offset,
  p_default_header_template=>null + wwv_flow_api.g_id_offset,
  p_default_footer_template=>null + wwv_flow_api.g_id_offset,
  p_default_page_transition=>'NONE',
  p_default_popup_transition=>'NONE',
  p_default_required_label=>31796278824104825 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...theme styles
--
 
begin
 
null;
 
end;
/

prompt  ...theme display points
--
 
begin
 
null;
 
end;
/

prompt  ...build options
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 66154
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...text messages
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations
--
prompt  ...Shortcuts
--
prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express_authentication
prompt  ......authentication 31797679814104970
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 31797679814104970 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Application Express Authentication'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
  );
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

prompt  ...plugins
--
--application/shared_components/plugins/dynamic_action/net_gobrechts_markdown
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'NET.GOBRECHTS.MARKDOWN'
 ,p_display_name => 'Markdown'
 ,p_category => 'COMPONENT'
 ,p_supported_ui_types => 'DESKTOP:JQM_SMARTPHONE'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'FUNCTION markdown_render( p_dynamic_action IN apex_plugin.t_dynamic_action'||unistr('\000a')||
'                        , p_plugin         IN apex_plugin.t_plugin )'||unistr('\000a')||
'   RETURN apex_plugin.t_dynamic_action_render_result'||unistr('\000a')||
'IS'||unistr('\000a')||
'   v_result apex_plugin.t_dynamic_action_render_result;'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
'   IF APEX_APPLICATION.g_debug THEN'||unistr('\000a')||
'      apex_plugin_util.debug_dynamic_action( p_plugin         => p_plugin'||unistr('\000a')||
'                            '||
'               , p_dynamic_action => p_dynamic_action );'||unistr('\000a')||
'   END IF;'||unistr('\000a')||
''||unistr('\000a')||
'   apex_css.add_file( p_name      => ''markdown-'''||unistr('\000a')||
'                    , p_directory => p_plugin.file_prefix'||unistr('\000a')||
'                    , p_version   => ''1.0.0'' );'||unistr('\000a')||
''||unistr('\000a')||
'   apex_javascript.add_library( p_name                  => ''markdown-'''||unistr('\000a')||
'                              , p_directory             => p_plugin.file_prefix'||unistr('\000a')||
'                        '||
'      , p_version               => ''1.0.0'''||unistr('\000a')||
'                              , p_check_to_add_minified => TRUE );'||unistr('\000a')||
''||unistr('\000a')||
'   --> Add custom styles, if defined under'||unistr('\000a')||
'   --> "Shared Components > User Interface > Component Settings > Markdown [Plug-in]"'||unistr('\000a')||
'   IF p_plugin.attribute_01 IS NOT NULL THEN'||unistr('\000a')||
'      apex_css.add( p_css => p_plugin.attribute_01, p_key => ''markdown_custom_styles'' );'||unistr('\000a')||
'   END IF;'||unistr('\000a')||
''||unistr('\000a')||
'   v_result.ja'||
'vascript_function :=    ''function(){ markdown.makeHtmlOrCreateEditors(this.triggeringElement, '''||unistr('\000a')||
'                                   || CASE'||unistr('\000a')||
'                                         WHEN APEX_APPLICATION.g_debug THEN ''true'''||unistr('\000a')||
'                                         ELSE ''false'''||unistr('\000a')||
'                                      END'||unistr('\000a')||
'                                   || ''); }'';'||unistr('\000a')||
''||unistr('\000a')||
'   RETURN v_result;'||unistr('\000a')||
'END;'
 ,p_render_function => 'markdown_render'
 ,p_standard_attributes => 'STOP_EXECUTION_ON_ERROR'
 ,p_substitute_attributes => false
 ,p_subscribe_plugin_settings => true
 ,p_version_identifier => '1.0.0'
 ,p_about_url => 'https://gobrechts.net/wiki/projects/markdown-apex-plugin'
 ,p_plugin_comment => 'You can add custom styles on application level under "Shared Components > User Interface > Component Settings > Markdown [Plug-in]".'||unistr('\000a')||
''||unistr('\000a')||
'On the plugin page there is also a shortlink: "Tasks > Component Settings"'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 7295232968605506 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'APPLICATION'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Custom Styles'
 ,p_attribute_type => 'TEXTAREA'
 ,p_is_required => false
 ,p_is_translatable => false
 ,p_help_text => 'The default styles delivered by the plugin:'||unistr('\000a')||
''||unistr('\000a')||
'<pre>'||unistr('\000a')||
'/* markdown content styles */'||unistr('\000a')||
''||unistr('\000a')||
'.markdown h1,'||unistr('\000a')||
'.markdown h2,'||unistr('\000a')||
'.markdown h3,'||unistr('\000a')||
'.markdown h4,'||unistr('\000a')||
'.markdown h5 {'||unistr('\000a')||
'    font-weight: bold;'||unistr('\000a')||
'    line-height: 1.2em;'||unistr('\000a')||
'    padding: 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown h1 {'||unistr('\000a')||
'    font-size: 2em;'||unistr('\000a')||
'    margin: 0 0 0.444em 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown h2 {'||unistr('\000a')||
'    font-size: 1.5em;'||unistr('\000a')||
'    margin: 0 0 0.666em 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown h3 {'||unistr('\000a')||
'    font-size: 1.125em;'||unistr('\000a')||
'    margin: 0 0 0.888em 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown h4 {'||unistr('\000a')||
'    font-size: 1em;'||unistr('\000a')||
'    margin: 0 0 1em 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown h5 {'||unistr('\000a')||
'    font-size: 0.875em;'||unistr('\000a')||
'    margin: 0 0 1.1428em 0;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown p,'||unistr('\000a')||
'.markdown ul,'||unistr('\000a')||
'.markdown ol,'||unistr('\000a')||
'.markdown dl,'||unistr('\000a')||
'.markdown pre,'||unistr('\000a')||
'.markdown table,'||unistr('\000a')||
'.markdown blockquote {'||unistr('\000a')||
'    padding: 0;'||unistr('\000a')||
'    margin: 0 0 1em 0 !important;'||unistr('\000a')||
'    /* some templates overwrite the margin, so we force with important */'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown strong {'||unistr('\000a')||
'    font-weight: bold;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown ul,'||unistr('\000a')||
'.markdown ol,'||unistr('\000a')||
'.markdown dl {'||unistr('\000a')||
'    padding: 0 0 0 0.5em;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown li,'||unistr('\000a')||
'.markdown dd {'||unistr('\000a')||
'    padding: 0;'||unistr('\000a')||
'    margin: 0 0 0 1.5em;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown li ul,'||unistr('\000a')||
'.markdown li ol,'||unistr('\000a')||
'.markdown li dl,'||unistr('\000a')||
'.markdown dl ul,'||unistr('\000a')||
'.markdown dl ol,'||unistr('\000a')||
'.markdown dl dl {'||unistr('\000a')||
'    padding: 0;'||unistr('\000a')||
'    margin-bottom: 0 !important;'||unistr('\000a')||
'    /* some templates overwrite the margin, so we force with important */'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown pre {'||unistr('\000a')||
'    padding: 0.6em;'||unistr('\000a')||
'    background-color: #eee;'||unistr('\000a')||
'    border-radius: 3px;'||unistr('\000a')||
'    overflow: auto;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown pre>code {'||unistr('\000a')||
'    background-color: transparent;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown code {'||unistr('\000a')||
'    background-color: #eee;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown blockquote {'||unistr('\000a')||
'    padding: 0 .5em;'||unistr('\000a')||
'    border: solid #ccc;'||unistr('\000a')||
'    border-width: 0 0 0 .25em;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.markdown hr {'||unistr('\000a')||
'    border-top: solid #ccc;'||unistr('\000a')||
'    border-bottom: solid #fff;'||unistr('\000a')||
'    border-width: 1px 0;'||unistr('\000a')||
'    height: 0;'||unistr('\000a')||
'    text-align: center;'||unistr('\000a')||
'    clear: both;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'/* markdown editor styles */'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-preview  {'||unistr('\000a')||
'    margin: 1em 0;'||unistr('\000a')||
'    display: block;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-button-row'||unistr('\000a')||
'{'||unistr('\000a')||
'    position: relative;'||unistr('\000a')||
'    margin-left: 5px;'||unistr('\000a')||
'    margin-right: 5px;'||unistr('\000a')||
'    margin-bottom: 5px;'||unistr('\000a')||
'    margin-top: 2px;'||unistr('\000a')||
'    padding: 0;'||unistr('\000a')||
'    height: 20px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-spacer'||unistr('\000a')||
'{'||unistr('\000a')||
'    width: 1px;'||unistr('\000a')||
'    height: 20px;'||unistr('\000a')||
'    margin-left: 10px;'||unistr('\000a')||
'    position: absolute;'||unistr('\000a')||
'    background-color: Silver;'||unistr('\000a')||
'    display: inline-block;'||unistr('\000a')||
'    list-style: none;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-button {'||unistr('\000a')||
'    width: 20px;'||unistr('\000a')||
'    height: 20px;'||unistr('\000a')||
'    padding-left: 2px;'||unistr('\000a')||
'    padding-right: 3px;'||unistr('\000a')||
'    position: absolute;'||unistr('\000a')||
'    display: inline-block;'||unistr('\000a')||
'    list-style: none;'||unistr('\000a')||
'    cursor: pointer;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-button > span {'||unistr('\000a')||
'    background: url("#PLUGIN_PREFIX#wmd-buttons.png") top left no-repeat;'||unistr('\000a')||
'    width: 20px;'||unistr('\000a')||
'    height: 20px;'||unistr('\000a')||
'    display: inline-block;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-spacer1'||unistr('\000a')||
'{'||unistr('\000a')||
'    left: 50px;'||unistr('\000a')||
'}'||unistr('\000a')||
'.wmd-spacer2'||unistr('\000a')||
'{'||unistr('\000a')||
'    left: 175px;'||unistr('\000a')||
'}'||unistr('\000a')||
'.wmd-spacer3'||unistr('\000a')||
'{'||unistr('\000a')||
'    left: 300px;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-prompt-background'||unistr('\000a')||
'{'||unistr('\000a')||
'    background-color: Black;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-prompt-dialog'||unistr('\000a')||
'{'||unistr('\000a')||
'    border: 1px solid #999999;'||unistr('\000a')||
'    background-color: #F5F5F5;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-prompt-dialog > div {'||unistr('\000a')||
'    font-size: 0.8em;'||unistr('\000a')||
'    font-family: arial, helvetica, sans-serif;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-prompt-dialog > form > input[type="text"] {'||unistr('\000a')||
'    border: 1px solid #999999;'||unistr('\000a')||
'    color: black;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.wmd-prompt-dialog > form > input[type="button"]{'||unistr('\000a')||
'    border: 1px solid #888888;'||unistr('\000a')||
'    font-family: trebuchet MS, helvetica, sans-serif;'||unistr('\000a')||
'    font-size: 0.8em;'||unistr('\000a')||
'    font-weight: bold;'||unistr('\000a')||
'}'||unistr('\000a')||
'</pre>'
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2275736520737472696374223B766172204D61726B646F776E3B4D61726B646F776E3D226F626A656374223D3D747970656F66206578706F72747326262266756E6374696F6E223D3D747970656F6620726571756972653F6578706F7274733A7B7D2C66';
wwv_flow_api.g_varchar2_table(2) := '756E6374696F6E28297B66756E6374696F6E20652865297B72657475726E20657D66756E6374696F6E20742865297B72657475726E21317D66756E6374696F6E206E28297B7D66756E6374696F6E207228297B7D6E2E70726F746F747970653D7B636861';
wwv_flow_api.g_varchar2_table(3) := '696E3A66756E6374696F6E28742C6E297B76617220723D746869735B745D3B6966282172297468726F77206E6577204572726F722822756E6B6E6F776E20686F6F6B20222B74293B723D3D3D653F746869735B745D3D6E3A746869735B745D3D66756E63';
wwv_flow_api.g_varchar2_table(4) := '74696F6E2865297B76617220743D41727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C30293B72657475726E20745B305D3D722E6170706C79286E756C6C2C74292C6E2E6170706C79286E756C6C2C74297D7D2C';
wwv_flow_api.g_varchar2_table(5) := '7365743A66756E6374696F6E28652C74297B69662821746869735B655D297468726F77206E6577204572726F722822756E6B6E6F776E20686F6F6B20222B65293B746869735B655D3D747D2C6164644E6F6F703A66756E6374696F6E2874297B74686973';
wwv_flow_api.g_varchar2_table(6) := '5B745D3D657D2C61646446616C73653A66756E6374696F6E2865297B746869735B655D3D747D7D2C4D61726B646F776E2E486F6F6B436F6C6C656374696F6E3D6E2C722E70726F746F747970653D7B7365743A66756E6374696F6E28652C74297B746869';
wwv_flow_api.g_varchar2_table(7) := '735B22735F222B655D3D747D2C6765743A66756E6374696F6E2865297B72657475726E20746869735B22735F222B655D7D7D2C4D61726B646F776E2E436F6E7665727465723D66756E6374696F6E2874297B66756E6374696F6E20612865297B72657475';
wwv_flow_api.g_varchar2_table(8) := '726E20653D652E7265706C616365282F5E5B205D7B302C337D5C5B285B5E5C5B5C5D5D2B295C5D3A5B205C745D2A5C6E3F5B205C745D2A3C3F285C532B3F293E3F283F3D5C737C24295B205C745D2A5C6E3F5B205C745D2A28285C6E2A295B22285D282E';
wwv_flow_api.g_varchar2_table(9) := '2B3F295B22295D5B205C745D2A293F285C6E2B292F676D2C66756E6374696F6E28652C742C6E2C722C612C752C6F297B72657475726E20743D742E746F4C6F7765724361736528292C4E2E73657428742C24286E29292C613F722B6F3A287526264F2E73';
wwv_flow_api.g_varchar2_table(10) := '657428742C752E7265706C616365282F222F672C222671756F743B2229292C2222297D297D66756E6374696F6E20752865297B72657475726E20653D652E7265706C616365282F5E283C28707C6469767C685B312D365D7C626C6F636B71756F74657C70';
wwv_flow_api.g_varchar2_table(11) := '72657C7461626C657C646C7C6F6C7C756C7C7363726970747C6E6F7363726970747C666F726D7C6669656C647365747C696672616D657C6D6174687C696E737C64656C295C625B5E5C725D2A3F5C6E3C5C2F5C323E5B205C745D2A283F3D5C6E2B29292F';
wwv_flow_api.g_varchar2_table(12) := '676D2C69292C653D652E7265706C616365282F5E283C28707C6469767C685B312D365D7C626C6F636B71756F74657C7072657C7461626C657C646C7C6F6C7C756C7C7363726970747C6E6F7363726970747C666F726D7C6669656C647365747C69667261';
wwv_flow_api.g_varchar2_table(13) := '6D657C6D617468295C625B5E5C725D2A3F2E2A3C5C2F5C323E5B205C745D2A283F3D5C6E2B295C6E292F676D2C69292C653D652E7265706C616365282F5C6E5B205D7B302C337D28283C286872295C62285B5E3C3E5D292A3F5C2F3F3E295B205C745D2A';
wwv_flow_api.g_varchar2_table(14) := '283F3D5C6E7B322C7D29292F672C69292C653D652E7265706C616365282F5C6E5C6E5B205D7B302C337D283C21282D2D283F3A7C283F3A5B5E3E2D5D7C2D5B5E3E5D29283F3A5B5E2D5D7C2D5B5E2D5D292A292D2D293E5B205C745D2A283F3D5C6E7B32';
wwv_flow_api.g_varchar2_table(15) := '2C7D29292F672C69292C653D652E7265706C616365282F283F3A5C6E5C6E29285B205D7B302C337D283F3A3C285B3F255D295B5E5C725D2A3F5C323E295B205C745D2A283F3D5C6E7B322C7D29292F672C69297D66756E6374696F6E206F2865297B7265';
wwv_flow_api.g_varchar2_table(16) := '7475726E20653D652E7265706C616365282F285E5C6E2B7C5C6E2B24292F672C2222292C225C6E5C6E7E4B222B28712E707573682865292D31292B224B5C6E5C6E227D66756E6374696F6E206928652C74297B72657475726E206F2874297D66756E6374';
wwv_flow_api.g_varchar2_table(17) := '696F6E206328652C742C6E297B653D442E707265426C6F636B47616D757428652C7A292C653D6D2865293B76617220723D223C6872202F3E5C6E223B72657475726E20653D652E7265706C616365282F5E5B205D7B302C327D285B205D3F5C2A5B205D3F';
wwv_flow_api.g_varchar2_table(18) := '297B332C7D5B205C745D2A242F676D2C72292C653D652E7265706C616365282F5E5B205D7B302C327D285B205D3F2D5B205D3F297B332C7D5B205C745D2A242F676D2C72292C653D652E7265706C616365282F5E5B205D7B302C327D285B205D3F5F5B20';
wwv_flow_api.g_varchar2_table(19) := '5D3F297B332C7D5B205C745D2A242F676D2C72292C653D762865292C653D772865292C653D432865292C653D442E706F7374426C6F636B47616D757428652C7A292C653D752865292C653D4528652C742C6E297D66756E6374696F6E206C2865297B7265';
wwv_flow_api.g_varchar2_table(20) := '7475726E20653D442E7072655370616E47616D75742865292C653D6B2865292C653D732865292C653D532865292C653D702865292C653D642865292C653D4C2865292C653D652E7265706C616365282F7E502F672C223A2F2F22292C653D242865292C65';
wwv_flow_api.g_varchar2_table(21) := '3D462865292C653D652E7265706C616365282F20202B5C6E2F672C22203C62723E5C6E22292C653D442E706F73745370616E47616D75742865297D66756E6374696F6E20732865297B76617220743D2F283C5B612D7A5C2F21245D28225B5E225D2A227C';
wwv_flow_api.g_varchar2_table(22) := '275B5E275D2A277C5B5E27223E5D292A3E7C3C21282D2D283F3A7C283F3A5B5E3E2D5D7C2D5B5E3E5D29283F3A5B5E2D5D7C2D5B5E2D5D292A292D2D293E292F67693B72657475726E20653D652E7265706C61636528742C66756E6374696F6E2865297B';
wwv_flow_api.g_varchar2_table(23) := '76617220743D652E7265706C616365282F282E293C5C2F3F636F64653E283F3D2E292F672C2224316022293B72657475726E20743D4128742C2221223D3D652E6368617241742831293F225C5C602A5F2F223A225C5C602A5F22297D297D66756E637469';
wwv_flow_api.g_varchar2_table(24) := '6F6E20642865297B72657475726E2D313D3D3D652E696E6465784F6628225B22293F653A28653D652E7265706C616365282F285C5B28283F3A5C5B5B5E5C5D5D2A5C5D7C5B5E5C5B5C5D5D292A295C5D5B205D3F283F3A5C6E5B205D2A293F5C5B282E2A';
wwv_flow_api.g_varchar2_table(25) := '3F295C5D2928292829282928292F672C66292C653D652E7265706C616365282F285C5B28283F3A5C5B5B5E5C5D5D2A5C5D7C5B5E5C5B5C5D5D292A295C5D5C285B205C745D2A28293C3F28283F3A5C285B5E295D2A5C297C5B5E28295C735D292A3F293E';
wwv_flow_api.g_varchar2_table(26) := '3F5B205C745D2A28285B27225D29282E2A3F295C365B205C745D2A293F5C29292F672C66292C653D652E7265706C616365282F285C5B285B5E5C5B5C5D5D2B295C5D29282928292829282928292F672C6629297D66756E6374696F6E206628652C742C6E';
wwv_flow_api.g_varchar2_table(27) := '2C722C612C752C6F2C69297B766F696420303D3D69262628693D2222293B76617220633D742C6C3D6E2E7265706C616365282F3A5C2F5C2F2F672C227E5022292C733D722E746F4C6F7765724361736528292C643D612C663D693B69662822223D3D6429';
wwv_flow_api.g_varchar2_table(28) := '69662822223D3D73262628733D6C2E746F4C6F7765724361736528292E7265706C616365282F203F5C6E2F672C22202229292C643D2223222B732C766F69642030213D4E2E67657428732929643D4E2E6765742873292C766F69642030213D4F2E676574';
wwv_flow_api.g_varchar2_table(29) := '287329262628663D4F2E676574287329293B656C73657B6966282128632E736561726368282F5C285C732A5C29242F6D293E2D31292972657475726E20633B643D22227D643D422864293B76617220703D273C6120687265663D22272B642B2722273B72';
wwv_flow_api.g_varchar2_table(30) := '657475726E2222213D66262628663D672866292C663D4128662C222A5F22292C702B3D27207469746C653D22272B662B272227292C702B3D223E222B6C2B223C2F613E227D66756E6374696F6E20702865297B72657475726E2D313D3D3D652E696E6465';
wwv_flow_api.g_varchar2_table(31) := '784F662822215B22293F653A28653D652E7265706C616365282F28215C5B282E2A3F295C5D5B205D3F283F3A5C6E5B205D2A293F5C5B282E2A3F295C5D2928292829282928292F672C68292C653D652E7265706C616365282F28215C5B282E2A3F295C5D';
wwv_flow_api.g_varchar2_table(32) := '5C733F5C285B205C745D2A28293C3F285C532B3F293E3F5B205C745D2A28285B27225D29282E2A3F295C365B205C745D2A293F5C29292F672C6829297D66756E6374696F6E20672865297B72657475726E20652E7265706C616365282F3E2F672C222667';
wwv_flow_api.g_varchar2_table(33) := '743B22292E7265706C616365282F3C2F672C22266C743B22292E7265706C616365282F222F672C222671756F743B22292E7265706C616365282F272F672C22262333393B22297D66756E6374696F6E206828652C742C6E2C722C612C752C6F2C69297B76';
wwv_flow_api.g_varchar2_table(34) := '617220633D742C6C3D6E2C733D722E746F4C6F7765724361736528292C643D612C663D693B696628667C7C28663D2222292C22223D3D64297B69662822223D3D73262628733D6C2E746F4C6F7765724361736528292E7265706C616365282F203F5C6E2F';
wwv_flow_api.g_varchar2_table(35) := '672C22202229292C643D2223222B732C766F696420303D3D4E2E6765742873292972657475726E20633B643D4E2E6765742873292C766F69642030213D4F2E676574287329262628663D4F2E676574287329297D6C3D412867286C292C222A5F5B5D2829';
wwv_flow_api.g_varchar2_table(36) := '22292C643D4128642C222A5F22293B76617220703D273C696D67207372633D22272B642B272220616C743D22272B6C2B2722273B72657475726E20663D672866292C663D4128662C222A5F22292C702B3D27207469746C653D22272B662B2722272C702B';
wwv_flow_api.g_varchar2_table(37) := '3D22202F3E227D66756E6374696F6E206D2865297B72657475726E20653D652E7265706C616365282F5E282E2B295B205C745D2A5C6E3D2B5B205C745D2A5C6E2B2F676D2C66756E6374696F6E28652C74297B72657475726E223C68313E222B6C287429';
wwv_flow_api.g_varchar2_table(38) := '2B223C2F68313E5C6E5C6E227D292C653D652E7265706C616365282F5E282E2B295B205C745D2A5C6E2D2B5B205C745D2A5C6E2B2F676D2C66756E6374696F6E28652C74297B72657475726E223C68323E222B6C2874292B223C2F68323E5C6E5C6E227D';
wwv_flow_api.g_varchar2_table(39) := '292C653D652E7265706C616365282F5E285C237B312C367D295B205C745D2A282E2B3F295B205C745D2A5C232A5C6E2B2F676D2C66756E6374696F6E28652C742C6E297B76617220723D742E6C656E6774683B72657475726E223C68222B722B223E222B';
wwv_flow_api.g_varchar2_table(40) := '6C286E292B223C2F68222B722B223E5C6E5C6E227D297D66756E6374696F6E207628652C74297B652B3D227E30223B766172206E3D2F5E28285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B295B5E5C725D2B3F287E307C5C6E7B';
wwv_flow_api.g_varchar2_table(41) := '322C7D283F3D5C5329283F215B205C745D2A283F3A5B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2929292F676D3B72657475726E204B3F653D652E7265706C616365286E2C66756E6374696F6E28652C6E2C72297B76617220612C753D6E2C6F3D722E';
wwv_flow_api.g_varchar2_table(42) := '736561726368282F5B2A2B2D5D2F67293E2D313F22756C223A226F6C223B226F6C223D3D3D6F262628613D7061727365496E7428722C313029293B76617220693D6228752C6F2C74293B693D692E7265706C616365282F5C732B242F2C2222293B766172';
wwv_flow_api.g_varchar2_table(43) := '20633D223C222B6F3B72657475726E2061262631213D3D61262628632B3D272073746172743D22272B612B272227292C693D632B223E222B692B223C2F222B6F2B223E5C6E227D293A286E3D2F285C6E5C6E7C5E5C6E3F2928285B205D7B302C337D285B';
wwv_flow_api.g_varchar2_table(44) := '2A2B2D5D7C5C642B5B2E5D295B205C745D2B295B5E5C725D2B3F287E307C5C6E7B322C7D283F3D5C5329283F215B205C745D2A283F3A5B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2929292F672C653D652E7265706C616365286E2C66756E6374696F';
wwv_flow_api.g_varchar2_table(45) := '6E28652C742C6E2C72297B76617220612C753D742C6F3D6E2C693D722E736561726368282F5B2A2B2D5D2F67293E2D313F22756C223A226F6C223B226F6C223D3D3D69262628613D7061727365496E7428722C313029293B76617220633D62286F2C6929';
wwv_flow_api.g_varchar2_table(46) := '2C6C3D223C222B693B72657475726E2061262631213D3D612626286C2B3D272073746172743D22272B612B272227292C633D752B6C2B223E5C6E222B632B223C2F222B692B223E5C6E227D29292C653D652E7265706C616365282F7E302F2C2222297D66';
wwv_flow_api.g_varchar2_table(47) := '756E6374696F6E206228652C742C6E297B4B2B2B2C653D652E7265706C616365282F5C6E7B322C7D242F2C225C6E22292C652B3D227E30223B76617220723D515B745D2C613D6E6577205265674578702822285E5B205C5C745D2A2928222B722B22295B';
wwv_flow_api.g_varchar2_table(48) := '205C5C745D2B285B5E5C5C725D2B3F285C5C6E2B2929283F3D287E307C5C5C3128222B722B22295B205C5C745D2B2929222C22676D22292C753D21313B72657475726E20653D652E7265706C61636528612C66756E6374696F6E28652C742C6E2C72297B';
wwv_flow_api.g_varchar2_table(49) := '76617220613D722C6F3D2F5C6E5C6E242F2E746573742861292C693D6F7C7C612E736561726368282F5C6E7B322C7D2F293E2D312C6C3D697C7C753B72657475726E20613D63285F2861292C21302C216C292C753D6F2C223C6C693E222B612B223C2F6C';
wwv_flow_api.g_varchar2_table(50) := '693E5C6E227D292C653D652E7265706C616365282F7E302F672C2222292C4B2D2D2C657D66756E6374696F6E20772865297B72657475726E20652B3D227E30222C653D652E7265706C616365282F283F3A5C6E5C6E7C5E5C6E3F2928283F3A283F3A5B20';
wwv_flow_api.g_varchar2_table(51) := '5D7B347D7C5C74292E2A5C6E2B292B29285C6E2A5B205D7B302C337D5B5E205C745C6E5D7C283F3D7E3029292F672C66756E6374696F6E28652C742C6E297B76617220723D742C613D6E3B72657475726E20723D54285F287229292C723D492872292C72';
wwv_flow_api.g_varchar2_table(52) := '3D722E7265706C616365282F5E5C6E2B2F672C2222292C723D722E7265706C616365282F5C6E2B242F672C2222292C723D223C7072653E3C636F64653E222B722B225C6E3C2F636F64653E3C2F7072653E222C225C6E5C6E222B722B225C6E5C6E222B61';
wwv_flow_api.g_varchar2_table(53) := '7D292C653D652E7265706C616365282F7E302F2C2222297D66756E6374696F6E206B2865297B72657475726E20653D652E7265706C616365282F285E7C5B5E5C5C605D2928602B29283F216029285B5E5C725D2A3F5B5E605D295C32283F2160292F676D';
wwv_flow_api.g_varchar2_table(54) := '2C66756E6374696F6E28652C742C6E2C722C61297B76617220753D723B72657475726E20753D752E7265706C616365282F5E285B205C745D2A292F672C2222292C753D752E7265706C616365282F5B205C745D2A242F672C2222292C753D542875292C75';
wwv_flow_api.g_varchar2_table(55) := '3D752E7265706C616365282F3A5C2F5C2F2F672C227E5022292C742B223C636F64653E222B752B223C2F636F64653E227D297D66756E6374696F6E20542865297B72657475726E20653D652E7265706C616365282F262F672C2226616D703B22292C653D';
wwv_flow_api.g_varchar2_table(56) := '652E7265706C616365282F3C2F672C22266C743B22292C653D652E7265706C616365282F3E2F672C222667743B22292C653D4128652C222A5F7B7D5B5D5C5C222C2131297D66756E6374696F6E20782865297B72657475726E2D313D3D3D652E696E6465';
wwv_flow_api.g_varchar2_table(57) := '784F6628222A222926262D313D3D3D652E696E6465784F6628225F22293F653A28653D4D2865292C653D652E7265706C616365282F285E7C5B5C575F5D29283F3A283F215C31297C283F3D5E2929285C2A7C5F295C32283F3D5C5329285B5E5C725D2A3F';
wwv_flow_api.g_varchar2_table(58) := '5C53295C325C32283F215C3229283F3D5B5C575F5D7C24292F672C2224313C7374726F6E673E24333C2F7374726F6E673E22292C653D652E7265706C616365282F285E7C5B5C575F5D29283F3A283F215C31297C283F3D5E2929285C2A7C5F29283F3D5C';
wwv_flow_api.g_varchar2_table(59) := '532928283F3A283F215C32295B5E5C725D292A3F5C53295C32283F215C3229283F3D5B5C575F5D7C24292F672C2224313C656D3E24333C2F656D3E22292C50286529297D66756E6374696F6E20792865297B72657475726E2D313D3D3D652E696E646578';
wwv_flow_api.g_varchar2_table(60) := '4F6628222A222926262D313D3D3D652E696E6465784F6628225F22293F653A28653D4D2865292C653D652E7265706C616365282F283F3D5B5E5C725D5B2A5F5D7C5B2A5F5D29285E7C283F3D5C575F5F7C283F215C2A295B5C575F5D5C2A5C2A7C5C775C';
wwv_flow_api.g_varchar2_table(61) := '2A5C2A5C77295B5E5C725D29285C2A5C2A7C5F5F29283F215C3229283F3D5C532928283F3A7C5B5E5C725D2A3F283F215C32295B5E5C725D29283F3D5C535F7C5C777C5C535C2A5C2A283F3A5B5C575F5D7C2429292E29283F3D5F5F283F3A5C577C2429';
wwv_flow_api.g_varchar2_table(62) := '7C5C2A5C2A283F3A5B5E2A5D7C2429295C322F672C2224313C7374726F6E673E24333C2F7374726F6E673E22292C653D652E7265706C616365282F283F3D5B5E5C725D5B2A5F5D7C5B2A5F5D29285E7C283F3D5C575F7C283F215C2A29283F3A5B5C575F';
wwv_flow_api.g_varchar2_table(63) := '5D5C2A7C5C445C2A283F3D5C77295C4429295B5E5C725D29285C2A7C5F29283F215C325C325C3229283F3D5C532928283F3A283F215C32295B5E5C725D292A3F283F3D5B5E5C735F5D5F7C283F3D5C77295C445C2A5C447C5B5E5C732A5D5C2A283F3A5B';
wwv_flow_api.g_varchar2_table(64) := '5C575F5D7C2429292E29283F3D5F283F3A5C577C24297C5C2A283F3A5B5E2A5D7C2429295C322F672C2224313C656D3E24333C2F656D3E22292C50286529297D66756E6374696F6E20432865297B72657475726E20653D652E7265706C616365282F2828';
wwv_flow_api.g_varchar2_table(65) := '5E5B205C745D2A3E5B205C745D3F2E2B5C6E282E2B5C6E292A5C6E2A292B292F676D2C66756E6374696F6E28652C74297B766172206E3D743B72657475726E206E3D6E2E7265706C616365282F5E5B205C745D2A3E5B205C745D3F2F676D2C227E302229';
wwv_flow_api.g_varchar2_table(66) := '2C6E3D6E2E7265706C616365282F7E302F672C2222292C6E3D6E2E7265706C616365282F5E5B205C745D2B242F676D2C2222292C6E3D63286E292C6E3D6E2E7265706C616365282F285E7C5C6E292F672C222431202022292C6E3D6E2E7265706C616365';
wwv_flow_api.g_varchar2_table(67) := '282F285C732A3C7072653E5B5E5C725D2B3F3C5C2F7072653E292F676D2C66756E6374696F6E28652C74297B766172206E3D743B72657475726E206E3D6E2E7265706C616365282F5E20202F676D2C227E3022292C6E3D6E2E7265706C616365282F7E30';
wwv_flow_api.g_varchar2_table(68) := '2F672C2222297D292C6F28223C626C6F636B71756F74653E5C6E222B6E2B225C6E3C2F626C6F636B71756F74653E22297D297D66756E6374696F6E204528652C742C6E297B653D652E7265706C616365282F5E5C6E2B2F672C2222292C653D652E726570';
wwv_flow_api.g_varchar2_table(69) := '6C616365282F5C6E2B242F672C2222293B666F722876617220723D652E73706C6974282F5C6E7B322C7D2F67292C613D5B5D2C753D2F7E4B285C642B294B2F2C6F3D722E6C656E6774682C693D303B6F3E693B692B2B297B76617220633D725B695D3B75';
wwv_flow_api.g_varchar2_table(70) := '2E746573742863293F612E707573682863293A2F5C532F2E74657374286329262628633D6C2863292C633D632E7265706C616365282F5E285B205C745D2A292F672C6E3F22223A223C703E22292C6E7C7C28632B3D223C2F703E22292C612E7075736828';
wwv_flow_api.g_varchar2_table(71) := '6329297D6966282174297B6F3D612E6C656E6774683B666F722876617220693D303B6F3E693B692B2B29666F722876617220733D21303B733B29733D21312C615B695D3D615B695D2E7265706C616365282F7E4B285C642B294B2F672C66756E6374696F';
wwv_flow_api.g_varchar2_table(72) := '6E28652C74297B72657475726E20733D21302C715B745D7D297D72657475726E20612E6A6F696E28225C6E5C6E22297D66756E6374696F6E20242865297B72657475726E20653D652E7265706C616365282F26283F21233F5B78585D3F283F3A5B302D39';
wwv_flow_api.g_varchar2_table(73) := '612D66412D465D2B7C5C772B293B292F672C2226616D703B22292C653D652E7265706C616365282F3C283F215B612D7A5C2F3F215D7C7E44292F67692C22266C743B22297D66756E6374696F6E20532865297B72657475726E20653D652E7265706C6163';
wwv_flow_api.g_varchar2_table(74) := '65282F5C5C285C5C292F672C57292C653D652E7265706C616365282F5C5C285B602A5F7B7D5C5B5C5D28293E232B2D2E215D292F672C57297D66756E6374696F6E204828652C742C6E2C72297B696628742972657475726E20653B696628222922213D3D';
wwv_flow_api.g_varchar2_table(75) := '722E63686172417428722E6C656E6774682D31292972657475726E223C222B6E2B722B223E223B666F722876617220613D722E6D61746368282F5B28295D2F67292C753D302C6F3D303B6F3C612E6C656E6774683B6F2B2B292228223D3D3D615B6F5D3F';
wwv_flow_api.g_varchar2_table(76) := '303E3D753F753D313A752B2B3A752D2D3B76617220693D22223B696628303E75297B76617220633D6E65772052656745787028225C5C297B312C222B2D752B227D2422293B723D722E7265706C61636528632C66756E6374696F6E2865297B7265747572';
wwv_flow_api.g_varchar2_table(77) := '6E20693D652C22227D297D69662869297B766172206C3D722E63686172417428722E6C656E6774682D31293B562E74657374286C297C7C28693D6C2B692C723D722E73756273747228302C722E6C656E6774682D3129297D72657475726E223C222B6E2B';
wwv_flow_api.g_varchar2_table(78) := '722B223E222B697D66756E6374696F6E204C2865297B653D652E7265706C61636528472C48293B76617220743D66756E6374696F6E28652C74297B766172206E3D422874293B72657475726E273C6120687265663D22272B6E2B27223E272B442E706C61';
wwv_flow_api.g_varchar2_table(79) := '696E4C696E6B546578742874292B223C2F613E227D3B72657475726E20653D652E7265706C616365282F3C282868747470733F7C667470293A5B5E27223E5C735D2B293E2F67692C74297D66756E6374696F6E20522865297B72657475726E20653D652E';
wwv_flow_api.g_varchar2_table(80) := '7265706C616365282F7E45285C642B29452F672C66756E6374696F6E28652C74297B766172206E3D7061727365496E742874293B72657475726E20537472696E672E66726F6D43686172436F6465286E297D297D66756E6374696F6E205F2865297B7265';
wwv_flow_api.g_varchar2_table(81) := '7475726E20653D652E7265706C616365282F5E285C747C5B205D7B312C347D292F676D2C227E3022292C653D652E7265706C616365282F7E302F672C2222297D66756E6374696F6E20492865297B696628212F5C742F2E74657374286529297265747572';
wwv_flow_api.g_varchar2_table(82) := '6E20653B76617220742C6E3D5B2220202020222C22202020222C222020222C2220225D2C723D303B72657475726E20652E7265706C616365282F5B5C6E5C745D2F672C66756E6374696F6E28652C61297B72657475726E225C6E223D3D3D653F28723D61';
wwv_flow_api.g_varchar2_table(83) := '2B312C65293A28743D28612D722925342C723D612B312C6E5B745D297D297D66756E6374696F6E20422865297B72657475726E20653D672865292C653D4128652C222A5F3A28295B5D22297D66756E6374696F6E204128652C742C6E297B76617220723D';
wwv_flow_api.g_varchar2_table(84) := '22285B222B742E7265706C616365282F285B5C5B5C5D5C5C5D292F672C225C5C243122292B225D29223B6E262628723D225C5C5C5C222B72293B76617220613D6E65772052656745787028722C226722293B72657475726E20653D652E7265706C616365';
wwv_flow_api.g_varchar2_table(85) := '28612C57297D66756E6374696F6E205728652C74297B766172206E3D742E63686172436F646541742830293B72657475726E227E45222B6E2B2245227D76617220443D746869732E686F6F6B733D6E6577206E3B442E6164644E6F6F702822706C61696E';
wwv_flow_api.g_varchar2_table(86) := '4C696E6B5465787422292C442E6164644E6F6F702822707265436F6E76657273696F6E22292C442E6164644E6F6F702822706F73744E6F726D616C697A6174696F6E22292C442E6164644E6F6F702822707265426C6F636B47616D757422292C442E6164';
wwv_flow_api.g_varchar2_table(87) := '644E6F6F702822706F7374426C6F636B47616D757422292C442E6164644E6F6F7028227072655370616E47616D757422292C442E6164644E6F6F702822706F73745370616E47616D757422292C442E6164644E6F6F702822706F7374436F6E7665727369';
wwv_flow_api.g_varchar2_table(88) := '6F6E22293B766172204E2C4F2C712C4B3B743D747C7C7B7D3B766172204D3D652C503D653B742E6E6F6E41736369694C65747465727326262166756E6374696F6E28297B76617220653D2F5B515C75303061615C75303062355C75303062615C75303063';
wwv_flow_api.g_varchar2_table(89) := '302D5C75303064365C75303064382D5C75303066365C75303066382D5C75303263315C75303263362D5C75303264315C75303265302D5C75303265345C75303265635C75303265655C75303337302D5C75303337345C75303337362D5C75303337375C75';
wwv_flow_api.g_varchar2_table(90) := '303337612D5C75303337645C75303338365C75303338382D5C75303338615C75303338635C75303338652D5C75303361315C75303361332D5C75303366355C75303366372D5C75303438315C75303438612D5C75303532335C75303533312D5C75303535';
wwv_flow_api.g_varchar2_table(91) := '365C75303535395C75303536312D5C75303538375C75303564302D5C75303565615C75303566302D5C75303566325C75303632312D5C75303634615C75303636302D5C75303636395C75303636652D5C75303636665C75303637312D5C75303664335C75';
wwv_flow_api.g_varchar2_table(92) := '303664355C75303665352D5C75303665365C75303665652D5C75303666635C75303666665C75303731305C75303731322D5C75303732665C75303734642D5C75303761355C75303762315C75303763302D5C75303765615C75303766342D5C7530376635';
wwv_flow_api.g_varchar2_table(93) := '5C75303766615C75303930342D5C75303933395C75303933645C75303935305C75303935382D5C75303936315C75303936362D5C75303936665C75303937312D5C75303937325C75303937622D5C75303937665C75303938352D5C75303938635C753039';
wwv_flow_api.g_varchar2_table(94) := '38662D5C75303939305C75303939332D5C75303961385C75303961612D5C75303962305C75303962325C75303962362D5C75303962395C75303962645C75303963655C75303964632D5C75303964645C75303964662D5C75303965315C75303965362D5C';
wwv_flow_api.g_varchar2_table(95) := '75303966315C75306130352D5C75306130615C75306130662D5C75306131305C75306131332D5C75306132385C75306132612D5C75306133305C75306133322D5C75306133335C75306133352D5C75306133365C75306133382D5C75306133395C753061';
wwv_flow_api.g_varchar2_table(96) := '35392D5C75306135635C75306135655C75306136362D5C75306136665C75306137322D5C75306137345C75306138352D5C75306138645C75306138662D5C75306139315C75306139332D5C75306161385C75306161612D5C75306162305C75306162322D';
wwv_flow_api.g_varchar2_table(97) := '5C75306162335C75306162352D5C75306162395C75306162645C75306164305C75306165302D5C75306165315C75306165362D5C75306165665C75306230352D5C75306230635C75306230662D5C75306231305C75306231332D5C75306232385C753062';
wwv_flow_api.g_varchar2_table(98) := '32612D5C75306233305C75306233322D5C75306233335C75306233352D5C75306233395C75306233645C75306235632D5C75306235645C75306235662D5C75306236315C75306236362D5C75306236665C75306237315C75306238335C75306238352D5C';
wwv_flow_api.g_varchar2_table(99) := '75306238615C75306238652D5C75306239305C75306239322D5C75306239355C75306239392D5C75306239615C75306239635C75306239652D5C75306239665C75306261332D5C75306261345C75306261382D5C75306261615C75306261652D5C753062';
wwv_flow_api.g_varchar2_table(100) := '62395C75306264305C75306265362D5C75306265665C75306330352D5C75306330635C75306330652D5C75306331305C75306331322D5C75306332385C75306332612D5C75306333335C75306333352D5C75306333395C75306333645C75306335382D5C';
wwv_flow_api.g_varchar2_table(101) := '75306335395C75306336302D5C75306336315C75306336362D5C75306336665C75306338352D5C75306338635C75306338652D5C75306339305C75306339322D5C75306361385C75306361612D5C75306362335C75306362352D5C75306362395C753063';
wwv_flow_api.g_varchar2_table(102) := '62645C75306364655C75306365302D5C75306365315C75306365362D5C75306365665C75306430352D5C75306430635C75306430652D5C75306431305C75306431322D5C75306432385C75306432612D5C75306433395C75306433645C75306436302D5C';
wwv_flow_api.g_varchar2_table(103) := '75306436315C75306436362D5C75306436665C75306437612D5C75306437665C75306438352D5C75306439365C75306439612D5C75306462315C75306462332D5C75306462625C75306462645C75306463302D5C75306463365C75306530312D5C753065';
wwv_flow_api.g_varchar2_table(104) := '33305C75306533322D5C75306533335C75306534302D5C75306534365C75306535302D5C75306535395C75306538312D5C75306538325C75306538345C75306538372D5C75306538385C75306538615C75306538645C75306539342D5C75306539375C75';
wwv_flow_api.g_varchar2_table(105) := '306539392D5C75306539665C75306561312D5C75306561335C75306561355C75306561375C75306561612D5C75306561625C75306561642D5C75306562305C75306562322D5C75306562335C75306562645C75306563302D5C75306563345C7530656336';
wwv_flow_api.g_varchar2_table(106) := '5C75306564302D5C75306564395C75306564632D5C75306564645C75306630305C75306632302D5C75306632395C75306634302D5C75306634375C75306634392D5C75306636635C75306638382D5C75306638625C75313030302D5C75313032615C7531';
wwv_flow_api.g_varchar2_table(107) := '3033662D5C75313034395C75313035302D5C75313035355C75313035612D5C75313035645C75313036315C75313036352D5C75313036365C75313036652D5C75313037305C75313037352D5C75313038315C75313038655C75313039302D5C7531303939';
wwv_flow_api.g_varchar2_table(108) := '5C75313061302D5C75313063355C75313064302D5C75313066615C75313066635C75313130302D5C75313135395C75313135662D5C75313161325C75313161382D5C75313166395C75313230302D5C75313234385C75313234612D5C75313234645C7531';
wwv_flow_api.g_varchar2_table(109) := '3235302D5C75313235365C75313235385C75313235612D5C75313235645C75313236302D5C75313238385C75313238612D5C75313238645C75313239302D5C75313262305C75313262322D5C75313262355C75313262382D5C75313262655C7531326330';
wwv_flow_api.g_varchar2_table(110) := '5C75313263322D5C75313263355C75313263382D5C75313264365C75313264382D5C75313331305C75313331322D5C75313331355C75313331382D5C75313335615C75313338302D5C75313338665C75313361302D5C75313366345C75313430312D5C75';
wwv_flow_api.g_varchar2_table(111) := '313636635C75313636662D5C75313637365C75313638312D5C75313639615C75313661302D5C75313665615C75313730302D5C75313730635C75313730652D5C75313731315C75313732302D5C75313733315C75313734302D5C75313735315C75313736';
wwv_flow_api.g_varchar2_table(112) := '302D5C75313736635C75313736652D5C75313737305C75313738302D5C75313762335C75313764375C75313764635C75313765302D5C75313765395C75313831302D5C75313831395C75313832302D5C75313837375C75313838302D5C75313861385C75';
wwv_flow_api.g_varchar2_table(113) := '313861615C75313930302D5C75313931635C75313934362D5C75313936645C75313937302D5C75313937345C75313938302D5C75313961395C75313963312D5C75313963375C75313964302D5C75313964395C75316130302D5C75316131365C75316230';
wwv_flow_api.g_varchar2_table(114) := '352D5C75316233335C75316234352D5C75316234625C75316235302D5C75316235395C75316238332D5C75316261305C75316261652D5C75316262395C75316330302D5C75316332335C75316334302D5C75316334395C75316334642D5C75316337645C';
wwv_flow_api.g_varchar2_table(115) := '75316430302D5C75316462665C75316530302D5C75316631355C75316631382D5C75316631645C75316632302D5C75316634355C75316634382D5C75316634645C75316635302D5C75316635375C75316635395C75316635625C75316635645C75316635';
wwv_flow_api.g_varchar2_table(116) := '662D5C75316637645C75316638302D5C75316662345C75316662362D5C75316662635C75316662655C75316663322D5C75316663345C75316663362D5C75316663635C75316664302D5C75316664335C75316664362D5C75316664625C75316665302D5C';
wwv_flow_api.g_varchar2_table(117) := '75316665635C75316666322D5C75316666345C75316666362D5C75316666635C75323033662D5C75323034305C75323035345C75323037315C75323037665C75323039302D5C75323039345C75323130325C75323130375C75323130612D5C7532313133';
wwv_flow_api.g_varchar2_table(118) := '5C75323131355C75323131392D5C75323131645C75323132345C75323132365C75323132385C75323132612D5C75323132645C75323132662D5C75323133395C75323133632D5C75323133665C75323134352D5C75323134395C75323134655C75323138';
wwv_flow_api.g_varchar2_table(119) := '332D5C75323138345C75326330302D5C75326332655C75326333302D5C75326335655C75326336302D5C75326336665C75326337312D5C75326337645C75326338302D5C75326365345C75326430302D5C75326432355C75326433302D5C75326436355C';
wwv_flow_api.g_varchar2_table(120) := '75326436665C75326438302D5C75326439365C75326461302D5C75326461365C75326461382D5C75326461655C75326462302D5C75326462365C75326462382D5C75326462655C75326463302D5C75326463365C75326463382D5C75326463655C753264';
wwv_flow_api.g_varchar2_table(121) := '64302D5C75326464365C75326464382D5C75326464655C75326532665C75333030352D5C75333030365C75333033312D5C75333033355C75333033622D5C75333033635C75333034312D5C75333039365C75333039642D5C75333039665C75333061312D';
wwv_flow_api.g_varchar2_table(122) := '5C75333066615C75333066632D5C75333066665C75333130352D5C75333132645C75333133312D5C75333138655C75333161302D5C75333162375C75333166302D5C75333166665C75333430302D5C75346462355C75346530302D5C75396663335C7561';
wwv_flow_api.g_varchar2_table(123) := '3030302D5C75613438635C75613530302D5C75613630635C75613631302D5C75613632625C75613634302D5C75613635665C75613636322D5C75613636655C75613637662D5C75613639375C75613731372D5C75613731665C75613732322D5C75613738';
wwv_flow_api.g_varchar2_table(124) := '385C75613738622D5C75613738635C75613766622D5C75613830315C75613830332D5C75613830355C75613830372D5C75613830615C75613830632D5C75613832325C75613834302D5C75613837335C75613838322D5C75613862335C75613864302D5C';
wwv_flow_api.g_varchar2_table(125) := '75613864395C75613930302D5C75613932355C75613933302D5C75613934365C75616130302D5C75616132385C75616134302D5C75616134325C75616134342D5C75616134625C75616135302D5C75616135395C75616330302D5C75643761335C756639';
wwv_flow_api.g_varchar2_table(126) := '30302D5C75666132645C75666133302D5C75666136615C75666137302D5C75666164395C75666230302D5C75666230365C75666231332D5C75666231375C75666231645C75666231662D5C75666232385C75666232612D5C75666233365C75666233382D';
wwv_flow_api.g_varchar2_table(127) := '5C75666233635C75666233655C75666234302D5C75666234315C75666234332D5C75666234345C75666234362D5C75666262315C75666264332D5C75666433645C75666435302D5C75666438665C75666439322D5C75666463375C75666466302D5C7566';
wwv_flow_api.g_varchar2_table(128) := '6466625C75666533332D5C75666533345C75666534642D5C75666534665C75666537302D5C75666537345C75666537362D5C75666566635C75666631302D5C75666631395C75666632312D5C75666633615C75666633665C75666634312D5C7566663561';
wwv_flow_api.g_varchar2_table(129) := '5C75666636362D5C75666662655C75666663322D5C75666663375C75666663612D5C75666663665C75666664322D5C75666664375C75666664612D5C75666664635D2F672C743D2251222E63686172436F646541742830292C6E3D2241222E6368617243';
wwv_flow_api.g_varchar2_table(130) := '6F646541742830292C723D225A222E63686172436F646541742830292C613D2261222E63686172436F646541742830292D722D313B4D3D66756E6374696F6E2875297B72657475726E20752E7265706C61636528652C66756E6374696F6E2865297B666F';
wwv_flow_api.g_varchar2_table(131) := '722876617220752C6F3D652E63686172436F646541742830292C693D22223B6F3E303B29753D6F2535312B6E2C753E3D742626752B2B2C753E72262628752B3D61292C693D537472696E672E66726F6D43686172436F64652875292B692C6F3D6F2F3531';
wwv_flow_api.g_varchar2_table(132) := '7C303B72657475726E2251222B692B2251227D297D2C503D66756E6374696F6E2865297B72657475726E20652E7265706C616365282F51285B412D50522D5A612D7A5D7B312C337D29512F672C66756E6374696F6E28652C75297B666F7228766172206F';
wwv_flow_api.g_varchar2_table(133) := '2C693D302C633D303B633C752E6C656E6774683B632B2B296F3D752E63686172436F646541742863292C6F3E722626286F2D3D61292C6F3E7426266F2D2D2C6F2D3D6E2C693D35312A692B6F3B72657475726E20537472696E672E66726F6D4368617243';
wwv_flow_api.g_varchar2_table(134) := '6F64652869297D297D7D28293B76617220463D742E617374657269736B496E747261576F7264456D7068617369733F793A783B746869732E6D616B6548746D6C3D66756E6374696F6E2865297B6966284E297468726F77206E6577204572726F72282252';
wwv_flow_api.g_varchar2_table(135) := '65637572736976652063616C6C20746F20636F6E7665727465722E6D616B6548746D6C22293B72657475726E204E3D6E657720722C4F3D6E657720722C713D5B5D2C4B3D302C653D442E707265436F6E76657273696F6E2865292C653D652E7265706C61';
wwv_flow_api.g_varchar2_table(136) := '6365282F7E2F672C227E5422292C653D652E7265706C616365282F5C242F672C227E4422292C653D652E7265706C616365282F5C725C6E2F672C225C6E22292C653D652E7265706C616365282F5C722F672C225C6E22292C653D225C6E5C6E222B652B22';
wwv_flow_api.g_varchar2_table(137) := '5C6E5C6E222C653D492865292C653D652E7265706C616365282F5E5B205C745D2B242F676D2C2222292C653D442E706F73744E6F726D616C697A6174696F6E2865292C653D752865292C653D612865292C653D632865292C653D522865292C653D652E72';
wwv_flow_api.g_varchar2_table(138) := '65706C616365282F7E442F672C22242422292C653D652E7265706C616365282F7E542F672C227E22292C653D442E706F7374436F6E76657273696F6E2865292C713D4F3D4E3D6E756C6C2C657D3B766172207A3D66756E6374696F6E2865297B72657475';
wwv_flow_api.g_varchar2_table(139) := '726E20632865297D2C513D7B6F6C3A225C5C642B5B2E5D222C756C3A225B2A2B2D5D227D2C553D225B2D412D5A302D392B2640232F253F3D7E5F7C5B5C5C5D2829213A2C2E3B5D222C6A3D225B2D412D5A302D392B2640232F253D7E5F7C5B5C5C5D295D';
wwv_flow_api.g_varchar2_table(140) := '222C473D6E6577205265674578702827283D227C3C293F5C5C622868747470733F7C66747029283A2F2F272B552B222A222B6A2B2229283F3D247C5C5C5729222C22676922292C563D6E657720526567457870286A2C226922297D7D28292C66756E6374';
wwv_flow_api.g_varchar2_table(141) := '696F6E28297B66756E6374696F6E206528297B7D66756E6374696F6E207428652C74297B746869732E627574746F6E4261723D642E676574456C656D656E74427949642822776D642D627574746F6E2D626172222B65292C746869732E70726576696577';
wwv_flow_api.g_varchar2_table(142) := '3D642E676574456C656D656E74427949642822776D642D70726576696577222B65292C746869732E696E7075743D642E676574456C656D656E74427949642874297D66756E6374696F6E206E28652C74297B766172206E2C612C752C6F3D746869732C69';
wwv_flow_api.g_varchar2_table(143) := '3D5B5D2C6C3D302C733D226E6F6E65222C643D66756E6374696F6E28652C74297B73213D65262628733D652C747C7C702829292C682E697349452626226D6F76696E67223D3D733F753D6E756C6C3A613D73657454696D656F757428662C31297D2C663D';
wwv_flow_api.g_varchar2_table(144) := '66756E6374696F6E2865297B753D6E6577207228742C65292C613D766F696420307D3B746869732E736574436F6D6D616E644D6F64653D66756E6374696F6E28297B733D22636F6D6D616E64222C7028292C613D73657454696D656F757428662C30297D';
wwv_flow_api.g_varchar2_table(145) := '2C746869732E63616E556E646F3D66756E6374696F6E28297B72657475726E206C3E317D2C746869732E63616E5265646F3D66756E6374696F6E28297B72657475726E20695B6C2B315D3F21303A21317D2C746869732E756E646F3D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(146) := '28297B6F2E63616E556E646F28292626286E3F286E2E726573746F726528292C6E3D6E756C6C293A28695B6C5D3D6E657720722874292C695B2D2D6C5D2E726573746F726528292C65262665282929292C733D226E6F6E65222C742E696E7075742E666F';
wwv_flow_api.g_varchar2_table(147) := '63757328292C6628297D2C746869732E7265646F3D66756E6374696F6E28297B6F2E63616E5265646F2829262628695B2B2B6C5D2E726573746F726528292C652626652829292C733D226E6F6E65222C742E696E7075742E666F63757328292C6628297D';
wwv_flow_api.g_varchar2_table(148) := '3B76617220703D66756E6374696F6E28297B76617220613D757C7C6E657720722874293B72657475726E20613F226D6F76696E67223D3D733F766F6964286E7C7C286E3D6129293A286E262628695B6C2D315D2E74657874213D6E2E7465787426262869';
wwv_flow_api.g_varchar2_table(149) := '5B6C2B2B5D3D6E292C6E3D6E756C6C292C695B6C2B2B5D3D612C695B6C2B315D3D6E756C6C2C766F69642865262665282929293A21317D2C673D66756E6374696F6E2865297B76617220743D21313B69662828652E6374726C4B65797C7C652E6D657461';
wwv_flow_api.g_varchar2_table(150) := '4B657929262621652E616C744B6579297B766172206E3D652E63686172436F64657C7C652E6B6579436F64652C723D537472696E672E66726F6D43686172436F6465286E293B73776974636828722E746F4C6F776572436173652829297B636173652279';
wwv_flow_api.g_varchar2_table(151) := '223A6F2E7265646F28292C743D21303B627265616B3B63617365227A223A652E73686966744B65793F6F2E7265646F28293A6F2E756E646F28292C743D21307D7D72657475726E20743F28652E70726576656E7444656661756C742626652E7072657665';
wwv_flow_api.g_varchar2_table(152) := '6E7444656661756C7428292C766F69642877696E646F772E6576656E7426262877696E646F772E6576656E742E72657475726E56616C75653D21312929293A766F696420307D2C6D3D66756E6374696F6E2865297B69662821652E6374726C4B65792626';
wwv_flow_api.g_varchar2_table(153) := '21652E6D6574614B6579297B76617220743D652E6B6579436F64653B743E3D3333262634303E3D747C7C743E3D3633323332262636333233353E3D743F6428226D6F76696E6722293A383D3D747C7C34363D3D747C7C3132373D3D743F64282264656C65';
wwv_flow_api.g_varchar2_table(154) := '74696E6722293A31333D3D743F6428226E65776C696E657322293A32373D3D743F64282265736361706522293A2831363E747C7C743E32302926263931213D742626642822747970696E6722297D7D2C763D66756E6374696F6E28297B632E6164644576';
wwv_flow_api.g_varchar2_table(155) := '656E7428742E696E7075742C226B65797072657373222C66756E6374696F6E2865297B21652E6374726C4B6579262621652E6D6574614B65797C7C652E616C744B65797C7C3839213D652E6B6579436F646526263930213D652E6B6579436F64657C7C65';
wwv_flow_api.g_varchar2_table(156) := '2E70726576656E7444656661756C7428297D293B76617220653D66756E6374696F6E28297B28682E697349457C7C752626752E74657874213D742E696E7075742E76616C7565292626766F696420303D3D61262628733D227061737465222C7028292C66';
wwv_flow_api.g_varchar2_table(157) := '2829297D3B632E6164644576656E7428742E696E7075742C226B6579646F776E222C67292C632E6164644576656E7428742E696E7075742C226B6579646F776E222C6D292C632E6164644576656E7428742E696E7075742C226D6F757365646F776E222C';
wwv_flow_api.g_varchar2_table(158) := '66756E6374696F6E28297B6428226D6F76696E6722297D292C742E696E7075742E6F6E70617374653D652C742E696E7075742E6F6E64726F703D657D2C623D66756E6374696F6E28297B7628292C66282130292C7028297D3B6228297D66756E6374696F';
wwv_flow_api.g_varchar2_table(159) := '6E207228742C6E297B76617220723D746869732C613D742E696E7075743B746869732E696E69743D66756E6374696F6E28297B632E697356697369626C652861292626286E7C7C21642E616374697665456C656D656E747C7C642E616374697665456C65';
wwv_flow_api.g_varchar2_table(160) := '6D656E743D3D3D6129262628746869732E736574496E7075744172656153656C656374696F6E5374617274456E6428292C746869732E7363726F6C6C546F703D612E7363726F6C6C546F702C2821746869732E746578742626612E73656C656374696F6E';
wwv_flow_api.g_varchar2_table(161) := '53746172747C7C303D3D3D612E73656C656374696F6E537461727429262628746869732E746578743D612E76616C756529297D2C746869732E736574496E7075744172656153656C656374696F6E3D66756E6374696F6E28297B696628632E6973566973';
wwv_flow_api.g_varchar2_table(162) := '69626C6528612929696628766F696420303D3D3D612E73656C656374696F6E53746172747C7C682E69734F70657261297B696628642E73656C656374696F6E297B696628642E616374697665456C656D656E742626642E616374697665456C656D656E74';
wwv_flow_api.g_varchar2_table(163) := '213D3D612972657475726E3B612E666F63757328293B76617220653D612E6372656174655465787452616E676528293B652E6D6F766553746172742822636861726163746572222C2D612E76616C75652E6C656E677468292C652E6D6F7665456E642822';
wwv_flow_api.g_varchar2_table(164) := '636861726163746572222C2D612E76616C75652E6C656E677468292C652E6D6F7665456E642822636861726163746572222C722E656E64292C652E6D6F766553746172742822636861726163746572222C722E7374617274292C652E73656C6563742829';
wwv_flow_api.g_varchar2_table(165) := '7D7D656C736520612E666F63757328292C612E73656C656374696F6E53746172743D722E73746172742C612E73656C656374696F6E456E643D722E656E642C612E7363726F6C6C546F703D722E7363726F6C6C546F707D2C746869732E736574496E7075';
wwv_flow_api.g_varchar2_table(166) := '744172656153656C656374696F6E5374617274456E643D66756E6374696F6E28297B696628742E696543616368656452616E67657C7C21612E73656C656374696F6E5374617274262630213D3D612E73656C656374696F6E5374617274297B696628642E';
wwv_flow_api.g_varchar2_table(167) := '73656C656374696F6E297B722E746578743D632E666978456F6C436861727328612E76616C7565293B76617220653D742E696543616368656452616E67657C7C642E73656C656374696F6E2E63726561746552616E676528292C6E3D632E666978456F6C';
wwv_flow_api.g_varchar2_table(168) := '436861727328652E74657874292C753D2207222C6F3D752B6E2B753B652E746578743D6F3B76617220693D632E666978456F6C436861727328612E76616C7565293B652E6D6F766553746172742822636861726163746572222C2D6F2E6C656E67746829';
wwv_flow_api.g_varchar2_table(169) := '2C652E746578743D6E2C722E73746172743D692E696E6465784F662875292C722E656E643D692E6C617374496E6465784F662875292D752E6C656E6774683B766172206C3D722E746578742E6C656E6774682D632E666978456F6C436861727328612E76';
wwv_flow_api.g_varchar2_table(170) := '616C7565292E6C656E6774683B6966286C297B666F7228652E6D6F766553746172742822636861726163746572222C2D6E2E6C656E677468293B6C2D2D3B296E2B3D225C6E222C722E656E642B3D313B652E746578743D6E7D742E696543616368656452';
wwv_flow_api.g_varchar2_table(171) := '616E6765262628722E7363726F6C6C546F703D742E69654361636865645363726F6C6C546F70292C742E696543616368656452616E67653D6E756C6C2C746869732E736574496E7075744172656153656C656374696F6E28297D7D656C736520722E7374';
wwv_flow_api.g_varchar2_table(172) := '6172743D612E73656C656374696F6E53746172742C722E656E643D612E73656C656374696F6E456E647D2C746869732E726573746F72653D66756E6374696F6E28297B766F69642030213D722E746578742626722E74657874213D612E76616C75652626';
wwv_flow_api.g_varchar2_table(173) := '28612E76616C75653D722E74657874292C746869732E736574496E7075744172656153656C656374696F6E28292C612E7363726F6C6C546F703D722E7363726F6C6C546F707D2C746869732E6765744368756E6B733D66756E6374696F6E28297B766172';
wwv_flow_api.g_varchar2_table(174) := '20743D6E657720653B72657475726E20742E6265666F72653D632E666978456F6C436861727328722E746578742E737562737472696E6728302C722E737461727429292C742E73746172745461673D22222C742E73656C656374696F6E3D632E66697845';
wwv_flow_api.g_varchar2_table(175) := '6F6C436861727328722E746578742E737562737472696E6728722E73746172742C722E656E6429292C742E656E645461673D22222C742E61667465723D632E666978456F6C436861727328722E746578742E737562737472696E6728722E656E6429292C';
wwv_flow_api.g_varchar2_table(176) := '742E7363726F6C6C546F703D722E7363726F6C6C546F702C747D2C746869732E7365744368756E6B733D66756E6374696F6E2865297B652E6265666F72653D652E6265666F72652B652E73746172745461672C652E61667465723D652E656E645461672B';
wwv_flow_api.g_varchar2_table(177) := '652E61667465722C746869732E73746172743D652E6265666F72652E6C656E6774682C746869732E656E643D652E6265666F72652E6C656E6774682B652E73656C656374696F6E2E6C656E6774682C746869732E746578743D652E6265666F72652B652E';
wwv_flow_api.g_varchar2_table(178) := '73656C656374696F6E2B652E61667465722C746869732E7363726F6C6C546F703D652E7363726F6C6C546F707D2C746869732E696E697428297D66756E6374696F6E206128652C742C6E297B76617220722C612C752C6F3D3365332C693D2264656C6179';
wwv_flow_api.g_varchar2_table(179) := '6564222C733D66756E6374696F6E28652C74297B632E6164644576656E7428652C22696E707574222C74292C652E6F6E70617374653D742C652E6F6E64726F703D742C632E6164644576656E7428652C226B65797072657373222C74292C632E61646445';
wwv_flow_api.g_varchar2_table(180) := '76656E7428652C226B6579646F776E222C74297D2C663D66756E6374696F6E28297B76617220653D303B72657475726E2077696E646F772E696E6E65724865696768743F653D77696E646F772E70616765594F66667365743A642E646F63756D656E7445';
wwv_flow_api.g_varchar2_table(181) := '6C656D656E742626642E646F63756D656E74456C656D656E742E7363726F6C6C546F703F653D642E646F63756D656E74456C656D656E742E7363726F6C6C546F703A642E626F6479262628653D642E626F64792E7363726F6C6C546F70292C657D2C703D';
wwv_flow_api.g_varchar2_table(182) := '66756E6374696F6E28297B696628742E70726576696577297B766172206E3D742E696E7075742E76616C75653B696628216E7C7C6E213D75297B753D6E3B76617220723D286E65772044617465292E67657454696D6528293B6E3D652E6D616B6548746D';
wwv_flow_api.g_varchar2_table(183) := '6C286E293B766172206F3D286E65772044617465292E67657454696D6528293B613D6F2D722C79286E297D7D7D2C673D66756E6374696F6E28297B69662872262628636C65617254696D656F75742872292C723D766F69642030292C226D616E75616C22';
wwv_flow_api.g_varchar2_table(184) := '213D3D69297B76617220653D303B2264656C61796564223D3D3D69262628653D61292C653E6F262628653D6F292C723D73657454696D656F757428702C65297D7D2C6D3D66756E6374696F6E2865297B72657475726E20652E7363726F6C6C4865696768';
wwv_flow_api.g_varchar2_table(185) := '743C3D652E636C69656E744865696768743F313A652E7363726F6C6C546F702F28652E7363726F6C6C4865696768742D652E636C69656E74486569676874297D2C763D66756E6374696F6E28297B742E70726576696577262628742E707265766965772E';
wwv_flow_api.g_varchar2_table(186) := '7363726F6C6C546F703D28742E707265766965772E7363726F6C6C4865696768742D742E707265766965772E636C69656E74486569676874292A6D28742E7072657669657729297D3B746869732E726566726573683D66756E6374696F6E2865297B653F';
wwv_flow_api.g_varchar2_table(187) := '28753D22222C702829293A6728297D2C746869732E70726F63657373696E6754696D653D66756E6374696F6E28297B72657475726E20617D3B76617220622C773D21302C6B3D66756E6374696F6E2865297B766172206E3D742E707265766965772C723D';
wwv_flow_api.g_varchar2_table(188) := '6E2E706172656E744E6F64652C613D6E2E6E6578745369626C696E673B722E72656D6F76654368696C64286E292C6E2E696E6E657248544D4C3D652C613F722E696E736572744265666F7265286E2C61293A722E617070656E644368696C64286E297D2C';
wwv_flow_api.g_varchar2_table(189) := '543D66756E6374696F6E2865297B742E707265766965772E696E6E657248544D4C3D657D2C783D66756E6374696F6E2865297B696628622972657475726E20622865293B7472797B542865292C623D547D63617463682874297B623D6B2C622865297D7D';
wwv_flow_api.g_varchar2_table(190) := '2C793D66756E6374696F6E2865297B76617220723D6C2E676574546F7028742E696E707574292D6628293B696628742E70726576696577262628782865292C6E2829292C7628292C772972657475726E20766F696428773D2131293B76617220613D6C2E';
wwv_flow_api.g_varchar2_table(191) := '676574546F7028742E696E707574292D6628293B682E697349453F73657454696D656F75742866756E6374696F6E28297B77696E646F772E7363726F6C6C427928302C612D72297D2C30293A77696E646F772E7363726F6C6C427928302C612D72297D2C';
wwv_flow_api.g_varchar2_table(192) := '433D66756E6374696F6E28297B7328742E696E7075742C67292C7028292C742E70726576696577262628742E707265766965772E7363726F6C6C546F703D30297D3B4328297D66756E6374696F6E207528652C742C6E2C612C752C6F2C69297B66756E63';
wwv_flow_api.g_varchar2_table(193) := '74696F6E206C2865297B696628762E666F63757328292C652E746578744F70297B6E26266E2E736574436F6D6D616E644D6F646528293B76617220753D6E657720722874293B69662821752972657475726E3B766172206F3D752E6765744368756E6B73';
wwv_flow_api.g_varchar2_table(194) := '28292C693D66756E6374696F6E28297B762E666F63757328292C6F2626752E7365744368756E6B73286F292C752E726573746F726528292C612E7265667265736828297D2C633D652E746578744F70286F2C69293B637C7C6928297D652E657865637574';
wwv_flow_api.g_varchar2_table(195) := '652626652E65786563757465286E297D66756E6374696F6E207328652C6E297B76617220723D22307078222C613D222D32307078222C753D222D34307078222C6F3D652E676574456C656D656E747342795461674E616D6528227370616E22295B305D3B';
wwv_flow_api.g_varchar2_table(196) := '6E3F286F2E7374796C652E6261636B67726F756E64506F736974696F6E3D652E5853686966742B2220222B722C652E6F6E6D6F7573656F7665723D66756E6374696F6E28297B6F2E7374796C652E6261636B67726F756E64506F736974696F6E3D746869';
wwv_flow_api.g_varchar2_table(197) := '732E5853686966742B2220222B757D2C652E6F6E6D6F7573656F75743D66756E6374696F6E28297B6F2E7374796C652E6261636B67726F756E64506F736974696F6E3D746869732E5853686966742B2220222B727D2C682E69734945262628652E6F6E6D';
wwv_flow_api.g_varchar2_table(198) := '6F757365646F776E3D66756E6374696F6E28297B642E616374697665456C656D656E742626642E616374697665456C656D656E74213D3D742E696E7075747C7C28742E696543616368656452616E67653D646F63756D656E742E73656C656374696F6E2E';
wwv_flow_api.g_varchar2_table(199) := '63726561746552616E676528292C742E69654361636865645363726F6C6C546F703D742E696E7075742E7363726F6C6C546F70297D292C652E697348656C707C7C28652E6F6E636C69636B3D66756E6374696F6E28297B72657475726E20746869732E6F';
wwv_flow_api.g_varchar2_table(200) := '6E6D6F7573656F75742626746869732E6F6E6D6F7573656F757428292C6C2874686973292C21317D29293A286F2E7374796C652E6261636B67726F756E64506F736974696F6E3D652E5853686966742B2220222B612C652E6F6E6D6F7573656F7665723D';
wwv_flow_api.g_varchar2_table(201) := '652E6F6E6D6F7573656F75743D652E6F6E636C69636B3D66756E6374696F6E28297B7D297D66756E6374696F6E20662865297B72657475726E22737472696E67223D3D747970656F662065262628653D755B655D292C66756E6374696F6E28297B652E61';
wwv_flow_api.g_varchar2_table(202) := '70706C7928752C617267756D656E7473297D7D66756E6374696F6E206728297B766172206E3D742E627574746F6E4261722C723D646F63756D656E742E637265617465456C656D656E742822756C22293B722E69643D22776D642D627574746F6E2D726F';
wwv_flow_api.g_varchar2_table(203) := '77222B652C722E636C6173734E616D653D22776D642D627574746F6E2D726F77222C723D6E2E617070656E644368696C642872293B76617220613D302C753D66756E6374696F6E28742C6E2C752C6F297B76617220693D646F63756D656E742E63726561';
wwv_flow_api.g_varchar2_table(204) := '7465456C656D656E7428226C6922293B692E636C6173734E616D653D22776D642D627574746F6E222C692E7374796C652E6C6566743D612B227078222C612B3D32353B76617220633D646F63756D656E742E637265617465456C656D656E742822737061';
wwv_flow_api.g_varchar2_table(205) := '6E22293B72657475726E20692E69643D742B652C692E617070656E644368696C642863292C692E7469746C653D6E2C692E5853686966743D752C6F262628692E746578744F703D6F292C7328692C2130292C722E617070656E644368696C642869292C69';
wwv_flow_api.g_varchar2_table(206) := '7D2C633D66756E6374696F6E2874297B766172206E3D646F63756D656E742E637265617465456C656D656E7428226C6922293B6E2E636C6173734E616D653D22776D642D73706163657220776D642D737061636572222B742C6E2E69643D22776D642D73';
wwv_flow_api.g_varchar2_table(207) := '7061636572222B742B652C722E617070656E644368696C64286E292C612B3D32357D3B622E626F6C643D752822776D642D626F6C642D627574746F6E222C692822626F6C6422292C22307078222C662822646F426F6C642229292C622E6974616C69633D';
wwv_flow_api.g_varchar2_table(208) := '752822776D642D6974616C69632D627574746F6E222C6928226974616C696322292C222D32307078222C662822646F4974616C69632229292C632831292C622E6C696E6B3D752822776D642D6C696E6B2D627574746F6E222C6928226C696E6B22292C22';
wwv_flow_api.g_varchar2_table(209) := '2D34307078222C662866756E6374696F6E28652C74297B72657475726E20746869732E646F4C696E6B4F72496D61676528652C742C2131297D29292C622E71756F74653D752822776D642D71756F74652D627574746F6E222C69282271756F746522292C';
wwv_flow_api.g_varchar2_table(210) := '222D36307078222C662822646F426C6F636B71756F74652229292C622E636F64653D752822776D642D636F64652D627574746F6E222C692822636F646522292C222D38307078222C662822646F436F64652229292C622E696D6167653D752822776D642D';
wwv_flow_api.g_varchar2_table(211) := '696D6167652D627574746F6E222C692822696D61676522292C222D3130307078222C662866756E6374696F6E28652C74297B72657475726E20746869732E646F4C696E6B4F72496D61676528652C742C2130297D29292C632832292C622E6F6C6973743D';
wwv_flow_api.g_varchar2_table(212) := '752822776D642D6F6C6973742D627574746F6E222C6928226F6C69737422292C222D3132307078222C662866756E6374696F6E28652C74297B746869732E646F4C69737428652C742C2130297D29292C622E756C6973743D752822776D642D756C697374';
wwv_flow_api.g_varchar2_table(213) := '2D627574746F6E222C692822756C69737422292C222D3134307078222C662866756E6374696F6E28652C74297B746869732E646F4C69737428652C742C2131297D29292C622E68656164696E673D752822776D642D68656164696E672D627574746F6E22';
wwv_flow_api.g_varchar2_table(214) := '2C69282268656164696E6722292C222D3136307078222C662822646F48656164696E672229292C622E68723D752822776D642D68722D627574746F6E222C692822687222292C222D3138307078222C662822646F486F72697A6F6E74616C52756C652229';
wwv_flow_api.g_varchar2_table(215) := '292C632833292C622E756E646F3D752822776D642D756E646F2D627574746F6E222C692822756E646F22292C222D3230307078222C6E756C6C292C622E756E646F2E657865637574653D66756E6374696F6E2865297B652626652E756E646F28297D3B76';
wwv_flow_api.g_varchar2_table(216) := '6172206C3D69282F77696E2F2E7465737428702E706C6174666F726D2E746F4C6F776572436173652829293F227265646F223A227265646F6D616322293B696628622E7265646F3D752822776D642D7265646F2D627574746F6E222C6C2C222D32323070';
wwv_flow_api.g_varchar2_table(217) := '78222C6E756C6C292C622E7265646F2E657865637574653D66756E6374696F6E2865297B652626652E7265646F28297D2C6F297B76617220643D646F63756D656E742E637265617465456C656D656E7428226C6922292C673D646F63756D656E742E6372';
wwv_flow_api.g_varchar2_table(218) := '65617465456C656D656E7428227370616E22293B642E617070656E644368696C642867292C642E636C6173734E616D653D22776D642D627574746F6E20776D642D68656C702D627574746F6E222C642E69643D22776D642D68656C702D627574746F6E22';
wwv_flow_api.g_varchar2_table(219) := '2B652C642E5853686966743D222D3234307078222C642E697348656C703D21302C642E7374796C652E72696768743D22307078222C642E7469746C653D69282268656C7022292C642E6F6E636C69636B3D6F2E68616E646C65722C7328642C2130292C72';
wwv_flow_api.g_varchar2_table(220) := '2E617070656E644368696C642864292C622E68656C703D647D6D28297D66756E6374696F6E206D28297B6E2626287328622E756E646F2C6E2E63616E556E646F2829292C7328622E7265646F2C6E2E63616E5265646F282929297D76617220763D742E69';
wwv_flow_api.g_varchar2_table(221) := '6E7075742C623D7B7D3B6728293B76617220773D226B6579646F776E223B682E69734F70657261262628773D226B6579707265737322292C632E6164644576656E7428762C772C66756E6374696F6E2865297B69662828652E6374726C4B65797C7C652E';
wwv_flow_api.g_varchar2_table(222) := '6D6574614B657929262621652E616C744B6579262621652E73686966744B6579297B76617220743D652E63686172436F64657C7C652E6B6579436F64652C6E3D537472696E672E66726F6D43686172436F64652874292E746F4C6F776572436173652829';
wwv_flow_api.g_varchar2_table(223) := '3B737769746368286E297B636173652262223A6C28622E626F6C64293B627265616B3B636173652269223A6C28622E6974616C6963293B627265616B3B63617365226C223A6C28622E6C696E6B293B627265616B3B636173652271223A6C28622E71756F';
wwv_flow_api.g_varchar2_table(224) := '7465293B627265616B3B63617365226B223A6C28622E636F6465293B627265616B3B636173652267223A6C28622E696D616765293B627265616B3B63617365226F223A6C28622E6F6C697374293B627265616B3B636173652275223A6C28622E756C6973';
wwv_flow_api.g_varchar2_table(225) := '74293B627265616B3B636173652268223A6C28622E68656164696E67293B627265616B3B636173652272223A6C28622E6872293B627265616B3B636173652279223A6C28622E7265646F293B627265616B3B63617365227A223A6C28652E73686966744B';
wwv_flow_api.g_varchar2_table(226) := '65793F622E7265646F3A622E756E646F293B627265616B3B64656661756C743A72657475726E7D652E70726576656E7444656661756C742626652E70726576656E7444656661756C7428292C77696E646F772E6576656E7426262877696E646F772E6576';
wwv_flow_api.g_varchar2_table(227) := '656E742E72657475726E56616C75653D2131297D7D292C632E6164644576656E7428762C226B65797570222C66756E6374696F6E2865297B696628652E73686966744B6579262621652E6374726C4B6579262621652E6D6574614B6579297B7661722074';
wwv_flow_api.g_varchar2_table(228) := '3D652E63686172436F64657C7C652E6B6579436F64653B69662831333D3D3D74297B766172206E3D7B7D3B6E2E746578744F703D662822646F4175746F696E64656E7422292C6C286E297D7D7D292C682E697349452626632E6164644576656E7428762C';
wwv_flow_api.g_varchar2_table(229) := '226B6579646F776E222C66756E6374696F6E2865297B76617220743D652E6B6579436F64653B72657475726E2032373D3D3D743F21313A766F696420307D292C746869732E736574556E646F5265646F427574746F6E5374617465733D6D7D66756E6374';
wwv_flow_api.g_varchar2_table(230) := '696F6E206F28652C742C6E297B746869732E686F6F6B733D652C746869732E676574537472696E673D742C746869732E636F6E7665727465723D6E7D66756E6374696F6E20692865297B72657475726E20652E7265706C616365282F5E5C732A282E2A3F';
wwv_flow_api.g_varchar2_table(231) := '29283F3A5C732B22282E2B2922293F5C732A242F2C66756E6374696F6E28652C742C6E297B76617220723D21313B72657475726E20743D742E7265706C616365282F25283F3A5B5C64612D66412D465D7B327D297C5C3F7C5C2B7C5B5E5C775C642D2E5C';
wwv_flow_api.g_varchar2_table(232) := '2F5B5C5D5D2F672C66756E6374696F6E2865297B696628333D3D3D652E6C656E67746826262225223D3D652E6368617241742830292972657475726E20652E746F55707065724361736528293B7377697463682865297B63617365223F223A7265747572';
wwv_flow_api.g_varchar2_table(233) := '6E20723D21302C223F223B63617365222B223A696628722972657475726E22253230227D72657475726E20656E636F64655552492865297D292C6E2626286E3D6E2E7472696D3F6E2E7472696D28293A6E2E7265706C616365282F5E5C732A2F2C222229';
wwv_flow_api.g_varchar2_table(234) := '2E7265706C616365282F5C732A242F2C2222292C6E3D6E2E7265706C616365282F222F672C2271756F743B22292E7265706C616365282F5C282F672C22262334303B22292E7265706C616365282F5C292F672C22262334313B22292E7265706C61636528';
wwv_flow_api.g_varchar2_table(235) := '2F3C2F672C22266C743B22292E7265706C616365282F3E2F672C222667743B2229292C6E3F742B272022272B6E2B2722273A747D297D76617220633D7B7D2C6C3D7B7D2C733D7B7D2C643D77696E646F772E646F63756D656E742C663D77696E646F772E';
wwv_flow_api.g_varchar2_table(236) := '5265674578702C703D77696E646F772E6E6176696761746F722C673D7B6C696E654C656E6774683A37327D2C683D7B697349453A2F6D7369652F2E7465737428702E757365724167656E742E746F4C6F776572436173652829292C697349455F356F7236';
wwv_flow_api.g_varchar2_table(237) := '3A2F6D73696520362F2E7465737428702E757365724167656E742E746F4C6F776572436173652829297C7C2F6D73696520352F2E7465737428702E757365724167656E742E746F4C6F776572436173652829292C69734F706572613A2F6F706572612F2E';
wwv_flow_api.g_varchar2_table(238) := '7465737428702E757365724167656E742E746F4C6F776572436173652829297D2C6D3D7B626F6C643A225374726F6E67203C7374726F6E673E204374726C2B42222C626F6C646578616D706C653A227374726F6E672074657874222C6974616C69633A22';
wwv_flow_api.g_varchar2_table(239) := '456D706861736973203C656D3E204374726C2B49222C6974616C69636578616D706C653A22656D70686173697A65642074657874222C6C696E6B3A2248797065726C696E6B203C613E204374726C2B4C222C6C696E6B6465736372697074696F6E3A2265';
wwv_flow_api.g_varchar2_table(240) := '6E746572206C696E6B206465736372697074696F6E2068657265222C6C696E6B6469616C6F673A273C703E3C623E496E736572742048797065726C696E6B3C2F623E3C2F703E3C703E687474703A2F2F6578616D706C652E636F6D2F20226F7074696F6E';
wwv_flow_api.g_varchar2_table(241) := '616C207469746C65223C2F703E272C71756F74653A22426C6F636B71756F7465203C626C6F636B71756F74653E204374726C2B51222C71756F74656578616D706C653A22426C6F636B71756F7465222C636F64653A22436F64652053616D706C65203C70';
wwv_flow_api.g_varchar2_table(242) := '72653E3C636F64653E204374726C2B4B222C636F64656578616D706C653A22656E74657220636F64652068657265222C696D6167653A22496D616765203C696D673E204374726C2B47222C696D6167656465736372697074696F6E3A22656E7465722069';
wwv_flow_api.g_varchar2_table(243) := '6D616765206465736372697074696F6E2068657265222C696D6167656469616C6F673A273C703E3C623E496E7365727420496D6167653C2F623E3C2F703E3C703E687474703A2F2F6578616D706C652E636F6D2F696D616765732F6469616772616D2E6A';
wwv_flow_api.g_varchar2_table(244) := '706720226F7074696F6E616C207469746C65223C2F703E272C6F6C6973743A224E756D6265726564204C697374203C6F6C3E204374726C2B4F222C756C6973743A2242756C6C65746564204C697374203C756C3E204374726C2B55222C6C6974656D3A22';
wwv_flow_api.g_varchar2_table(245) := '4C697374206974656D222C68656164696E673A2248656164696E67203C68313E2F3C68323E204374726C2B48222C68656164696E676578616D706C653A2248656164696E67222C68723A22486F72697A6F6E74616C2052756C65203C68723E204374726C';
wwv_flow_api.g_varchar2_table(246) := '2B52222C756E646F3A22556E646F202D204374726C2B5A222C7265646F3A225265646F202D204374726C2B59222C7265646F6D61633A225265646F202D204374726C2B53686966742B5A222C68656C703A224D61726B646F776E2045646974696E672048';
wwv_flow_api.g_varchar2_table(247) := '656C70227D2C763D22687474703A2F2F222C623D22687474703A2F2F223B4D61726B646F776E2E456469746F723D66756E6374696F6E28652C722C692C63297B633D637C7C7B7D2C2266756E6374696F6E223D3D747970656F6620632E68616E646C6572';
wwv_flow_api.g_varchar2_table(248) := '262628633D7B68656C70427574746F6E3A637D292C632E737472696E67733D632E737472696E67737C7C7B7D2C632E68656C70427574746F6E262628632E737472696E67732E68656C703D632E737472696E67732E68656C707C7C632E68656C70427574';
wwv_flow_api.g_varchar2_table(249) := '746F6E2E7469746C65293B766172206C3D66756E6374696F6E2865297B72657475726E20632E737472696E67735B655D7C7C6D5B655D7D3B723D727C7C22223B76617220733D746869732E686F6F6B733D6E6577204D61726B646F776E2E486F6F6B436F';
wwv_flow_api.g_varchar2_table(250) := '6C6C656374696F6E3B732E6164644E6F6F7028226F6E507265766965775265667265736822292C732E6164644E6F6F702822706F7374426C6F636B71756F74654372656174696F6E22292C732E61646446616C73652822696E73657274496D6167654469';
wwv_flow_api.g_varchar2_table(251) := '616C6F6722292C746869732E676574436F6E7665727465723D66756E6374696F6E28297B72657475726E20657D3B76617220662C703D746869733B746869732E72756E3D66756E6374696F6E28297B6966282166297B663D6E6577207428722C69293B76';
wwv_flow_api.g_varchar2_table(252) := '617220672C682C6D3D6E6577206F28732C6C2C65292C763D6E6577206128652C662C66756E6374696F6E28297B732E6F6E507265766965775265667265736828297D293B2F5C3F6E6F756E646F2F2E7465737428642E6C6F636174696F6E2E6872656629';
wwv_flow_api.g_varchar2_table(253) := '7C7C28673D6E6577206E2866756E6374696F6E28297B762E7265667265736828292C682626682E736574556E646F5265646F427574746F6E53746174657328297D2C66292C746869732E746578744F7065726174696F6E3D66756E6374696F6E2865297B';
wwv_flow_api.g_varchar2_table(254) := '672E736574436F6D6D616E644D6F646528292C6528292C702E726566726573685072657669657728297D292C683D6E6577207528722C662C672C762C6D2C632E68656C70427574746F6E2C6C292C682E736574556E646F5265646F427574746F6E537461';
wwv_flow_api.g_varchar2_table(255) := '74657328293B76617220623D702E72656672657368507265766965773D66756E6374696F6E28297B762E72656672657368282130297D3B6228297D7D7D2C652E70726F746F747970652E66696E64546167733D66756E6374696F6E28652C74297B766172';
wwv_flow_api.g_varchar2_table(256) := '206E2C723D746869733B652626286E3D632E657874656E6452656745787028652C22222C222422292C746869732E6265666F72653D746869732E6265666F72652E7265706C616365286E2C66756E6374696F6E2865297B72657475726E20722E73746172';
wwv_flow_api.g_varchar2_table(257) := '745461673D722E73746172745461672B652C22227D292C6E3D632E657874656E6452656745787028652C225E222C2222292C746869732E73656C656374696F6E3D746869732E73656C656374696F6E2E7265706C616365286E2C66756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(258) := '297B72657475726E20722E73746172745461673D722E73746172745461672B652C22227D29292C742626286E3D632E657874656E6452656745787028742C22222C222422292C746869732E73656C656374696F6E3D746869732E73656C656374696F6E2E';
wwv_flow_api.g_varchar2_table(259) := '7265706C616365286E2C66756E6374696F6E2865297B72657475726E20722E656E645461673D652B722E656E645461672C22227D292C6E3D632E657874656E6452656745787028742C225E222C2222292C746869732E61667465723D746869732E616674';
wwv_flow_api.g_varchar2_table(260) := '65722E7265706C616365286E2C66756E6374696F6E2865297B72657475726E20722E656E645461673D652B722E656E645461672C22227D29297D2C652E70726F746F747970652E7472696D576869746573706163653D66756E6374696F6E2865297B7661';
wwv_flow_api.g_varchar2_table(261) := '7220742C6E2C723D746869733B653F743D6E3D22223A28743D66756E6374696F6E2865297B72657475726E20722E6265666F72652B3D652C22227D2C6E3D66756E6374696F6E2865297B72657475726E20722E61667465723D652B722E61667465722C22';
wwv_flow_api.g_varchar2_table(262) := '227D292C746869732E73656C656374696F6E3D746869732E73656C656374696F6E2E7265706C616365282F5E285C732A292F2C74292E7265706C616365282F285C732A29242F2C6E297D2C652E70726F746F747970652E736B69704C696E65733D66756E';
wwv_flow_api.g_varchar2_table(263) := '6374696F6E28652C742C6E297B766F696420303D3D3D65262628653D31292C766F696420303D3D3D74262628743D31292C652B2B2C742B2B3B76617220722C613B6966286E6176696761746F722E757365724167656E742E6D61746368282F4368726F6D';
wwv_flow_api.g_varchar2_table(264) := '652F2926262258222E6D61746368282F28292E2F292C746869732E73656C656374696F6E3D746869732E73656C656374696F6E2E7265706C616365282F285E5C6E2A292F2C2222292C746869732E73746172745461673D746869732E7374617274546167';
wwv_flow_api.g_varchar2_table(265) := '2B662E24312C746869732E73656C656374696F6E3D746869732E73656C656374696F6E2E7265706C616365282F285C6E2A24292F2C2222292C746869732E656E645461673D746869732E656E645461672B662E24312C746869732E73746172745461673D';
wwv_flow_api.g_varchar2_table(266) := '746869732E73746172745461672E7265706C616365282F285E5C6E2A292F2C2222292C746869732E6265666F72653D746869732E6265666F72652B662E24312C746869732E656E645461673D746869732E656E645461672E7265706C616365282F285C6E';
wwv_flow_api.g_varchar2_table(267) := '2A24292F2C2222292C746869732E61667465723D746869732E61667465722B662E24312C746869732E6265666F7265297B666F7228723D613D22223B652D2D3B29722B3D225C5C6E3F222C612B3D225C6E223B6E262628723D225C5C6E2A22292C746869';
wwv_flow_api.g_varchar2_table(268) := '732E6265666F72653D746869732E6265666F72652E7265706C616365286E6577206628722B2224222C2222292C61297D696628746869732E6166746572297B666F7228723D613D22223B742D2D3B29722B3D225C5C6E3F222C612B3D225C6E223B6E2626';
wwv_flow_api.g_varchar2_table(269) := '28723D225C5C6E2A22292C746869732E61667465723D746869732E61667465722E7265706C616365286E6577206628722C2222292C61297D7D2C632E697356697369626C653D66756E6374696F6E2865297B72657475726E2077696E646F772E67657443';
wwv_flow_api.g_varchar2_table(270) := '6F6D70757465645374796C653F226E6F6E6522213D3D77696E646F772E676574436F6D70757465645374796C6528652C6E756C6C292E67657450726F706572747956616C75652822646973706C617922293A652E63757272656E745374796C653F226E6F';
wwv_flow_api.g_varchar2_table(271) := '6E6522213D3D652E63757272656E745374796C652E646973706C61793A766F696420307D2C632E6164644576656E743D66756E6374696F6E28652C742C6E297B652E6174746163684576656E743F652E6174746163684576656E7428226F6E222B742C6E';
wwv_flow_api.g_varchar2_table(272) := '293A652E6164644576656E744C697374656E657228742C6E2C2131297D2C632E72656D6F76654576656E743D66756E6374696F6E28652C742C6E297B652E6465746163684576656E743F652E6465746163684576656E7428226F6E222B742C6E293A652E';
wwv_flow_api.g_varchar2_table(273) := '72656D6F76654576656E744C697374656E657228742C6E2C2131297D2C632E666978456F6C43686172733D66756E6374696F6E2865297B72657475726E20653D652E7265706C616365282F5C725C6E2F672C225C6E22292C653D652E7265706C61636528';
wwv_flow_api.g_varchar2_table(274) := '2F5C722F672C225C6E22297D2C632E657874656E645265674578703D66756E6374696F6E28652C742C6E297B286E756C6C3D3D3D747C7C766F696420303D3D3D7429262628743D2222292C286E756C6C3D3D3D6E7C7C766F696420303D3D3D6E29262628';
wwv_flow_api.g_varchar2_table(275) := '6E3D2222293B76617220722C613D652E746F537472696E6728293B72657475726E20613D612E7265706C616365282F5C2F285B67696D5D2A29242F2C66756E6374696F6E28652C74297B72657475726E20723D742C22227D292C613D612E7265706C6163';
wwv_flow_api.g_varchar2_table(276) := '65282F285E5C2F7C5C2F24292F672C2222292C613D742B612B6E2C6E6577206628612C72297D2C6C2E676574546F703D66756E6374696F6E28652C74297B766172206E3D652E6F6666736574546F703B696628217429666F72283B653D652E6F66667365';
wwv_flow_api.g_varchar2_table(277) := '74506172656E743B296E2B3D652E6F6666736574546F703B72657475726E206E7D2C6C2E6765744865696768743D66756E6374696F6E2865297B72657475726E20652E6F66667365744865696768747C7C652E7363726F6C6C4865696768747D2C6C2E67';
wwv_flow_api.g_varchar2_table(278) := '657457696474683D66756E6374696F6E2865297B72657475726E20652E6F666673657457696474687C7C652E7363726F6C6C57696474687D2C6C2E6765745061676553697A653D66756E6374696F6E28297B76617220652C742C6E2C723B73656C662E69';
wwv_flow_api.g_varchar2_table(279) := '6E6E6572486569676874262673656C662E7363726F6C6C4D6178593F28653D642E626F64792E7363726F6C6C57696474682C743D73656C662E696E6E65724865696768742B73656C662E7363726F6C6C4D617859293A642E626F64792E7363726F6C6C48';
wwv_flow_api.g_varchar2_table(280) := '65696768743E642E626F64792E6F66667365744865696768743F28653D642E626F64792E7363726F6C6C57696474682C743D642E626F64792E7363726F6C6C486569676874293A28653D642E626F64792E6F666673657457696474682C743D642E626F64';
wwv_flow_api.g_varchar2_table(281) := '792E6F6666736574486569676874292C73656C662E696E6E65724865696768743F286E3D73656C662E696E6E657257696474682C723D73656C662E696E6E6572486569676874293A642E646F63756D656E74456C656D656E742626642E646F63756D656E';
wwv_flow_api.g_varchar2_table(282) := '74456C656D656E742E636C69656E744865696768743F286E3D642E646F63756D656E74456C656D656E742E636C69656E7457696474682C723D642E646F63756D656E74456C656D656E742E636C69656E74486569676874293A642E626F64792626286E3D';
wwv_flow_api.g_varchar2_table(283) := '642E626F64792E636C69656E7457696474682C723D642E626F64792E636C69656E74486569676874293B76617220613D4D6174682E6D617828652C6E292C753D4D6174682E6D617828742C72293B72657475726E5B612C752C6E2C725D7D2C732E637265';
wwv_flow_api.g_varchar2_table(284) := '6174654261636B67726F756E643D66756E6374696F6E28297B76617220653D642E637265617465456C656D656E74282264697622292C743D652E7374796C653B652E636C6173734E616D653D22776D642D70726F6D70742D6261636B67726F756E64222C';
wwv_flow_api.g_varchar2_table(285) := '742E706F736974696F6E3D226162736F6C757465222C742E746F703D2230222C742E7A496E6465783D2231303030222C682E697349453F742E66696C7465723D22616C706861286F7061636974793D353029223A742E6F7061636974793D22302E35223B';
wwv_flow_api.g_varchar2_table(286) := '766172206E3D6C2E6765745061676553697A6528293B72657475726E20742E6865696768743D6E5B315D2B227078222C682E697349453F28742E6C6566743D642E646F63756D656E74456C656D656E742E7363726F6C6C4C6566742C742E77696474683D';
wwv_flow_api.g_varchar2_table(287) := '642E646F63756D656E74456C656D656E742E636C69656E745769647468293A28742E6C6566743D2230222C742E77696474683D223130302522292C642E626F64792E617070656E644368696C642865292C657D2C732E70726F6D70743D66756E6374696F';
wwv_flow_api.g_varchar2_table(288) := '6E28652C742C6E297B76617220722C613B766F696420303D3D3D74262628743D2222293B76617220753D66756E6374696F6E2865297B76617220743D652E63686172436F64657C7C652E6B6579436F64653B72657475726E2032373D3D3D743F28652E73';
wwv_flow_api.g_varchar2_table(289) := '746F7050726F7061676174696F6E2626652E73746F7050726F7061676174696F6E28292C6F282130292C2131293A766F696420307D2C6F3D66756E6374696F6E2865297B632E72656D6F76654576656E7428642E626F64792C226B65797570222C75293B';
wwv_flow_api.g_varchar2_table(290) := '76617220743D612E76616C75653B72657475726E20653F743D6E756C6C3A28743D742E7265706C616365282F5E687474703A5C2F5C2F2868747470733F7C667470293A5C2F5C2F2F2C2224313A2F2F22292C2F5E283F3A68747470733F7C667470293A5C';
wwv_flow_api.g_varchar2_table(291) := '2F5C2F2F2E746573742874297C7C28743D22687474703A2F2F222B7429292C722E706172656E744E6F64652E72656D6F76654368696C642872292C6E2874292C21317D2C693D66756E6374696F6E28297B723D642E637265617465456C656D656E742822';
wwv_flow_api.g_varchar2_table(292) := '64697622292C722E636C6173734E616D653D22776D642D70726F6D70742D6469616C6F67222C722E7374796C652E70616464696E673D22313070783B222C722E7374796C652E706F736974696F6E3D226669786564222C722E7374796C652E7769647468';
wwv_flow_api.g_varchar2_table(293) := '3D223430307078222C722E7374796C652E7A496E6465783D2231303031223B766172206E3D642E637265617465456C656D656E74282264697622293B6E2E696E6E657248544D4C3D652C6E2E7374796C652E70616464696E673D22357078222C722E6170';
wwv_flow_api.g_varchar2_table(294) := '70656E644368696C64286E293B76617220693D642E637265617465456C656D656E742822666F726D22292C733D692E7374796C653B692E6F6E7375626D69743D66756E6374696F6E28297B72657475726E206F282131297D2C732E70616464696E673D22';
wwv_flow_api.g_varchar2_table(295) := '30222C732E6D617267696E3D2230222C732E637373466C6F61743D226C656674222C732E77696474683D2231303025222C732E74657874416C69676E3D2263656E746572222C732E706F736974696F6E3D2272656C6174697665222C722E617070656E64';
wwv_flow_api.g_varchar2_table(296) := '4368696C642869292C613D642E637265617465456C656D656E742822696E70757422292C612E747970653D2274657874222C612E76616C75653D742C733D612E7374796C652C732E646973706C61793D22626C6F636B222C732E77696474683D22383025';
wwv_flow_api.g_varchar2_table(297) := '222C732E6D617267696E4C6566743D732E6D617267696E52696768743D226175746F222C692E617070656E644368696C642861293B76617220663D642E637265617465456C656D656E742822696E70757422293B662E747970653D22627574746F6E222C';
wwv_flow_api.g_varchar2_table(298) := '662E6F6E636C69636B3D66756E6374696F6E28297B72657475726E206F282131297D2C662E76616C75653D224F4B222C733D662E7374796C652C732E6D617267696E3D2231307078222C732E646973706C61793D22696E6C696E65222C732E7769647468';
wwv_flow_api.g_varchar2_table(299) := '3D2237656D223B76617220703D642E637265617465456C656D656E742822696E70757422293B702E747970653D22627574746F6E222C702E6F6E636C69636B3D66756E6374696F6E28297B72657475726E206F282130297D2C702E76616C75653D224361';
wwv_flow_api.g_varchar2_table(300) := '6E63656C222C733D702E7374796C652C732E6D617267696E3D2231307078222C732E646973706C61793D22696E6C696E65222C732E77696474683D2237656D222C692E617070656E644368696C642866292C692E617070656E644368696C642870292C63';
wwv_flow_api.g_varchar2_table(301) := '2E6164644576656E7428642E626F64792C226B65797570222C75292C722E7374796C652E746F703D22353025222C722E7374796C652E6C6566743D22353025222C722E7374796C652E646973706C61793D22626C6F636B222C682E697349455F356F7236';
wwv_flow_api.g_varchar2_table(302) := '262628722E7374796C652E706F736974696F6E3D226162736F6C757465222C722E7374796C652E746F703D642E646F63756D656E74456C656D656E742E7363726F6C6C546F702B3230302B227078222C722E7374796C652E6C6566743D2235302522292C';
wwv_flow_api.g_varchar2_table(303) := '642E626F64792E617070656E644368696C642872292C722E7374796C652E6D617267696E546F703D2D286C2E6765744865696768742872292F32292B227078222C722E7374796C652E6D617267696E4C6566743D2D286C2E67657457696474682872292F';
wwv_flow_api.g_varchar2_table(304) := '32292B227078227D3B73657454696D656F75742866756E6374696F6E28297B6928293B76617220653D742E6C656E6774683B696628766F69642030213D3D612E73656C656374696F6E537461727429612E73656C656374696F6E53746172743D302C612E';
wwv_flow_api.g_varchar2_table(305) := '73656C656374696F6E456E643D653B656C736520696628612E6372656174655465787452616E6765297B766172206E3D612E6372656174655465787452616E676528293B6E2E636F6C6C61707365282131292C6E2E6D6F76655374617274282263686172';
wwv_flow_api.g_varchar2_table(306) := '6163746572222C2D65292C6E2E6D6F7665456E642822636861726163746572222C65292C6E2E73656C65637428297D612E666F63757328297D2C30297D3B76617220773D6F2E70726F746F747970653B772E70726566697865733D22283F3A5C5C737B34';
wwv_flow_api.g_varchar2_table(307) := '2C7D7C5C5C732A3E7C5C5C732A2D5C5C732B7C5C5C732A5C5C642B5C5C2E7C3D7C5C5C2B7C2D7C5F7C5C5C2A7C237C5C5C732A5C5C5B5B5E5C6E5D5D2B5C5C5D3A29222C772E756E777261703D66756E6374696F6E2865297B76617220743D6E65772066';
wwv_flow_api.g_varchar2_table(308) := '2822285B5E5C5C6E5D295C5C6E283F21285C5C6E7C222B746869732E70726566697865732B222929222C226722293B652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C61636528742C22243120243222297D2C772E777261703D6675';
wwv_flow_api.g_varchar2_table(309) := '6E6374696F6E28652C74297B746869732E756E777261702865293B766172206E3D6E657720662822282E7B312C222B742B227D2928202B7C245C5C6E3F29222C22676D22292C723D746869733B652E73656C656374696F6E3D652E73656C656374696F6E';
wwv_flow_api.g_varchar2_table(310) := '2E7265706C616365286E2C66756E6374696F6E28652C74297B72657475726E206E6577206628225E222B722E70726566697865732C2222292E746573742865293F653A742B225C6E227D292C652E73656C656374696F6E3D652E73656C656374696F6E2E';
wwv_flow_api.g_varchar2_table(311) := '7265706C616365282F5C732B242F2C2222297D2C772E646F426F6C643D66756E6374696F6E28652C74297B72657475726E20746869732E646F426F724928652C742C322C746869732E676574537472696E672822626F6C646578616D706C652229297D2C';
wwv_flow_api.g_varchar2_table(312) := '772E646F4974616C69633D66756E6374696F6E28652C74297B72657475726E20746869732E646F426F724928652C742C312C746869732E676574537472696E6728226974616C69636578616D706C652229297D2C772E646F426F72493D66756E6374696F';
wwv_flow_api.g_varchar2_table(313) := '6E28652C742C6E2C72297B652E7472696D5768697465737061636528292C652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5C6E7B322C7D2F672C225C6E22293B76617220613D2F285C2A2A24292F2E6578656328652E';
wwv_flow_api.g_varchar2_table(314) := '6265666F7265295B305D2C753D2F285E5C2A2A292F2E6578656328652E6166746572295B305D2C6F3D4D6174682E6D696E28612E6C656E6774682C752E6C656E677468293B6966286F3E3D6E26262832213D6F7C7C31213D6E2929652E6265666F72653D';
wwv_flow_api.g_varchar2_table(315) := '652E6265666F72652E7265706C616365286628225B2A5D7B222B6E2B227D24222C2222292C2222292C652E61667465723D652E61667465722E7265706C616365286628225E5B2A5D7B222B6E2B227D222C2222292C2222293B656C73652069662821652E';
wwv_flow_api.g_varchar2_table(316) := '73656C656374696F6E262675297B652E61667465723D652E61667465722E7265706C616365282F5E285B2A5F5D2A292F2C2222292C652E6265666F72653D652E6265666F72652E7265706C616365282F285C733F29242F2C2222293B76617220693D662E';
wwv_flow_api.g_varchar2_table(317) := '24313B652E6265666F72653D652E6265666F72652B752B697D656C73657B652E73656C656374696F6E7C7C757C7C28652E73656C656374696F6E3D72293B76617220633D313E3D6E3F222A223A222A2A223B652E6265666F72653D652E6265666F72652B';
wwv_flow_api.g_varchar2_table(318) := '632C652E61667465723D632B652E61667465727D7D2C772E73747269704C696E6B446566733D66756E6374696F6E28652C74297B72657475726E20653D652E7265706C616365282F5E5B205D7B302C337D5C5B285C642B295C5D3A5B205C745D2A5C6E3F';
wwv_flow_api.g_varchar2_table(319) := '5B205C745D2A3C3F285C532B3F293E3F5B205C745D2A5C6E3F5B205C745D2A283F3A285C6E2A295B22285D282E2B3F295B22295D5B205C745D2A293F283F3A5C6E2B7C24292F676D2C66756E6374696F6E28652C6E2C722C612C75297B72657475726E20';
wwv_flow_api.g_varchar2_table(320) := '745B6E5D3D652E7265706C616365282F5C732A242F2C2222292C613F28745B6E5D3D652E7265706C616365282F5B22285D282E2B3F295B22295D242F2C2222292C612B75293A22227D297D2C772E6164644C696E6B4465663D66756E6374696F6E28652C';
wwv_flow_api.g_varchar2_table(321) := '74297B0A20202020766172206E3D302C723D7B7D3B652E6265666F72653D746869732E73747269704C696E6B4465667328652E6265666F72652C72292C652E73656C656374696F6E3D746869732E73747269704C696E6B4465667328652E73656C656374';
wwv_flow_api.g_varchar2_table(322) := '696F6E2C72292C652E61667465723D746869732E73747269704C696E6B4465667328652E61667465722C72293B666F722876617220613D22222C753D2F285C5B2928283F3A5C5B5B5E5C5D5D2A5C5D7C5B5E5C5B5C5D5D292A29285C5D5B205D3F283F3A';
wwv_flow_api.g_varchar2_table(323) := '5C6E5B205D2A293F5C5B29285C642B29285C5D292F672C6F3D652E6265666F72652B652E73656C656374696F6E2B652E61667465722C693D746869732E636F6E7665727465722E6D616B6548746D6C286F292C633D22687474703A2F2F746869732D6973';
wwv_flow_api.g_varchar2_table(324) := '2D612D7265616C2D6C696E6B2E62697A2F223B2D31213D692E696E6465784F662863293B29632B3D226E6963657472792F223B766172206C3D225C6E5C6E222C733D302C643D6F2E7265706C61636528752C66756E6374696F6E207628652C742C6E2C72';
wwv_flow_api.g_varchar2_table(325) := '2C612C6F2C69297B732B3D692C6C2B3D22205B222B732B225D3A20222B632B732B222F756E69636F726E5C6E222C732B3D742E6C656E6774682C6E3D6E2E7265706C61636528752C76292C732D3D742E6C656E6774683B76617220643D742B6E2B722B73';
wwv_flow_api.g_varchar2_table(326) := '2B6F3B72657475726E20732D3D692C647D293B693D746869732E636F6E7665727465722E6D616B6548746D6C28642B6C293B76617220663D66756E6374696F6E2865297B72657475726E2D31213D3D692E696E6465784F6628632B652B222F756E69636F';
wwv_flow_api.g_varchar2_table(327) := '726E22297D2C703D66756E6374696F6E2865297B6E2B2B2C653D652E7265706C616365282F5E5B205D7B302C337D5C5B285C642B295C5D3A2F2C2220205B222B6E2B225D3A22292C612B3D225C6E222B657D2C673D66756E6374696F6E28652C742C612C';
wwv_flow_api.g_varchar2_table(328) := '6F2C692C632C6C297B72657475726E206628732B6C293F28732B3D6C2B742E6C656E6774682C613D612E7265706C61636528752C67292C732D3D6C2B742E6C656E6774682C725B695D3F287028725B695D292C742B612B6F2B6E2B63293A65293A657D2C';
wwv_flow_api.g_varchar2_table(329) := '683D652E6265666F72652E6C656E6774683B652E6265666F72653D652E6265666F72652E7265706C61636528752C67292C732B3D682C683D652E73656C656374696F6E2E6C656E6774682C743F702874293A652E73656C656374696F6E3D652E73656C65';
wwv_flow_api.g_varchar2_table(330) := '6374696F6E2E7265706C61636528752C67292C732B3D683B766172206D3D6E3B72657475726E20652E61667465723D652E61667465722E7265706C61636528752C67292C652E6166746572262628652E61667465723D652E61667465722E7265706C6163';
wwv_flow_api.g_varchar2_table(331) := '65282F5C6E2A242F2C222229292C652E61667465727C7C28652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5C6E2A242F2C222229292C652E61667465722B3D225C6E5C6E222B612C6D7D2C772E646F4C696E6B4F7249';
wwv_flow_api.g_varchar2_table(332) := '6D6167653D66756E6374696F6E28652C742C6E297B652E7472696D5768697465737061636528292C652E66696E6454616773282F5C732A213F5C5B2F2C2F5C5D5B205D3F283F3A5C6E5B205D2A293F285C5B2E2A3F5C5D293F2F293B76617220723B6966';
wwv_flow_api.g_varchar2_table(333) := '282128652E656E645461672E6C656E6774683E312626652E73746172745461672E6C656E6774683E3029297B696628652E73656C656374696F6E3D652E73746172745461672B652E73656C656374696F6E2B652E656E645461672C652E73746172745461';
wwv_flow_api.g_varchar2_table(334) := '673D652E656E645461673D22222C2F5C6E5C6E2F2E7465737428652E73656C656374696F6E292972657475726E20766F696420746869732E6164644C696E6B44656628652C6E756C6C293B76617220613D746869732C753D66756E6374696F6E2875297B';
wwv_flow_api.g_varchar2_table(335) := '696628722E706172656E744E6F64652E72656D6F76654368696C642872292C6E756C6C213D3D75297B652E73656C656374696F6E3D282220222B652E73656C656374696F6E292E7265706C616365282F285B5E5C5C5D283F3A5C5C5C5C292A29283F3D5B';
wwv_flow_api.g_varchar2_table(336) := '5B5C5D5D292F672C2224315C5C22292E7375627374722831293B766172206F3D22205B3939395D3A20222B692875292C633D612E6164644C696E6B44656628652C6F293B652E73746172745461673D6E3F22215B223A225B222C652E656E645461673D22';
wwv_flow_api.g_varchar2_table(337) := '5D5B222B632B225D222C652E73656C656374696F6E7C7C286E3F652E73656C656374696F6E3D612E676574537472696E672822696D6167656465736372697074696F6E22293A652E73656C656374696F6E3D612E676574537472696E6728226C696E6B64';
wwv_flow_api.g_varchar2_table(338) := '65736372697074696F6E2229297D7428297D3B72657475726E20723D732E6372656174654261636B67726F756E6428292C6E3F746869732E686F6F6B732E696E73657274496D6167654469616C6F672875297C7C732E70726F6D707428746869732E6765';
wwv_flow_api.g_varchar2_table(339) := '74537472696E672822696D6167656469616C6F6722292C762C75293A732E70726F6D707428746869732E676574537472696E6728226C696E6B6469616C6F6722292C622C75292C21307D652E73746172745461673D652E73746172745461672E7265706C';
wwv_flow_api.g_varchar2_table(340) := '616365282F213F5C5B2F2C2222292C652E656E645461673D22222C746869732E6164644C696E6B44656628652C6E756C6C297D2C772E646F4175746F696E64656E743D66756E6374696F6E28652C74297B766172206E3D746869732C723D21313B652E62';
wwv_flow_api.g_varchar2_table(341) := '65666F72653D652E6265666F72652E7265706C616365282F285C6E7C5E295B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2A5C6E242F2C225C6E5C6E22292C652E6265666F72653D652E6265666F72652E7265706C616365282F285C';
wwv_flow_api.g_varchar2_table(342) := '6E7C5E295B205D7B302C337D3E5B205C745D2A5C6E242F2C225C6E5C6E22292C652E6265666F72653D652E6265666F72652E7265706C616365282F285C6E7C5E295B205C745D2B5C6E242F2C225C6E5C6E22292C652E73656C656374696F6E7C7C2F5E5B';
wwv_flow_api.g_varchar2_table(343) := '205C745D2A283F3A5C6E7C24292F2E7465737428652E6166746572297C7C28652E61667465723D652E61667465722E7265706C616365282F5E5B5E5C6E5D2A2F2C66756E6374696F6E2874297B72657475726E20652E73656C656374696F6E3D742C2222';
wwv_flow_api.g_varchar2_table(344) := '7D292C723D2130292C2F285C6E7C5E295B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2E2A5C6E242F2E7465737428652E6265666F72652926266E2E646F4C69737426266E2E646F4C6973742865292C2F285C6E7C5E295B205D7B';
wwv_flow_api.g_varchar2_table(345) := '302C337D3E5B205C745D2B2E2A5C6E242F2E7465737428652E6265666F72652926266E2E646F426C6F636B71756F746526266E2E646F426C6F636B71756F74652865292C2F285C6E7C5E29285C747C5B205D7B342C7D292E2A5C6E242F2E746573742865';
wwv_flow_api.g_varchar2_table(346) := '2E6265666F72652926266E2E646F436F646526266E2E646F436F64652865292C72262628652E61667465723D652E73656C656374696F6E2B652E61667465722C652E73656C656374696F6E3D2222297D2C772E646F426C6F636B71756F74653D66756E63';
wwv_flow_api.g_varchar2_table(347) := '74696F6E28652C74297B652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5E285C6E2A29285B5E5C725D2B3F29285C6E2A29242F2C66756E6374696F6E28742C6E2C722C61297B72657475726E20652E6265666F72652B';
wwv_flow_api.g_varchar2_table(348) := '3D6E2C652E61667465723D612B652E61667465722C727D292C652E6265666F72653D652E6265666F72652E7265706C616365282F283E5B205C745D2A29242F2C66756E6374696F6E28742C6E297B72657475726E20652E73656C656374696F6E3D6E2B65';
wwv_flow_api.g_varchar2_table(349) := '2E73656C656374696F6E2C22227D292C652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5E285C737C3E292B242F2C2222292C652E73656C656374696F6E3D652E73656C656374696F6E7C7C746869732E676574537472';
wwv_flow_api.g_varchar2_table(350) := '696E67282271756F74656578616D706C6522293B766172206E2C723D22222C613D22223B696628652E6265666F7265297B666F722876617220753D652E6265666F72652E7265706C616365282F5C6E242F2C2222292E73706C697428225C6E22292C6F3D';
wwv_flow_api.g_varchar2_table(351) := '21312C693D303B693C752E6C656E6774683B692B2B297B76617220633D21313B6E3D755B695D2C6F3D6F26266E2E6C656E6774683E302C2F5E3E2F2E74657374286E293F28633D21302C216F26266E2E6C656E6774683E312626286F3D213029293A633D';
wwv_flow_api.g_varchar2_table(352) := '2F5E5B205C745D2A242F2E74657374286E293F21303A6F2C633F722B3D6E2B225C6E223A28612B3D722B6E2C723D225C6E22297D2F285E7C5C6E293E2F2E746573742872297C7C28612B3D722C723D2222297D652E73746172745461673D722C652E6265';
wwv_flow_api.g_varchar2_table(353) := '666F72653D612C652E6166746572262628652E61667465723D652E61667465722E7265706C616365282F5E5C6E3F2F2C225C6E2229292C652E61667465723D652E61667465722E7265706C616365282F5E2828285C6E7C5E29285C6E5B205C745D2A292A';
wwv_flow_api.g_varchar2_table(354) := '3E282E2B5C6E292A2E2A292B285C6E5B205C745D2A292A292F2C66756E6374696F6E2874297B72657475726E20652E656E645461673D742C22227D293B766172206C3D66756E6374696F6E2874297B766172206E3D743F223E20223A22223B652E737461';
wwv_flow_api.g_varchar2_table(355) := '7274546167262628652E73746172745461673D652E73746172745461672E7265706C616365282F5C6E28283E7C5C73292A295C6E242F2C66756E6374696F6E28652C74297B72657475726E225C6E222B742E7265706C616365282F5E5B205D7B302C337D';
wwv_flow_api.g_varchar2_table(356) := '3E3F5B205C745D2A242F676D2C6E292B225C6E227D29292C652E656E64546167262628652E656E645461673D652E656E645461672E7265706C616365282F5E5C6E28283E7C5C73292A295C6E2F2C66756E6374696F6E28652C74297B72657475726E225C';
wwv_flow_api.g_varchar2_table(357) := '6E222B742E7265706C616365282F5E5B205D7B302C337D3E3F5B205C745D2A242F676D2C6E292B225C6E227D29297D3B2F5E283F215B205D7B302C337D3E292F6D2E7465737428652E73656C656374696F6E293F28746869732E7772617028652C672E6C';
wwv_flow_api.g_varchar2_table(358) := '696E654C656E6774682D32292C652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5E2F676D2C223E2022292C6C282130292C652E736B69704C696E65732829293A28652E73656C656374696F6E3D652E73656C65637469';
wwv_flow_api.g_varchar2_table(359) := '6F6E2E7265706C616365282F5E5B205D7B302C337D3E203F2F676D2C2222292C746869732E756E777261702865292C6C282131292C212F5E285C6E7C5E295B205D7B302C337D3E2F2E7465737428652E73656C656374696F6E292626652E737461727454';
wwv_flow_api.g_varchar2_table(360) := '6167262628652E73746172745461673D652E73746172745461672E7265706C616365282F5C6E7B302C327D242F2C225C6E5C6E2229292C212F285C6E7C5E295B205D7B302C337D3E2E2A242F2E7465737428652E73656C656374696F6E292626652E656E';
wwv_flow_api.g_varchar2_table(361) := '64546167262628652E656E645461673D652E656E645461672E7265706C616365282F5E5C6E7B302C327D2F2C225C6E5C6E222929292C652E73656C656374696F6E3D746869732E686F6F6B732E706F7374426C6F636B71756F74654372656174696F6E28';
wwv_flow_api.g_varchar2_table(362) := '652E73656C656374696F6E292C2F5C6E2F2E7465737428652E73656C656374696F6E297C7C28652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5E283E202A292F2C66756E6374696F6E28742C6E297B72657475726E20';
wwv_flow_api.g_varchar2_table(363) := '652E73746172745461672B3D6E2C22227D29297D2C772E646F436F64653D66756E6374696F6E28652C74297B766172206E3D2F5C535B205D2A242F2E7465737428652E6265666F7265292C723D2F5E5B205D2A5C532F2E7465737428652E616674657229';
wwv_flow_api.g_varchar2_table(364) := '3B69662821722626216E7C7C2F5C6E2F2E7465737428652E73656C656374696F6E29297B652E6265666F72653D652E6265666F72652E7265706C616365282F5B205D7B347D242F2C66756E6374696F6E2874297B72657475726E20652E73656C65637469';
wwv_flow_api.g_varchar2_table(365) := '6F6E3D742B652E73656C656374696F6E2C22227D293B76617220613D312C753D313B2F285C6E7C5E29285C747C5B205D7B342C7D292E2A5C6E242F2E7465737428652E6265666F726529262628613D30292C2F5E5C6E285C747C5B205D7B342C7D292F2E';
wwv_flow_api.g_varchar2_table(366) := '7465737428652E616674657229262628753D30292C652E736B69704C696E657328612C75292C652E73656C656374696F6E3F2F5E5B205D7B302C337D5C532F6D2E7465737428652E73656C656374696F6E293F2F5C6E2F2E7465737428652E73656C6563';
wwv_flow_api.g_varchar2_table(367) := '74696F6E293F652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5E2F676D2C222020202022293A652E6265666F72652B3D2220202020223A652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365';
wwv_flow_api.g_varchar2_table(368) := '282F5E283F3A5B205D7B347D7C5B205D7B302C337D5C74292F676D2C2222293A28652E73746172745461673D2220202020222C652E73656C656374696F6E3D746869732E676574537472696E672822636F64656578616D706C652229297D656C73652065';
wwv_flow_api.g_varchar2_table(369) := '2E7472696D5768697465737061636528292C652E66696E6454616773282F602F2C2F602F292C652E73746172745461677C7C652E656E645461673F652E656E64546167262621652E73746172745461673F28652E6265666F72652B3D652E656E64546167';
wwv_flow_api.g_varchar2_table(370) := '2C652E656E645461673D2222293A652E73746172745461673D652E656E645461673D22223A28652E73746172745461673D652E656E645461673D2260222C652E73656C656374696F6E7C7C28652E73656C656374696F6E3D746869732E67657453747269';
wwv_flow_api.g_varchar2_table(371) := '6E672822636F64656578616D706C65222929297D2C772E646F4C6973743D66756E6374696F6E28652C742C6E297B76617220723D2F285C6E7C5E2928285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2E2A29285C6E2E2B7C5C6E';
wwv_flow_api.g_varchar2_table(372) := '7B322C7D285B2A2B2D5D2E2A7C5C642B5B2E5D295B205C745D2B2E2A7C5C6E7B322C7D5B205C745D2B5C532E2A292A295C6E2A242F2C613D2F5E5C6E2A28285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2E2A29285C6E2E2B7C';
wwv_flow_api.g_varchar2_table(373) := '5C6E7B322C7D285B2A2B2D5D2E2A7C5C642B5B2E5D295B205C745D2B2E2A7C5C6E7B322C7D5B205C745D2B5C532E2A292A295C6E2A2F2C753D222D222C6F3D312C693D66756E6374696F6E28297B76617220653B72657475726E206E3F28653D2220222B';
wwv_flow_api.g_varchar2_table(374) := '6F2B222E20222C6F2B2B293A653D2220222B752B2220222C657D2C633D66756E6374696F6E2865297B72657475726E20766F696420303D3D3D6E2626286E3D2F5E5C732A5C642F2E74657374286529292C653D652E7265706C616365282F5E5B205D7B30';
wwv_flow_api.g_varchar2_table(375) := '2C337D285B2A2B2D5D7C5C642B5B2E5D295C732F676D2C66756E6374696F6E2865297B72657475726E206928297D297D3B696628652E66696E6454616773282F285C6E7C5E292A5B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295C732B2F2C6E75';
wwv_flow_api.g_varchar2_table(376) := '6C6C292C21652E6265666F72657C7C2F5C6E242F2E7465737428652E6265666F7265297C7C2F5E5C6E2F2E7465737428652E7374617274546167297C7C28652E6265666F72652B3D652E73746172745461672C652E73746172745461673D2222292C652E';
wwv_flow_api.g_varchar2_table(377) := '7374617274546167297B766172206C3D2F5C642B5B2E5D2F2E7465737428652E7374617274546167293B696628652E73746172745461673D22222C652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5C6E5B205D7B347D';
wwv_flow_api.g_varchar2_table(378) := '2F672C225C6E22292C746869732E756E777261702865292C652E736B69704C696E657328292C6C262628652E61667465723D652E61667465722E7265706C61636528612C6329292C6E3D3D6C2972657475726E7D76617220733D313B652E6265666F7265';
wwv_flow_api.g_varchar2_table(379) := '3D652E6265666F72652E7265706C61636528722C66756E6374696F6E2865297B72657475726E2F5E5C732A285B2A2B2D5D292F2E74657374286529262628753D662E2431292C733D2F5B5E5C6E5D5C6E5C6E5B5E5C6E5D2F2E746573742865293F313A30';
wwv_flow_api.g_varchar2_table(380) := '2C632865297D292C652E73656C656374696F6E7C7C28652E73656C656374696F6E3D746869732E676574537472696E6728226C6974656D2229293B76617220643D6928292C703D313B652E61667465723D652E61667465722E7265706C61636528612C66';
wwv_flow_api.g_varchar2_table(381) := '756E6374696F6E2865297B72657475726E20703D2F5B5E5C6E5D5C6E5C6E5B5E5C6E5D2F2E746573742865293F313A302C632865297D292C652E7472696D57686974657370616365282130292C652E736B69704C696E657328732C702C2130292C652E73';
wwv_flow_api.g_varchar2_table(382) := '746172745461673D643B76617220683D642E7265706C616365282F2E2F672C222022293B746869732E7772617028652C672E6C696E654C656E6774682D682E6C656E677468292C652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C61';
wwv_flow_api.g_varchar2_table(383) := '6365282F5C6E2F672C225C6E222B68297D2C772E646F48656164696E673D66756E6374696F6E28652C74297B696628652E73656C656374696F6E3D652E73656C656374696F6E2E7265706C616365282F5C732B2F672C222022292C652E73656C65637469';
wwv_flow_api.g_varchar2_table(384) := '6F6E3D652E73656C656374696F6E2E7265706C616365282F285E5C732B7C5C732B24292F672C2222292C21652E73656C656374696F6E2972657475726E20652E73746172745461673D22232320222C652E73656C656374696F6E3D746869732E67657453';
wwv_flow_api.g_varchar2_table(385) := '7472696E67282268656164696E676578616D706C6522292C766F696428652E656E645461673D2220232322293B766172206E3D303B652E66696E6454616773282F232B5B205D2A2F2C2F5B205D2A232B2F292C2F232B2F2E7465737428652E7374617274';
wwv_flow_api.g_varchar2_table(386) := '546167292626286E3D662E6C6173744D617463682E6C656E677468292C652E73746172745461673D652E656E645461673D22222C652E66696E6454616773286E756C6C2C2F5C733F282D2B7C3D2B292F292C2F3D2B2F2E7465737428652E656E64546167';
wwv_flow_api.g_varchar2_table(387) := '292626286E3D31292C2F2D2B2F2E7465737428652E656E64546167292626286E3D32292C652E73746172745461673D652E656E645461673D22222C652E736B69704C696E657328312C31293B76617220723D303D3D6E3F323A6E2D313B696628723E3029';
wwv_flow_api.g_varchar2_table(388) := '7B76617220613D723E3D323F222D223A223D222C753D652E73656C656374696F6E2E6C656E6774683B666F7228753E672E6C696E654C656E677468262628753D672E6C696E654C656E677468292C652E656E645461673D225C6E223B752D2D3B29652E65';
wwv_flow_api.g_varchar2_table(389) := '6E645461672B3D617D7D2C772E646F486F72697A6F6E74616C52756C653D66756E6374696F6E28652C74297B652E73746172745461673D222D2D2D2D2D2D2D2D2D2D5C6E222C652E73656C656374696F6E3D22222C652E736B69704C696E657328322C31';
wwv_flow_api.g_varchar2_table(390) := '2C2130297D7D28293B766172206D61726B646F776E3D7B7D3B6D61726B646F776E2E706C7567696E56657273696F6E3D22312E302E30222C6D61726B646F776E2E636F6E7665727465723D6E6577204D61726B646F776E2E436F6E7665727465722C6D61';
wwv_flow_api.g_varchar2_table(391) := '726B646F776E2E72656E646572656448746D6C467261676D656E74733D302C6D61726B646F776E2E73756D52656E646572696E6754696D6548746D6C467261676D656E74733D302C6D61726B646F776E2E6176657261676552656E646572696E6754696D';
wwv_flow_api.g_varchar2_table(392) := '6548746D6C467261676D656E743D302C6D61726B646F776E2E63726561746564456469746F72733D302C6D61726B646F776E2E73756D4372656174696F6E54696D65456469746F72733D302C6D61726B646F776E2E617665726167654372656174696F6E';
wwv_flow_api.g_varchar2_table(393) := '54696D65456469746F723D302C6D61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E673D302C446174652E6E6F777C7C28446174652E6E6F773D66756E6374696F6E28297B72657475726E28';
wwv_flow_api.g_varchar2_table(394) := '6E65772044617465292E67657454696D6528297D292C6D61726B646F776E2E6D616B6548746D6C4F72437265617465456469746F72733D66756E6374696F6E28652C74297B766172206E2C723B6E3D446174652E6E6F7728292C6A51756572792865292E';
wwv_flow_api.g_varchar2_table(395) := '66696E6428222E6D61726B646F776E22292E6E6F74282274657874617265612C696E7075742C2E776D642D7072657669657722292E656163682866756E6374696F6E28297B6D61726B646F776E2E72656E646572656448746D6C467261676D656E74732B';
wwv_flow_api.g_varchar2_table(396) := '3D312C6A51756572792874686973292E68746D6C286D61726B646F776E2E636F6E7665727465722E6D616B6548746D6C286A51756572792874686973292E68746D6C28292E7265706C616365282F3C62723E2F672C225C6E222929297D292C723D446174';
wwv_flow_api.g_varchar2_table(397) := '652E6E6F7728292D6E2C6D61726B646F776E2E73756D52656E646572696E6754696D6548746D6C467261676D656E74732B3D722C6D61726B646F776E2E72656E646572656448746D6C467261676D656E74733E302626286D61726B646F776E2E61766572';
wwv_flow_api.g_varchar2_table(398) := '61676552656E646572696E6754696D6548746D6C467261676D656E743D4D6174682E726F756E64286D61726B646F776E2E73756D52656E646572696E6754696D6548746D6C467261676D656E74732F6D61726B646F776E2E72656E646572656448746D6C';
wwv_flow_api.g_varchar2_table(399) := '467261676D656E747329292C6D61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E672B3D722C6E3D446174652E6E6F7728292C6A51756572792865292E66696E64282274657874617265612E';
wwv_flow_api.g_varchar2_table(400) := '6D61726B646F776E22292E656163682866756E6374696F6E28297B6D61726B646F776E2E63726561746564456469746F72732B3D312C6A51756572792874686973292E616464436C6173732822776D642D696E70757422292E706172656E7428292E7772';
wwv_flow_api.g_varchar2_table(401) := '617028273C64697620636C6173733D22776D642D70616E656C272B6D61726B646F776E2E63726561746564456469746F72732B27223E3C2F6469763E27292E6265666F726528273C6469762069643D22776D642D627574746F6E2D626172272B6D61726B';
wwv_flow_api.g_varchar2_table(402) := '646F776E2E63726561746564456469746F72732B27223E3C2F6469763E27292E706172656E7428292E617070656E6428273C6469762069643D22776D642D70726576696577272B6D61726B646F776E2E63726561746564456469746F72732B272220636C';
wwv_flow_api.g_varchar2_table(403) := '6173733D22776D642D70616E656C20776D642D70726576696577206D61726B646F776E223E3C2F6469763E27292C6D61726B646F776E5B22656469746F72222B6D61726B646F776E2E63726561746564456469746F72735D3D6E6577204D61726B646F77';
wwv_flow_api.g_varchar2_table(404) := '6E2E456469746F72286D61726B646F776E2E636F6E7665727465722C537472696E67286D61726B646F776E2E63726561746564456469746F7273292C6A51756572792874686973292E61747472282269642229292C6D61726B646F776E5B22656469746F';
wwv_flow_api.g_varchar2_table(405) := '72222B6D61726B646F776E2E63726561746564456469746F72735D2E72756E28297D292C723D446174652E6E6F7728292D6E2C6D61726B646F776E2E73756D4372656174696F6E54696D65456469746F72732B3D722C6D61726B646F776E2E6372656174';
wwv_flow_api.g_varchar2_table(406) := '6564456469746F72733E302626286D61726B646F776E2E617665726167654372656174696F6E54696D65456469746F723D4D6174682E726F756E64286D61726B646F776E2E73756D4372656174696F6E54696D65456469746F72732F6D61726B646F776E';
wwv_flow_api.g_varchar2_table(407) := '2E63726561746564456469746F727329292C6D61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E672B3D722C742626636F6E736F6C652E6C6F6728224D61726B646F776E20706C7567696E20';
wwv_flow_api.g_varchar2_table(408) := '2D2072756E74696D6520737461746973746963735C6E3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D5C6E20202020202020202020202020202020202020506C7567696E2076657273696F6E3A2022';
wwv_flow_api.g_varchar2_table(409) := '2B6D61726B646F776E2E706C7567696E56657273696F6E2B225C6E20202020202020204E756D626572206F66206372656174656420656469746F72733A20222B6D61726B646F776E2E63726561746564456469746F72732B225C6E222B286D61726B646F';
wwv_flow_api.g_varchar2_table(410) := '776E2E63726561746564456469746F72733E303F2220202020202020202020202041766572616765206372656174696F6E2074696D653A20222B6D61726B646F776E2E617665726167654372656174696F6E54696D65456469746F722B226D735C6E223A';
wwv_flow_api.g_varchar2_table(411) := '2222292B224E756D626572206F662072656E64657265642048544D4C20667261676D656E74733A20222B6D61726B646F776E2E72656E646572656448746D6C467261676D656E74732B225C6E222B286D61726B646F776E2E72656E646572656448746D6C';
wwv_flow_api.g_varchar2_table(412) := '467261676D656E74733E303F222020202020202020202020417665726167652072656E646572696E672074696D653A20222B6D61726B646F776E2E6176657261676552656E646572696E6754696D6548746D6C467261676D656E742B226D735C6E223A22';
wwv_flow_api.g_varchar2_table(413) := '22292B22204F766572616C6C2072756E74696D6520776974686F75742070726576696577733A20222B6D61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E672B226D7322297D3B';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 3709515378633578 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_file_name => 'markdown-1.0.0.min.js'
 ,p_mime_type => 'text/javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := 'EFBBBF2F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F20283129204D61726B646F776E20';
wwv_flow_api.g_varchar2_table(2) := '436F6E7665727465720D0A2F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A227573652073';
wwv_flow_api.g_varchar2_table(3) := '7472696374223B0D0A766172204D61726B646F776E3B0D0A0D0A69662028747970656F66206578706F727473203D3D3D20226F626A6563742220262620747970656F662072657175697265203D3D3D202266756E6374696F6E2229202F2F207765277265';
wwv_flow_api.g_varchar2_table(4) := '20696E206120436F6D6D6F6E4A532028652E672E204E6F64652E6A7329206D6F64756C650D0A202020204D61726B646F776E203D206578706F7274733B0D0A656C73650D0A202020204D61726B646F776E203D207B7D3B0D0A0D0A2F2F2054686520666F';
wwv_flow_api.g_varchar2_table(5) := '6C6C6F77696E67207465787420697320696E636C7564656420666F7220686973746F726963616C20726561736F6E732C206275742073686F756C640D0A2F2F2062652074616B656E207769746820612070696E6368206F662073616C743B206974277320';
wwv_flow_api.g_varchar2_table(6) := '6E6F7420616C6C207472756520616E796D6F72652E0D0A0D0A2F2F0D0A2F2F20576865726576657220706F737369626C652C2053686F77646F776E20697320612073747261696768742C206C696E652D62792D6C696E6520706F72740D0A2F2F206F6620';
wwv_flow_api.g_varchar2_table(7) := '746865205065726C2076657273696F6E206F66204D61726B646F776E2E0D0A2F2F0D0A2F2F2054686973206973206E6F742061206E6F726D616C207061727365722064657369676E3B2069742773206261736963616C6C79206A75737420610D0A2F2F20';
wwv_flow_api.g_varchar2_table(8) := '736572696573206F6620737472696E6720737562737469747574696F6E732E202049742773206861726420746F207265616420616E640D0A2F2F206D61696E7461696E2074686973207761792C2020627574206B656570696E672053686F77646F776E20';
wwv_flow_api.g_varchar2_table(9) := '636C6F736520746F20746865206F726967696E616C0D0A2F2F2064657369676E206D616B65732069742065617369657220746F20706F7274206E65772066656174757265732E0D0A2F2F0D0A2F2F204D6F726520696D706F7274616E746C792C2053686F';
wwv_flow_api.g_varchar2_table(10) := '77646F776E2062656861766573206C696B65206D61726B646F776E2E706C20696E206D6F73740D0A2F2F20656467652063617365732E2020536F20776562206170706C69636174696F6E732063616E20646F20636C69656E742D73696465207072657669';
wwv_flow_api.g_varchar2_table(11) := '65770D0A2F2F20696E204A6176617363726970742C20616E64207468656E206275696C64206964656E746963616C2048544D4C206F6E20746865207365727665722E0D0A2F2F0D0A2F2F205468697320706F7274206E6565647320746865206E65772052';
wwv_flow_api.g_varchar2_table(12) := '65674578702066756E6374696F6E616C697479206F662045434D41203236322C0D0A2F2F203372642045646974696F6E2028692E652E204A61766173637269707420312E35292E20204D6F7374206D6F6465726E207765622062726F77736572730D0A2F';
wwv_flow_api.g_varchar2_table(13) := '2F2073686F756C6420646F2066696E652E20204576656E207769746820746865206E657720726567756C61722065787072657373696F6E2066656174757265732C0D0A2F2F20576520646F2061206C6F74206F6620776F726B20746F20656D756C617465';
wwv_flow_api.g_varchar2_table(14) := '205065726C27732072656765782066756E6374696F6E616C6974792E0D0A2F2F2054686520747269636B79206368616E67657320696E20746869732066696C65206D6F73746C79206861766520746865202261747461636B6C61623A220D0A2F2F206C61';
wwv_flow_api.g_varchar2_table(15) := '62656C2E20204D616A6F72206F722073656C662D6578706C616E61746F7279206368616E67657320646F6E27742E0D0A2F2F0D0A2F2F20536D617274206469666620746F6F6C73206C696B6520417261786973204D657267652077696C6C206265206162';
wwv_flow_api.g_varchar2_table(16) := '6C6520746F206D617463682075700D0A2F2F20746869732066696C652077697468206D61726B646F776E2E706C20696E20612075736566756C207761792E202041206C6974746C6520747765616B696E670D0A2F2F2068656C70733A20696E206120636F';
wwv_flow_api.g_varchar2_table(17) := '7079206F66206D61726B646F776E2E706C2C207265706C61636520222322207769746820222F2F2220616E640D0A2F2F207265706C61636520222474657874222077697468202274657874222E20204265207375726520746F2069676E6F726520776869';
wwv_flow_api.g_varchar2_table(18) := '746573706163650D0A2F2F20616E64206C696E6520656E64696E67732E0D0A2F2F0D0A0D0A0D0A2F2F0D0A2F2F2055736167653A0D0A2F2F0D0A2F2F2020207661722074657874203D20224D61726B646F776E202A726F636B732A2E223B0D0A2F2F0D0A';
wwv_flow_api.g_varchar2_table(19) := '2F2F20202076617220636F6E766572746572203D206E6577204D61726B646F776E2E436F6E76657274657228293B0D0A2F2F2020207661722068746D6C203D20636F6E7665727465722E6D616B6548746D6C2874657874293B0D0A2F2F0D0A2F2F202020';
wwv_flow_api.g_varchar2_table(20) := '616C6572742868746D6C293B0D0A2F2F0D0A2F2F204E6F74653A206D6F7665207468652073616D706C6520636F646520746F2074686520626F74746F6D206F6620746869730D0A2F2F2066696C65206265666F726520756E636F6D6D656E74696E672069';
wwv_flow_api.g_varchar2_table(21) := '742E0D0A2F2F0D0A0D0A2866756E6374696F6E202829207B0D0A0D0A2020202066756E6374696F6E206964656E74697479287829207B2072657475726E20783B207D0D0A2020202066756E6374696F6E2072657475726E46616C7365287829207B207265';
wwv_flow_api.g_varchar2_table(22) := '7475726E2066616C73653B207D0D0A0D0A2020202066756E6374696F6E20486F6F6B436F6C6C656374696F6E2829207B207D0D0A0D0A20202020486F6F6B436F6C6C656374696F6E2E70726F746F74797065203D207B0D0A0D0A20202020202020206368';
wwv_flow_api.g_varchar2_table(23) := '61696E3A2066756E6374696F6E2028686F6F6B6E616D652C2066756E6329207B0D0A202020202020202020202020766172206F726967696E616C203D20746869735B686F6F6B6E616D655D3B0D0A20202020202020202020202069662028216F72696769';
wwv_flow_api.g_varchar2_table(24) := '6E616C290D0A202020202020202020202020202020207468726F77206E6577204572726F722822756E6B6E6F776E20686F6F6B2022202B20686F6F6B6E616D65293B0D0A0D0A202020202020202020202020696620286F726967696E616C203D3D3D2069';
wwv_flow_api.g_varchar2_table(25) := '64656E74697479290D0A20202020202020202020202020202020746869735B686F6F6B6E616D655D203D2066756E633B0D0A202020202020202020202020656C73650D0A20202020202020202020202020202020746869735B686F6F6B6E616D655D203D';
wwv_flow_api.g_varchar2_table(26) := '2066756E6374696F6E20287465787429207B0D0A20202020202020202020202020202020202020207661722061726773203D2041727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C2030293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(27) := '2020202020202020202020202020617267735B305D203D206F726967696E616C2E6170706C79286E756C6C2C2061726773293B0D0A202020202020202020202020202020202020202072657475726E2066756E632E6170706C79286E756C6C2C20617267';
wwv_flow_api.g_varchar2_table(28) := '73293B0D0A202020202020202020202020202020207D3B0D0A20202020202020207D2C0D0A20202020202020207365743A2066756E6374696F6E2028686F6F6B6E616D652C2066756E6329207B0D0A202020202020202020202020696620282174686973';
wwv_flow_api.g_varchar2_table(29) := '5B686F6F6B6E616D655D290D0A202020202020202020202020202020207468726F77206E6577204572726F722822756E6B6E6F776E20686F6F6B2022202B20686F6F6B6E616D65293B0D0A202020202020202020202020746869735B686F6F6B6E616D65';
wwv_flow_api.g_varchar2_table(30) := '5D203D2066756E633B0D0A20202020202020207D2C0D0A20202020202020206164644E6F6F703A2066756E6374696F6E2028686F6F6B6E616D6529207B0D0A202020202020202020202020746869735B686F6F6B6E616D655D203D206964656E74697479';
wwv_flow_api.g_varchar2_table(31) := '3B0D0A20202020202020207D2C0D0A202020202020202061646446616C73653A2066756E6374696F6E2028686F6F6B6E616D6529207B0D0A202020202020202020202020746869735B686F6F6B6E616D655D203D2072657475726E46616C73653B0D0A20';
wwv_flow_api.g_varchar2_table(32) := '202020202020207D0D0A202020207D3B0D0A0D0A202020204D61726B646F776E2E486F6F6B436F6C6C656374696F6E203D20486F6F6B436F6C6C656374696F6E3B0D0A0D0A202020202F2F20675F75726C7320616E6420675F7469746C657320616C6C6F';
wwv_flow_api.g_varchar2_table(33) := '772061726269747261727920757365722D656E746572656420737472696E6773206173206B6579732E20546869730D0A202020202F2F2063617573656420616E20657863657074696F6E2028616E642068656E63652073746F7070656420746865207265';
wwv_flow_api.g_varchar2_table(34) := '6E646572696E6729207768656E20746865207573657220656E74657265640D0A202020202F2F20652E672E205B707573685D206F72205B5F5F70726F746F5F5F5D2E20416464696E6720612070726566697820746F207468652061637475616C206B6579';
wwv_flow_api.g_varchar2_table(35) := '2070726576656E747320746869730D0A202020202F2F202873696E6365206E6F206275696C74696E2070726F70657274792073746172747320776974682022735F22292E205365650D0A202020202F2F20687474703A2F2F6D6574612E737461636B6578';
wwv_flow_api.g_varchar2_table(36) := '6368616E67652E636F6D2F7175657374696F6E732F36343635352F737472616E67652D776D642D6275670D0A202020202F2F20286772616E7465642C20737769746368696E672066726F6D204172726179282920746F204F626A656374282920616C6F6E';
wwv_flow_api.g_varchar2_table(37) := '6520776F756C642068617665206C656674206F6E6C79205F5F70726F746F5F5F0D0A202020202F2F20746F20626520612070726F626C656D290D0A2020202066756E6374696F6E2053617665486173682829207B207D0D0A202020205361766548617368';
wwv_flow_api.g_varchar2_table(38) := '2E70726F746F74797065203D207B0D0A20202020202020207365743A2066756E6374696F6E20286B65792C2076616C756529207B0D0A202020202020202020202020746869735B22735F22202B206B65795D203D2076616C75653B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(39) := '207D2C0D0A20202020202020206765743A2066756E6374696F6E20286B657929207B0D0A20202020202020202020202072657475726E20746869735B22735F22202B206B65795D3B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A202020204D';
wwv_flow_api.g_varchar2_table(40) := '61726B646F776E2E436F6E766572746572203D2066756E6374696F6E20284F5054494F4E5329207B0D0A202020202020202076617220706C7567696E486F6F6B73203D20746869732E686F6F6B73203D206E657720486F6F6B436F6C6C656374696F6E28';
wwv_flow_api.g_varchar2_table(41) := '293B0D0A0D0A20202020202020202F2F20676976656E20612055524C20746861742077617320656E636F756E746572656420627920697473656C662028776974686F7574206D61726B7570292C2073686F756C642072657475726E20746865206C696E6B';
wwv_flow_api.g_varchar2_table(42) := '20746578742074686174277320746F20626520676976656E20746F2074686973206C696E6B0D0A2020202020202020706C7567696E486F6F6B732E6164644E6F6F702822706C61696E4C696E6B5465787422293B0D0A0D0A20202020202020202F2F2063';
wwv_flow_api.g_varchar2_table(43) := '616C6C6564207769746820746865206F7269676E616C207465787420617320676976656E20746F206D616B6548746D6C2E2054686520726573756C74206F66207468697320706C7567696E20686F6F6B206973207468652061637475616C206D61726B64';
wwv_flow_api.g_varchar2_table(44) := '6F776E20736F7572636520746861742077696C6C20626520636F6F6B65640D0A2020202020202020706C7567696E486F6F6B732E6164644E6F6F702822707265436F6E76657273696F6E22293B0D0A0D0A20202020202020202F2F2063616C6C65642077';
wwv_flow_api.g_varchar2_table(45) := '697468207468652074657874206F6E636520616C6C206E6F726D616C697A6174696F6E732068617665206265656E20636F6D706C6574656420287461627320746F207370616365732C206C696E6520656E64696E67732C206574632E292C206275742062';
wwv_flow_api.g_varchar2_table(46) := '65666F726520616E7920636F6E76657273696F6E7320686176650D0A2020202020202020706C7567696E486F6F6B732E6164644E6F6F702822706F73744E6F726D616C697A6174696F6E22293B0D0A0D0A20202020202020202F2F2043616C6C65642077';
wwv_flow_api.g_varchar2_table(47) := '697468207468652074657874206265666F7265202F206166746572206372656174696E6720626C6F636B20656C656D656E7473206C696B6520636F646520626C6F636B7320616E64206C697374732E204E6F746520746861742074686973206973206361';
wwv_flow_api.g_varchar2_table(48) := '6C6C6564207265637572736976656C790D0A20202020202020202F2F207769746820696E6E657220636F6E74656E742C20652E672E20697427732063616C6C65642077697468207468652066756C6C20746578742C20616E64207468656E206F6E6C7920';
wwv_flow_api.g_varchar2_table(49) := '776974682074686520636F6E74656E74206F66206120626C6F636B71756F74652E2054686520696E6E65720D0A20202020202020202F2F2063616C6C2077696C6C2072656365697665206F757464656E74656420746578742E0D0A202020202020202070';
wwv_flow_api.g_varchar2_table(50) := '6C7567696E486F6F6B732E6164644E6F6F702822707265426C6F636B47616D757422293B0D0A2020202020202020706C7567696E486F6F6B732E6164644E6F6F702822706F7374426C6F636B47616D757422293B0D0A0D0A20202020202020202F2F2063';
wwv_flow_api.g_varchar2_table(51) := '616C6C65642077697468207468652074657874206F6620612073696E676C6520626C6F636B20656C656D656E74206265666F7265202F20616674657220746865207370616E2D6C6576656C20636F6E76657273696F6E732028626F6C642C20636F646520';
wwv_flow_api.g_varchar2_table(52) := '7370616E732C206574632E292068617665206265656E206D6164650D0A2020202020202020706C7567696E486F6F6B732E6164644E6F6F7028227072655370616E47616D757422293B0D0A2020202020202020706C7567696E486F6F6B732E6164644E6F';
wwv_flow_api.g_varchar2_table(53) := '6F702822706F73745370616E47616D757422293B0D0A0D0A20202020202020202F2F2063616C6C65642077697468207468652066696E616C20636F6F6B65642048544D4C20636F64652E2054686520726573756C74206F66207468697320706C7567696E';
wwv_flow_api.g_varchar2_table(54) := '20686F6F6B206973207468652061637475616C206F7574707574206F66206D616B6548746D6C0D0A2020202020202020706C7567696E486F6F6B732E6164644E6F6F702822706F7374436F6E76657273696F6E22293B0D0A0D0A20202020202020202F2F';
wwv_flow_api.g_varchar2_table(55) := '0D0A20202020202020202F2F2050726976617465207374617465206F662074686520636F6E76657274657220696E7374616E63653A0D0A20202020202020202F2F0D0A0D0A20202020202020202F2F20476C6F62616C206861736865732C207573656420';
wwv_flow_api.g_varchar2_table(56) := '627920766172696F7573207574696C69747920726F7574696E65730D0A202020202020202076617220675F75726C733B0D0A202020202020202076617220675F7469746C65733B0D0A202020202020202076617220675F68746D6C5F626C6F636B733B0D';
wwv_flow_api.g_varchar2_table(57) := '0A0D0A20202020202020202F2F205573656420746F20747261636B207768656E20776527726520696E7369646520616E206F726465726564206F7220756E6F726465726564206C6973740D0A20202020202020202F2F2028736565205F50726F63657373';
wwv_flow_api.g_varchar2_table(58) := '4C6973744974656D73282920666F722064657461696C73293A0D0A202020202020202076617220675F6C6973745F6C6576656C3B0D0A0D0A20202020202020204F5054494F4E53203D204F5054494F4E53207C7C207B7D3B0D0A20202020202020207661';
wwv_flow_api.g_varchar2_table(59) := '722061736369696679203D206964656E746974792C20646561736369696679203D206964656E746974793B0D0A2020202020202020696620284F5054494F4E532E6E6F6E41736369694C65747465727329207B0D0A0D0A2020202020202020202020202F';
wwv_flow_api.g_varchar2_table(60) := '2A20496E204A61766153637269707420726567756C61722065787072657373696F6E732C205C77206F6E6C792064656E6F746573205B612D7A412D5A302D395F5D2E0D0A202020202020202020202020202A205468617427732077687920746865726527';
wwv_flow_api.g_varchar2_table(61) := '7320696E636F6E73697374656E742068616E646C696E6720652E672E207769746820696E7472612D776F726420626F6C64696E670D0A202020202020202020202020202A206F66204A6170616E65736520776F7264732E20546861742773207768792077';
wwv_flow_api.g_varchar2_table(62) := '6520646F2074686520666F6C6C6F77696E67206966204F5054494F4E532E6E6F6E41736369694C6574746572730D0A202020202020202020202020202A20697320747275653A0D0A202020202020202020202020202A0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(63) := '202A204265666F726520646F696E6720626F6C6420616E64206974616C6963732C2077652066696E6420657665727920696E7374616E63650D0A202020202020202020202020202A206F66206120756E69636F646520776F726420636861726163746572';
wwv_flow_api.g_varchar2_table(64) := '20696E20746865204D61726B646F776E20736F757263652074686174206973206E6F740D0A202020202020202020202020202A206D617463686564206279205C772C20616E6420746865206C6574746572202251222E2057652074616B65207468652063';
wwv_flow_api.g_varchar2_table(65) := '6861726163746572277320636F646520706F696E740D0A202020202020202020202020202A20616E6420656E636F646520697420696E20626173652035312C207573696E67207468652022646967697473220D0A202020202020202020202020202A0D0A';
wwv_flow_api.g_varchar2_table(66) := '202020202020202020202020202A2020202020412C20422C202E2E2E2C20502C20522C202E2E2E2C20592C205A2C20612C20622C202E2E2E2C20792C207A0D0A202020202020202020202020202A0D0A202020202020202020202020202A2064656C696D';
wwv_flow_api.g_varchar2_table(67) := '6974696E67206974207769746820225122206F6E20626F74682073696465732E20466F72206578616D706C652C2074686520736F757263650D0A202020202020202020202020202A0D0A202020202020202020202020202A203E20496E204368696E6573';
wwv_flow_api.g_varchar2_table(68) := '652C2074686520736D75726673206172652063616C6C656420E8978DE7B2BEE99D882C206D65616E696E672022626C75652073706972697473222E0D0A202020202020202020202020202A0D0A202020202020202020202020202A207475726E7320696E';
wwv_flow_api.g_varchar2_table(69) := '746F0D0A202020202020202020202020202A0D0A202020202020202020202020202A203E20496E204368696E6573652C2074686520736D75726673206172652063616C6C656420514E496851514D4F4951514F7555512C206D65616E696E672022626C75';
wwv_flow_api.g_varchar2_table(70) := '652073706972697473222E0D0A202020202020202020202020202A0D0A202020202020202020202020202A2053696E63652065766572797468696E6720746861742069732061206C657474657220696E20556E69636F6465206973206E6F772061206C65';
wwv_flow_api.g_varchar2_table(71) := '7474657220286F720D0A202020202020202020202020202A207365766572616C206C6574746572732920696E2041534349492C205C7720616E64205C622073686F756C6420616C7761797320646F20746865207269676874207468696E672E0D0A202020';
wwv_flow_api.g_varchar2_table(72) := '202020202020202020202A0D0A202020202020202020202020202A2041667465722074686520626F6C642F6974616C696320636F6E76657273696F6E2C207765206465636F646520616761696E3B2073696E6365202251222077617320656E636F646564';
wwv_flow_api.g_varchar2_table(73) := '0D0A202020202020202020202020202A20616C6F6E677369646520616C6C206E6F6E2D617363696920636861726163746572732028617320225142665122292C20616E642074686520636F6E76657273696F6E0D0A202020202020202020202020202A20';
wwv_flow_api.g_varchar2_table(74) := '77696C6C206E6F742067656E6572617465202251222C20746865206F6E6C7920696E7374616E636573206F662074686174206C65747465722073686F756C64206265206F75720D0A202020202020202020202020202A20656E636F646564206368617261';
wwv_flow_api.g_varchar2_table(75) := '63746572732E20416E642073696E63652074686520636F6E76657273696F6E2077696C6C206E6F7420627265616B20776F7264732C207468650D0A202020202020202020202020202A2022512E2E2E51222073686F756C6420616C6C207374696C6C2062';
wwv_flow_api.g_varchar2_table(76) := '6520696E206F6E652070696563652E0D0A202020202020202020202020202A0D0A202020202020202020202020202A205765277265207573696E6720225122206173207468652064656C696D69746572206265636175736520697427732070726F626162';
wwv_flow_api.g_varchar2_table(77) := '6C79206F6E65206F66207468650D0A202020202020202020202020202A2072617265737420636861726163746572732C20616E6420616C736F206265636175736520492063616E2774207468696E6B206F6620616E79207370656369616C206265686176';
wwv_flow_api.g_varchar2_table(78) := '696F720D0A202020202020202020202020202A207468617420776F756C642065766572206265207472696767657265642062792074686973206C65747465722028746F2075736520612073696C6C79206578616D706C652C2069662077650D0A20202020';
wwv_flow_api.g_varchar2_table(79) := '2020202020202020202A2064656C696D69746564207769746820224822206F6E20746865206C65667420616E6420225022206F6E207468652072696768742C207468656E2022CEA82220776F756C642062650D0A202020202020202020202020202A2065';
wwv_flow_api.g_varchar2_table(80) := '6E636F646564206173202248545450222C207768696368206D6179206361757365207370656369616C206265686176696F72292E20546865206C617474657220776F756C64206E6F740D0A202020202020202020202020202A2061637475616C6C792062';
wwv_flow_api.g_varchar2_table(81) := '652061206875676520697373756520666F7220626F6C642F6974616C69632C20627574206D6179206265206966207765206C61746572207573652069740D0A202020202020202020202020202A20696E206F7468657220706C616365732061732077656C';
wwv_flow_api.g_varchar2_table(82) := '6C2E0D0A202020202020202020202020202A202A2F0D0A2020202020202020202020202866756E6374696F6E202829207B0D0A20202020202020202020202020202020766172206C657474657273546861744A617661536372697074446F65734E6F744B';
wwv_flow_api.g_varchar2_table(83) := '6E6F77416E6451203D202F5B515C75303061615C75303062355C75303062615C75303063302D5C75303064365C75303064382D5C75303066365C75303066382D5C75303263315C75303263362D5C75303264315C75303265302D5C75303265345C753032';
wwv_flow_api.g_varchar2_table(84) := '65635C75303265655C75303337302D5C75303337345C75303337362D5C75303337375C75303337612D5C75303337645C75303338365C75303338382D5C75303338615C75303338635C75303338652D5C75303361315C75303361332D5C75303366355C75';
wwv_flow_api.g_varchar2_table(85) := '303366372D5C75303438315C75303438612D5C75303532335C75303533312D5C75303535365C75303535395C75303536312D5C75303538375C75303564302D5C75303565615C75303566302D5C75303566325C75303632312D5C75303634615C75303636';
wwv_flow_api.g_varchar2_table(86) := '302D5C75303636395C75303636652D5C75303636665C75303637312D5C75303664335C75303664355C75303665352D5C75303665365C75303665652D5C75303666635C75303666665C75303731305C75303731322D5C75303732665C75303734642D5C75';
wwv_flow_api.g_varchar2_table(87) := '303761355C75303762315C75303763302D5C75303765615C75303766342D5C75303766355C75303766615C75303930342D5C75303933395C75303933645C75303935305C75303935382D5C75303936315C75303936362D5C75303936665C75303937312D';
wwv_flow_api.g_varchar2_table(88) := '5C75303937325C75303937622D5C75303937665C75303938352D5C75303938635C75303938662D5C75303939305C75303939332D5C75303961385C75303961612D5C75303962305C75303962325C75303962362D5C75303962395C75303962645C753039';
wwv_flow_api.g_varchar2_table(89) := '63655C75303964632D5C75303964645C75303964662D5C75303965315C75303965362D5C75303966315C75306130352D5C75306130615C75306130662D5C75306131305C75306131332D5C75306132385C75306132612D5C75306133305C75306133322D';
wwv_flow_api.g_varchar2_table(90) := '5C75306133335C75306133352D5C75306133365C75306133382D5C75306133395C75306135392D5C75306135635C75306135655C75306136362D5C75306136665C75306137322D5C75306137345C75306138352D5C75306138645C75306138662D5C7530';
wwv_flow_api.g_varchar2_table(91) := '6139315C75306139332D5C75306161385C75306161612D5C75306162305C75306162322D5C75306162335C75306162352D5C75306162395C75306162645C75306164305C75306165302D5C75306165315C75306165362D5C75306165665C75306230352D';
wwv_flow_api.g_varchar2_table(92) := '5C75306230635C75306230662D5C75306231305C75306231332D5C75306232385C75306232612D5C75306233305C75306233322D5C75306233335C75306233352D5C75306233395C75306233645C75306235632D5C75306235645C75306235662D5C7530';
wwv_flow_api.g_varchar2_table(93) := '6236315C75306236362D5C75306236665C75306237315C75306238335C75306238352D5C75306238615C75306238652D5C75306239305C75306239322D5C75306239355C75306239392D5C75306239615C75306239635C75306239652D5C75306239665C';
wwv_flow_api.g_varchar2_table(94) := '75306261332D5C75306261345C75306261382D5C75306261615C75306261652D5C75306262395C75306264305C75306265362D5C75306265665C75306330352D5C75306330635C75306330652D5C75306331305C75306331322D5C75306332385C753063';
wwv_flow_api.g_varchar2_table(95) := '32612D5C75306333335C75306333352D5C75306333395C75306333645C75306335382D5C75306335395C75306336302D5C75306336315C75306336362D5C75306336665C75306338352D5C75306338635C75306338652D5C75306339305C75306339322D';
wwv_flow_api.g_varchar2_table(96) := '5C75306361385C75306361612D5C75306362335C75306362352D5C75306362395C75306362645C75306364655C75306365302D5C75306365315C75306365362D5C75306365665C75306430352D5C75306430635C75306430652D5C75306431305C753064';
wwv_flow_api.g_varchar2_table(97) := '31322D5C75306432385C75306432612D5C75306433395C75306433645C75306436302D5C75306436315C75306436362D5C75306436665C75306437612D5C75306437665C75306438352D5C75306439365C75306439612D5C75306462315C75306462332D';
wwv_flow_api.g_varchar2_table(98) := '5C75306462625C75306462645C75306463302D5C75306463365C75306530312D5C75306533305C75306533322D5C75306533335C75306534302D5C75306534365C75306535302D5C75306535395C75306538312D5C75306538325C75306538345C753065';
wwv_flow_api.g_varchar2_table(99) := '38372D5C75306538385C75306538615C75306538645C75306539342D5C75306539375C75306539392D5C75306539665C75306561312D5C75306561335C75306561355C75306561375C75306561612D5C75306561625C75306561642D5C75306562305C75';
wwv_flow_api.g_varchar2_table(100) := '306562322D5C75306562335C75306562645C75306563302D5C75306563345C75306563365C75306564302D5C75306564395C75306564632D5C75306564645C75306630305C75306632302D5C75306632395C75306634302D5C75306634375C7530663439';
wwv_flow_api.g_varchar2_table(101) := '2D5C75306636635C75306638382D5C75306638625C75313030302D5C75313032615C75313033662D5C75313034395C75313035302D5C75313035355C75313035612D5C75313035645C75313036315C75313036352D5C75313036365C75313036652D5C75';
wwv_flow_api.g_varchar2_table(102) := '313037305C75313037352D5C75313038315C75313038655C75313039302D5C75313039395C75313061302D5C75313063355C75313064302D5C75313066615C75313066635C75313130302D5C75313135395C75313135662D5C75313161325C7531316138';
wwv_flow_api.g_varchar2_table(103) := '2D5C75313166395C75313230302D5C75313234385C75313234612D5C75313234645C75313235302D5C75313235365C75313235385C75313235612D5C75313235645C75313236302D5C75313238385C75313238612D5C75313238645C75313239302D5C75';
wwv_flow_api.g_varchar2_table(104) := '313262305C75313262322D5C75313262355C75313262382D5C75313262655C75313263305C75313263322D5C75313263355C75313263382D5C75313264365C75313264382D5C75313331305C75313331322D5C75313331355C75313331382D5C75313335';
wwv_flow_api.g_varchar2_table(105) := '615C75313338302D5C75313338665C75313361302D5C75313366345C75313430312D5C75313636635C75313636662D5C75313637365C75313638312D5C75313639615C75313661302D5C75313665615C75313730302D5C75313730635C75313730652D5C';
wwv_flow_api.g_varchar2_table(106) := '75313731315C75313732302D5C75313733315C75313734302D5C75313735315C75313736302D5C75313736635C75313736652D5C75313737305C75313738302D5C75313762335C75313764375C75313764635C75313765302D5C75313765395C75313831';
wwv_flow_api.g_varchar2_table(107) := '302D5C75313831395C75313832302D5C75313837375C75313838302D5C75313861385C75313861615C75313930302D5C75313931635C75313934362D5C75313936645C75313937302D5C75313937345C75313938302D5C75313961395C75313963312D5C';
wwv_flow_api.g_varchar2_table(108) := '75313963375C75313964302D5C75313964395C75316130302D5C75316131365C75316230352D5C75316233335C75316234352D5C75316234625C75316235302D5C75316235395C75316238332D5C75316261305C75316261652D5C75316262395C753163';
wwv_flow_api.g_varchar2_table(109) := '30302D5C75316332335C75316334302D5C75316334395C75316334642D5C75316337645C75316430302D5C75316462665C75316530302D5C75316631355C75316631382D5C75316631645C75316632302D5C75316634355C75316634382D5C7531663464';
wwv_flow_api.g_varchar2_table(110) := '5C75316635302D5C75316635375C75316635395C75316635625C75316635645C75316635662D5C75316637645C75316638302D5C75316662345C75316662362D5C75316662635C75316662655C75316663322D5C75316663345C75316663362D5C753166';
wwv_flow_api.g_varchar2_table(111) := '63635C75316664302D5C75316664335C75316664362D5C75316664625C75316665302D5C75316665635C75316666322D5C75316666345C75316666362D5C75316666635C75323033662D5C75323034305C75323035345C75323037315C75323037665C75';
wwv_flow_api.g_varchar2_table(112) := '323039302D5C75323039345C75323130325C75323130375C75323130612D5C75323131335C75323131355C75323131392D5C75323131645C75323132345C75323132365C75323132385C75323132612D5C75323132645C75323132662D5C75323133395C';
wwv_flow_api.g_varchar2_table(113) := '75323133632D5C75323133665C75323134352D5C75323134395C75323134655C75323138332D5C75323138345C75326330302D5C75326332655C75326333302D5C75326335655C75326336302D5C75326336665C75326337312D5C75326337645C753263';
wwv_flow_api.g_varchar2_table(114) := '38302D5C75326365345C75326430302D5C75326432355C75326433302D5C75326436355C75326436665C75326438302D5C75326439365C75326461302D5C75326461365C75326461382D5C75326461655C75326462302D5C75326462365C75326462382D';
wwv_flow_api.g_varchar2_table(115) := '5C75326462655C75326463302D5C75326463365C75326463382D5C75326463655C75326464302D5C75326464365C75326464382D5C75326464655C75326532665C75333030352D5C75333030365C75333033312D5C75333033355C75333033622D5C7533';
wwv_flow_api.g_varchar2_table(116) := '3033635C75333034312D5C75333039365C75333039642D5C75333039665C75333061312D5C75333066615C75333066632D5C75333066665C75333130352D5C75333132645C75333133312D5C75333138655C75333161302D5C75333162375C7533316630';
wwv_flow_api.g_varchar2_table(117) := '2D5C75333166665C75333430302D5C75346462355C75346530302D5C75396663335C75613030302D5C75613438635C75613530302D5C75613630635C75613631302D5C75613632625C75613634302D5C75613635665C75613636322D5C75613636655C75';
wwv_flow_api.g_varchar2_table(118) := '613637662D5C75613639375C75613731372D5C75613731665C75613732322D5C75613738385C75613738622D5C75613738635C75613766622D5C75613830315C75613830332D5C75613830355C75613830372D5C75613830615C75613830632D5C756138';
wwv_flow_api.g_varchar2_table(119) := '32325C75613834302D5C75613837335C75613838322D5C75613862335C75613864302D5C75613864395C75613930302D5C75613932355C75613933302D5C75613934365C75616130302D5C75616132385C75616134302D5C75616134325C75616134342D';
wwv_flow_api.g_varchar2_table(120) := '5C75616134625C75616135302D5C75616135395C75616330302D5C75643761335C75663930302D5C75666132645C75666133302D5C75666136615C75666137302D5C75666164395C75666230302D5C75666230365C75666231332D5C75666231375C7566';
wwv_flow_api.g_varchar2_table(121) := '6231645C75666231662D5C75666232385C75666232612D5C75666233365C75666233382D5C75666233635C75666233655C75666234302D5C75666234315C75666234332D5C75666234345C75666234362D5C75666262315C75666264332D5C7566643364';
wwv_flow_api.g_varchar2_table(122) := '5C75666435302D5C75666438665C75666439322D5C75666463375C75666466302D5C75666466625C75666533332D5C75666533345C75666534642D5C75666534665C75666537302D5C75666537345C75666537362D5C75666566635C75666631302D5C75';
wwv_flow_api.g_varchar2_table(123) := '666631395C75666632312D5C75666633615C75666633665C75666634312D5C75666635615C75666636362D5C75666662655C75666663322D5C75666663375C75666663612D5C75666663665C75666664322D5C75666664375C75666664612D5C75666664';
wwv_flow_api.g_varchar2_table(124) := '635D2F673B0D0A202020202020202020202020202020207661722063705F51203D202251222E63686172436F646541742830293B0D0A202020202020202020202020202020207661722063705F41203D202241222E63686172436F646541742830293B0D';
wwv_flow_api.g_varchar2_table(125) := '0A202020202020202020202020202020207661722063705F5A203D20225A222E63686172436F646541742830293B0D0A2020202020202020202020202020202076617220646973745F5A61203D202261222E63686172436F64654174283029202D206370';
wwv_flow_api.g_varchar2_table(126) := '5F5A202D20313B0D0A0D0A2020202020202020202020202020202061736369696679203D2066756E6374696F6E287465787429207B0D0A202020202020202020202020202020202020202072657475726E20746578742E7265706C616365286C65747465';
wwv_flow_api.g_varchar2_table(127) := '7273546861744A617661536372697074446F65734E6F744B6E6F77416E64512C2066756E6374696F6E20286D29207B0D0A2020202020202020202020202020202020202020202020207661722063203D206D2E63686172436F646541742830293B0D0A20';
wwv_flow_api.g_varchar2_table(128) := '20202020202020202020202020202020202020202020207661722073203D2022223B0D0A20202020202020202020202020202020202020202020202076617220763B0D0A2020202020202020202020202020202020202020202020207768696C65202863';
wwv_flow_api.g_varchar2_table(129) := '203E203029207B0D0A2020202020202020202020202020202020202020202020202020202076203D202863202520353129202B2063705F413B0D0A202020202020202020202020202020202020202020202020202020206966202876203E3D2063705F51';
wwv_flow_api.g_varchar2_table(130) := '290D0A2020202020202020202020202020202020202020202020202020202020202020762B2B3B0D0A202020202020202020202020202020202020202020202020202020206966202876203E2063705F5A290D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(131) := '2020202020202020202020202020202076202B3D20646973745F5A613B0D0A2020202020202020202020202020202020202020202020202020202073203D20537472696E672E66726F6D43686172436F6465287629202B20733B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(132) := '202020202020202020202020202020202020202063203D2063202F203531207C20303B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202072657475726E20225122202B';
wwv_flow_api.g_varchar2_table(133) := '2073202B202251223B0D0A20202020202020202020202020202020202020207D290D0A202020202020202020202020202020207D3B0D0A0D0A20202020202020202020202020202020646561736369696679203D2066756E6374696F6E28746578742920';
wwv_flow_api.g_varchar2_table(134) := '7B0D0A202020202020202020202020202020202020202072657475726E20746578742E7265706C616365282F51285B412D50522D5A612D7A5D7B312C337D29512F672C2066756E6374696F6E20286D2C207329207B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(135) := '20202020202020202020207661722063203D20303B0D0A20202020202020202020202020202020202020202020202076617220763B0D0A202020202020202020202020202020202020202020202020666F7220287661722069203D20303B2069203C2073';
wwv_flow_api.g_varchar2_table(136) := '2E6C656E6774683B20692B2B29207B0D0A2020202020202020202020202020202020202020202020202020202076203D20732E63686172436F646541742869293B0D0A202020202020202020202020202020202020202020202020202020206966202876';
wwv_flow_api.g_varchar2_table(137) := '203E2063705F5A290D0A202020202020202020202020202020202020202020202020202020202020202076202D3D20646973745F5A613B0D0A202020202020202020202020202020202020202020202020202020206966202876203E2063705F51290D0A';
wwv_flow_api.g_varchar2_table(138) := '2020202020202020202020202020202020202020202020202020202020202020762D2D3B0D0A2020202020202020202020202020202020202020202020202020202076202D3D2063705F413B0D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(139) := '20202020202063203D202863202A20353129202B20763B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202072657475726E20537472696E672E66726F6D43686172436F';
wwv_flow_api.g_varchar2_table(140) := '64652863293B0D0A20202020202020202020202020202020202020207D290D0A202020202020202020202020202020207D0D0A2020202020202020202020207D2928293B0D0A20202020202020207D0D0A0D0A2020202020202020766172205F446F4974';
wwv_flow_api.g_varchar2_table(141) := '616C696373416E64426F6C64203D204F5054494F4E532E617374657269736B496E747261576F7264456D706861736973203F205F446F4974616C696373416E64426F6C645F416C6C6F77496E747261776F726457697468417374657269736B203A205F44';
wwv_flow_api.g_varchar2_table(142) := '6F4974616C696373416E64426F6C645374726963743B0D0A0D0A2020202020202020746869732E6D616B6548746D6C203D2066756E6374696F6E20287465787429207B0D0A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F';
wwv_flow_api.g_varchar2_table(143) := '2F204D61696E2066756E6374696F6E2E20546865206F7264657220696E207768696368206F746865722073756273206172652063616C6C656420686572652069730D0A2020202020202020202020202F2F20657373656E7469616C2E204C696E6B20616E';
wwv_flow_api.g_varchar2_table(144) := '6420696D61676520737562737469747574696F6E73206E65656420746F2068617070656E206265666F72650D0A2020202020202020202020202F2F205F4573636170655370656369616C436861727357697468696E546167417474726962757465732829';
wwv_flow_api.g_varchar2_table(145) := '2C20736F207468617420616E79202A2773206F72205F277320696E20746865203C613E0D0A2020202020202020202020202F2F20616E64203C696D673E20746167732067657420656E636F6465642E0D0A2020202020202020202020202F2F0D0A0D0A20';
wwv_flow_api.g_varchar2_table(146) := '20202020202020202020202F2F20546869732077696C6C206F6E6C792068617070656E206966206D616B6548746D6C206F6E207468652073616D6520636F6E76657274657220696E7374616E63652069732063616C6C65642066726F6D206120706C7567';
wwv_flow_api.g_varchar2_table(147) := '696E20686F6F6B2E0D0A2020202020202020202020202F2F20446F6E277420646F20746861742E0D0A20202020202020202020202069662028675F75726C73290D0A202020202020202020202020202020207468726F77206E6577204572726F72282252';
wwv_flow_api.g_varchar2_table(148) := '65637572736976652063616C6C20746F20636F6E7665727465722E6D616B6548746D6C22293B0D0A0D0A2020202020202020202020202F2F20437265617465207468652070726976617465207374617465206F626A656374732E0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(149) := '20202020675F75726C73203D206E657720536176654861736828293B0D0A202020202020202020202020675F7469746C6573203D206E657720536176654861736828293B0D0A202020202020202020202020675F68746D6C5F626C6F636B73203D205B5D';
wwv_flow_api.g_varchar2_table(150) := '3B0D0A202020202020202020202020675F6C6973745F6C6576656C203D20303B0D0A0D0A20202020202020202020202074657874203D20706C7567696E486F6F6B732E707265436F6E76657273696F6E2874657874293B0D0A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(151) := '2020202F2F2061747461636B6C61623A205265706C616365207E2077697468207E540D0A2020202020202020202020202F2F2054686973206C657473207573207573652074696C646520617320616E20657363617065206368617220746F2061766F6964';
wwv_flow_api.g_varchar2_table(152) := '206D6435206861736865730D0A2020202020202020202020202F2F205468652063686F696365206F66206368617261637465722069732061726269747261793B20616E797468696E6720746861742069736E27740D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(153) := '206D6167696320696E204D61726B646F776E2077696C6C20776F726B2E0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F7E2F672C20227E5422293B0D0A0D0A2020202020202020202020202F2F2061747461636B';
wwv_flow_api.g_varchar2_table(154) := '6C61623A205265706C61636520242077697468207E440D0A2020202020202020202020202F2F2052656745787020696E746572707265747320242061732061207370656369616C206368617261637465720D0A2020202020202020202020202F2F207768';
wwv_flow_api.g_varchar2_table(155) := '656E206974277320696E2061207265706C6163656D656E7420737472696E670D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5C242F672C20227E4422293B0D0A0D0A2020202020202020202020202F2F20537461';
wwv_flow_api.g_varchar2_table(156) := '6E64617264697A65206C696E6520656E64696E67730D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5C725C6E2F672C20225C6E22293B202F2F20444F5320746F20556E69780D0A20202020202020202020202074';
wwv_flow_api.g_varchar2_table(157) := '657874203D20746578742E7265706C616365282F5C722F672C20225C6E22293B202F2F204D616320746F20556E69780D0A0D0A2020202020202020202020202F2F204D616B652073757265207465787420626567696E7320616E6420656E647320776974';
wwv_flow_api.g_varchar2_table(158) := '68206120636F75706C65206F66206E65776C696E65733A0D0A20202020202020202020202074657874203D20225C6E5C6E22202B2074657874202B20225C6E5C6E223B0D0A0D0A2020202020202020202020202F2F20436F6E7665727420616C6C207461';
wwv_flow_api.g_varchar2_table(159) := '627320746F207370616365732E0D0A20202020202020202020202074657874203D205F44657461622874657874293B0D0A0D0A2020202020202020202020202F2F20537472697020616E79206C696E657320636F6E73697374696E67206F6E6C79206F66';
wwv_flow_api.g_varchar2_table(160) := '2073706163657320616E6420746162732E0D0A2020202020202020202020202F2F2054686973206D616B65732073756273657175656E74207265676578656E2065617369657220746F2077726974652C20626563617573652077652063616E0D0A202020';
wwv_flow_api.g_varchar2_table(161) := '2020202020202020202F2F206D6174636820636F6E736563757469766520626C616E6B206C696E65732077697468202F5C6E2B2F20696E7374656164206F6620736F6D657468696E670D0A2020202020202020202020202F2F20636F6E746F7274656420';
wwv_flow_api.g_varchar2_table(162) := '6C696B65202F5B205C745D2A5C6E2B2F202E0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E5B205C745D2B242F6D672C202222293B0D0A0D0A20202020202020202020202074657874203D20706C7567696E48';
wwv_flow_api.g_varchar2_table(163) := '6F6F6B732E706F73744E6F726D616C697A6174696F6E2874657874293B0D0A0D0A2020202020202020202020202F2F205475726E20626C6F636B2D6C6576656C2048544D4C20626C6F636B7320696E746F206861736820656E74726965730D0A20202020';
wwv_flow_api.g_varchar2_table(164) := '202020202020202074657874203D205F4861736848544D4C426C6F636B732874657874293B0D0A0D0A2020202020202020202020202F2F205374726970206C696E6B20646566696E6974696F6E732C2073746F726520696E206861736865732E0D0A2020';
wwv_flow_api.g_varchar2_table(165) := '2020202020202020202074657874203D205F53747269704C696E6B446566696E6974696F6E732874657874293B0D0A0D0A20202020202020202020202074657874203D205F52756E426C6F636B47616D75742874657874293B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(166) := '202020202074657874203D205F556E6573636170655370656369616C43686172732874657874293B0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A20526573746F726520646F6C6C6172207369676E730D0A2020202020202020';
wwv_flow_api.g_varchar2_table(167) := '2020202074657874203D20746578742E7265706C616365282F7E442F672C2022242422293B0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A20526573746F72652074696C6465730D0A2020202020202020202020207465787420';
wwv_flow_api.g_varchar2_table(168) := '3D20746578742E7265706C616365282F7E542F672C20227E22293B0D0A0D0A20202020202020202020202074657874203D20706C7567696E486F6F6B732E706F7374436F6E76657273696F6E2874657874293B0D0A0D0A20202020202020202020202067';
wwv_flow_api.g_varchar2_table(169) := '5F68746D6C5F626C6F636B73203D20675F7469746C6573203D20675F75726C73203D206E756C6C3B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D3B0D0A0D0A202020202020202066756E6374696F6E';
wwv_flow_api.g_varchar2_table(170) := '205F53747269704C696E6B446566696E6974696F6E73287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20537472697073206C696E6B20646566696E6974696F6E732066726F6D20746578742C207374';
wwv_flow_api.g_varchar2_table(171) := '6F726573207468652055524C7320616E64207469746C657320696E0D0A2020202020202020202020202F2F2068617368207265666572656E6365732E0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2F204C696E6B20';
wwv_flow_api.g_varchar2_table(172) := '646566732061726520696E2074686520666F726D3A205E5B69645D3A2075726C20226F7074696F6E616C207469746C65220D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C6163';
wwv_flow_api.g_varchar2_table(173) := '65282F0D0A202020202020202020202020205E5B205D7B302C337D5C5B285B5E5C5B5C5D5D2B295C5D3A20202F2F206964203D202431202061747461636B6C61623A20675F7461625F7769647468202D20310D0A202020202020202020202020205B205C';
wwv_flow_api.g_varchar2_table(174) := '745D2A0D0A202020202020202020202020205C6E3F20202020202020202020202020202020202F2F206D61796265202A6F6E652A206E65776C696E650D0A202020202020202020202020205B205C745D2A0D0A202020202020202020202020203C3F285C';
wwv_flow_api.g_varchar2_table(175) := '532B3F293E3F202020202020202020202F2F2075726C203D2024320D0A20202020202020202020202020283F3D5C737C24292020202020202020202020202F2F206C6F6F6B616865616420666F72207768697465737061636520696E7374656164206F66';
wwv_flow_api.g_varchar2_table(176) := '20746865206C6F6F6B626568696E642072656D6F7665642062656C6F770D0A202020202020202020202020205B205C745D2A0D0A202020202020202020202020205C6E3F20202020202020202020202020202020202F2F206D61796265206F6E65206E65';
wwv_flow_api.g_varchar2_table(177) := '776C696E650D0A202020202020202020202020205B205C745D2A0D0A2020202020202020202020202028202020202020202020202020202020202020202F2F2028706F74656E7469616C29207469746C65203D2024330D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(178) := '20285C6E2A2920202020202020202020202F2F20616E79206C696E657320736B6970706564203D2024342061747461636B6C61623A206C6F6F6B626568696E642072656D6F7665640D0A202020202020202020202020205B205C745D2B0D0A2020202020';
wwv_flow_api.g_varchar2_table(179) := '20202020202020205B22285D0D0A20202020202020202020202020282E2B3F2920202020202020202020202F2F207469746C65203D2024350D0A202020202020202020202020205B22295D0D0A202020202020202020202020205B205C745D2A0D0A2020';
wwv_flow_api.g_varchar2_table(180) := '2020202020202020202020293F2020202020202020202020202020202020202F2F207469746C65206973206F7074696F6E616C0D0A20202020202020202020202020285C6E2B29202020202020202020202020202F2F2073756273657175656E74206E65';
wwv_flow_api.g_varchar2_table(181) := '776C696E6573203D2024362C20636170747572696E6720626563617573652074686579206D75737420626520707574206261636B2069662074686520706F74656E7469616C207469746C652069736E277420616E2061637475616C207469746C650D0A20';
wwv_flow_api.g_varchar2_table(182) := '2020202020202020202020202F676D2C2066756E6374696F6E28297B2E2E2E7D293B0D0A202020202020202020202020202A2F0D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E5B205D7B302C337D5C5B28';
wwv_flow_api.g_varchar2_table(183) := '5B5E5C5B5C5D5D2B295C5D3A5B205C745D2A5C6E3F5B205C745D2A3C3F285C532B3F293E3F283F3D5C737C24295B205C745D2A5C6E3F5B205C745D2A28285C6E2A295B22285D282E2B3F295B22295D5B205C745D2A293F285C6E2B292F676D2C0D0A2020';
wwv_flow_api.g_varchar2_table(184) := '202020202020202020202020202066756E6374696F6E202877686F6C654D617463682C206D312C206D322C206D332C206D342C206D352C206D3629207B0D0A20202020202020202020202020202020202020206D31203D206D312E746F4C6F7765724361';
wwv_flow_api.g_varchar2_table(185) := '736528293B0D0A2020202020202020202020202020202020202020675F75726C732E736574286D312C205F456E636F6465416D7073416E64416E676C6573286D3229293B20202F2F204C696E6B204944732061726520636173652D696E73656E73697469';
wwv_flow_api.g_varchar2_table(186) := '76650D0A2020202020202020202020202020202020202020696620286D3429207B0D0A2020202020202020202020202020202020202020202020202F2F204F6F70732C20666F756E6420626C616E6B206C696E65732C20736F2069742773206E6F742061';
wwv_flow_api.g_varchar2_table(187) := '207469746C652E0D0A2020202020202020202020202020202020202020202020202F2F20507574206261636B2074686520706172656E746865746963616C2073746174656D656E742077652073746F6C652E0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(188) := '202020202020202072657475726E206D33202B206D363B0D0A20202020202020202020202020202020202020207D20656C736520696620286D3529207B0D0A202020202020202020202020202020202020202020202020675F7469746C65732E73657428';
wwv_flow_api.g_varchar2_table(189) := '6D312C206D352E7265706C616365282F222F672C20222671756F743B2229293B0D0A20202020202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020202020202F2F20436F6D706C6574656C792072656D6F766520';
wwv_flow_api.g_varchar2_table(190) := '74686520646566696E6974696F6E2066726F6D2074686520746578740D0A202020202020202020202020202020202020202072657475726E2022223B0D0A202020202020202020202020202020207D0D0A202020202020202020202020293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(191) := '202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F4861736848544D4C426C6F636B73287465787429207B0D0A0D0A2020202020202020202020202F2F20486173';
wwv_flow_api.g_varchar2_table(192) := '686966792048544D4C20626C6F636B733A0D0A2020202020202020202020202F2F205765206F6E6C792077616E7420746F20646F207468697320666F7220626C6F636B2D6C6576656C2048544D4C20746167732C20737563682061732068656164657273';
wwv_flow_api.g_varchar2_table(193) := '2C0D0A2020202020202020202020202F2F206C697374732C20616E64207461626C65732E205468617427732062656361757365207765207374696C6C2077616E7420746F2077726170203C703E732061726F756E640D0A2020202020202020202020202F';
wwv_flow_api.g_varchar2_table(194) := '2F20227061726167726170687322207468617420617265207772617070656420696E206E6F6E2D626C6F636B2D6C6576656C20746167732C207375636820617320616E63686F72732C0D0A2020202020202020202020202F2F2070687261736520656D70';
wwv_flow_api.g_varchar2_table(195) := '68617369732C20616E64207370616E732E20546865206C697374206F662074616773207765277265206C6F6F6B696E6720666F722069730D0A2020202020202020202020202F2F20686172642D636F6465643A0D0A202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(196) := '20626C6F636B5F746167735F61203D2022707C6469767C685B312D365D7C626C6F636B71756F74657C7072657C7461626C657C646C7C6F6C7C756C7C7363726970747C6E6F7363726970747C666F726D7C6669656C647365747C696672616D657C6D6174';
wwv_flow_api.g_varchar2_table(197) := '687C696E737C64656C223B0D0A20202020202020202020202076617220626C6F636B5F746167735F62203D2022707C6469767C685B312D365D7C626C6F636B71756F74657C7072657C7461626C657C646C7C6F6C7C756C7C7363726970747C6E6F736372';
wwv_flow_api.g_varchar2_table(198) := '6970747C666F726D7C6669656C647365747C696672616D657C6D617468223B0D0A0D0A2020202020202020202020202F2F2046697273742C206C6F6F6B20666F72206E657374656420626C6F636B732C20652E672E3A0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(199) := '2F2F2020203C6469763E0D0A2020202020202020202020202F2F20202020203C6469763E0D0A2020202020202020202020202F2F20202020207461677320666F7220696E6E657220626C6F636B206D75737420626520696E64656E7465642E0D0A202020';
wwv_flow_api.g_varchar2_table(200) := '2020202020202020202F2F20202020203C2F6469763E0D0A2020202020202020202020202F2F2020203C2F6469763E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20546865206F757465726D6F73742074616773206D';
wwv_flow_api.g_varchar2_table(201) := '75737420737461727420617420746865206C656674206D617267696E20666F72207468697320746F206D617463682C20616E640D0A2020202020202020202020202F2F2074686520696E6E6572206E65737465642064697673206D75737420626520696E';
wwv_flow_api.g_varchar2_table(202) := '64656E7465642E0D0A2020202020202020202020202F2F205765206E65656420746F20646F2074686973206265666F726520746865206E6578742C206D6F7265206C69626572616C206D617463682C206265636175736520746865206E6578740D0A2020';
wwv_flow_api.g_varchar2_table(203) := '202020202020202020202F2F206D617463682077696C6C2073746172742061742074686520666972737420603C6469763E6020616E642073746F702061742074686520666972737420603C2F6469763E602E0D0A0D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(204) := '2061747461636B6C61623A20546869732072656765782063616E20626520657870656E73697665207768656E206974206661696C732E0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E72';
wwv_flow_api.g_varchar2_table(205) := '65706C616365282F0D0A202020202020202020202020202820202020202020202020202020202020202020202020202F2F207361766520696E2024310D0A202020202020202020202020205E202020202020202020202020202020202020202F2F207374';
wwv_flow_api.g_varchar2_table(206) := '617274206F66206C696E6520202877697468202F6D290D0A202020202020202020202020203C2824626C6F636B5F746167735F6129202020202F2F20737461727420746167203D2024320D0A202020202020202020202020205C62202020202020202020';
wwv_flow_api.g_varchar2_table(207) := '2020202020202020202F2F20776F726420627265616B0D0A202020202020202020202020202F2F2061747461636B6C61623A206861636B2061726F756E64206B68746D6C2F70637265206275672E2E2E0D0A202020202020202020202020205B5E5C725D';
wwv_flow_api.g_varchar2_table(208) := '2A3F5C6E20202020202020202020202F2F20616E79206E756D626572206F66206C696E65732C206D696E696D616C6C79206D61746368696E670D0A202020202020202020202020203C2F5C323E2020202020202020202020202020202F2F20746865206D';
wwv_flow_api.g_varchar2_table(209) := '61746368696E6720656E64207461670D0A202020202020202020202020205B205C745D2A20202020202020202020202020202F2F20747261696C696E67207370616365732F746162730D0A20202020202020202020202020283F3D5C6E2B292020202020';
wwv_flow_api.g_varchar2_table(210) := '20202020202020202F2F20666F6C6C6F7765642062792061206E65776C696E650D0A202020202020202020202020202920202020202020202020202020202020202020202020202F2F2061747461636B6C61623A207468657265206172652073656E7469';
wwv_flow_api.g_varchar2_table(211) := '6E656C206E65776C696E657320617420656E64206F6620646F63756D656E740D0A202020202020202020202020202F676D2C66756E6374696F6E28297B2E2E2E7D7D3B0D0A202020202020202020202020202A2F0D0A2020202020202020202020207465';
wwv_flow_api.g_varchar2_table(212) := '7874203D20746578742E7265706C616365282F5E283C28707C6469767C685B312D365D7C626C6F636B71756F74657C7072657C7461626C657C646C7C6F6C7C756C7C7363726970747C6E6F7363726970747C666F726D7C6669656C647365747C69667261';
wwv_flow_api.g_varchar2_table(213) := '6D657C6D6174687C696E737C64656C295C625B5E5C725D2A3F5C6E3C5C2F5C323E5B205C745D2A283F3D5C6E2B29292F676D2C20686173684D61746368293B0D0A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F204E6F';
wwv_flow_api.g_varchar2_table(214) := '77206D61746368206D6F7265206C69626572616C6C792C2073696D706C792066726F6D20605C6E3C7461673E6020746F20603C2F7461673E5C6E600D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2A0D0A2020202020';
wwv_flow_api.g_varchar2_table(215) := '202020202020202074657874203D20746578742E7265706C616365282F0D0A202020202020202020202020202820202020202020202020202020202020202020202020202F2F207361766520696E2024310D0A202020202020202020202020205E202020';
wwv_flow_api.g_varchar2_table(216) := '202020202020202020202020202020202F2F207374617274206F66206C696E6520202877697468202F6D290D0A202020202020202020202020203C2824626C6F636B5F746167735F6229202020202F2F20737461727420746167203D2024320D0A202020';
wwv_flow_api.g_varchar2_table(217) := '202020202020202020205C622020202020202020202020202020202020202F2F20776F726420627265616B0D0A202020202020202020202020202F2F2061747461636B6C61623A206861636B2061726F756E64206B68746D6C2F70637265206275672E2E';
wwv_flow_api.g_varchar2_table(218) := '2E0D0A202020202020202020202020205B5E5C725D2A3F202020202020202020202020202F2F20616E79206E756D626572206F66206C696E65732C206D696E696D616C6C79206D61746368696E670D0A202020202020202020202020202E2A3C2F5C323E';
wwv_flow_api.g_varchar2_table(219) := '202020202020202020202020202F2F20746865206D61746368696E6720656E64207461670D0A202020202020202020202020205B205C745D2A20202020202020202020202020202F2F20747261696C696E67207370616365732F746162730D0A20202020';
wwv_flow_api.g_varchar2_table(220) := '202020202020202020283F3D5C6E2B29202020202020202020202020202F2F20666F6C6C6F7765642062792061206E65776C696E650D0A202020202020202020202020202920202020202020202020202020202020202020202020202F2F206174746163';
wwv_flow_api.g_varchar2_table(221) := '6B6C61623A207468657265206172652073656E74696E656C206E65776C696E657320617420656E64206F6620646F63756D656E740D0A202020202020202020202020202F676D2C66756E6374696F6E28297B2E2E2E7D7D3B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(222) := '2020202A2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E283C28707C6469767C685B312D365D7C626C6F636B71756F74657C7072657C7461626C657C646C7C6F6C7C756C7C7363726970747C6E6F73637269';
wwv_flow_api.g_varchar2_table(223) := '70747C666F726D7C6669656C647365747C696672616D657C6D617468295C625B5E5C725D2A3F2E2A3C5C2F5C323E5B205C745D2A283F3D5C6E2B295C6E292F676D2C20686173684D61746368293B0D0A0D0A2020202020202020202020202F2F20537065';
wwv_flow_api.g_varchar2_table(224) := '6369616C2063617365206A75737420666F72203C6872202F3E2E204974207761732065617369657220746F206D616B652061207370656369616C2063617365207468616E0D0A2020202020202020202020202F2F20746F206D616B6520746865206F7468';
wwv_flow_api.g_varchar2_table(225) := '6572207265676578206D6F726520636F6D706C6963617465642E0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A202020202020202020202020205C6E202020';
wwv_flow_api.g_varchar2_table(226) := '2020202020202020202020202020202F2F205374617274696E67206166746572206120626C616E6B206C696E650D0A202020202020202020202020205B205D7B302C337D0D0A202020202020202020202020202820202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(227) := '2020202F2F207361766520696E2024310D0A20202020202020202020202020283C28687229202020202020202020202F2F20737461727420746167203D2024320D0A202020202020202020202020205C62202020202020202020202F2F20776F72642062';
wwv_flow_api.g_varchar2_table(228) := '7265616B0D0A20202020202020202020202020285B5E3C3E5D292A3F0D0A202020202020202020202020205C2F3F3E2920202020202020202020202F2F20746865206D61746368696E6720656E64207461670D0A202020202020202020202020205B205C';
wwv_flow_api.g_varchar2_table(229) := '745D2A0D0A20202020202020202020202020283F3D5C6E7B322C7D292020202020202F2F20666F6C6C6F776564206279206120626C616E6B206C696E650D0A20202020202020202020202020290D0A202020202020202020202020202F672C686173684D';
wwv_flow_api.g_varchar2_table(230) := '61746368293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5C6E5B205D7B302C337D28283C286872295C62285B5E3C3E5D292A3F5C2F3F3E295B205C745D2A283F3D';
wwv_flow_api.g_varchar2_table(231) := '5C6E7B322C7D29292F672C20686173684D61746368293B0D0A0D0A2020202020202020202020202F2F205370656369616C206361736520666F72207374616E64616C6F6E652048544D4C20636F6D6D656E74733A0D0A0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(232) := '2F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A202020202020202020202020205C6E5C6E20202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(233) := '202F2F205374617274696E67206166746572206120626C616E6B206C696E650D0A202020202020202020202020205B205D7B302C337D202020202020202020202020202020202020202020202020202020202020202020202020202020202F2F20617474';
wwv_flow_api.g_varchar2_table(234) := '61636B6C61623A20675F7461625F7769647468202D20310D0A202020202020202020202020202820202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202F2F207361766520696E2024310D';
wwv_flow_api.g_varchar2_table(235) := '0A202020202020202020202020203C210D0A20202020202020202020202020282D2D283F3A7C283F3A5B5E3E2D5D7C2D5B5E3E5D29283F3A5B5E2D5D7C2D5B5E2D5D292A292D2D292020202F2F2073656520687474703A2F2F7777772E77332E6F72672F';
wwv_flow_api.g_varchar2_table(236) := '54522F68746D6C2D6D61726B75702F73796E7461782E68746D6C23636F6D6D656E747320616E6420687474703A2F2F6D6574612E737461636B65786368616E67652E636F6D2F712F39353235360D0A202020202020202020202020203E0D0A2020202020';
wwv_flow_api.g_varchar2_table(237) := '20202020202020205B205C745D2A0D0A20202020202020202020202020283F3D5C6E7B322C7D29202020202020202020202020202020202020202020202020202020202020202020202F2F20666F6C6C6F776564206279206120626C616E6B206C696E65';
wwv_flow_api.g_varchar2_table(238) := '0D0A20202020202020202020202020290D0A202020202020202020202020202F672C686173684D61746368293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5C6E5C';
wwv_flow_api.g_varchar2_table(239) := '6E5B205D7B302C337D283C21282D2D283F3A7C283F3A5B5E3E2D5D7C2D5B5E3E5D29283F3A5B5E2D5D7C2D5B5E2D5D292A292D2D293E5B205C745D2A283F3D5C6E7B322C7D29292F672C20686173684D61746368293B0D0A0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(240) := '20202F2F2050485020616E64204153502D7374796C652070726F636573736F7220696E737472756374696F6E7320283C3F2E2E2E3F3E20616E64203C252E2E2E253E290D0A0D0A2020202020202020202020202F2A0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(241) := '74657874203D20746578742E7265706C616365282F0D0A20202020202020202020202020283F3A0D0A202020202020202020202020205C6E5C6E2020202020202020202020202F2F205374617274696E67206166746572206120626C616E6B206C696E65';
wwv_flow_api.g_varchar2_table(242) := '0D0A20202020202020202020202020290D0A2020202020202020202020202028202020202020202020202020202020202020202F2F207361766520696E2024310D0A202020202020202020202020205B205D7B302C337D20202020202020202F2F206174';
wwv_flow_api.g_varchar2_table(243) := '7461636B6C61623A20675F7461625F7769647468202D20310D0A20202020202020202020202020283F3A0D0A202020202020202020202020203C285B3F255D2920202020202F2F2024320D0A202020202020202020202020205B5E5C725D2A3F0D0A2020';
wwv_flow_api.g_varchar2_table(244) := '20202020202020202020205C323E0D0A20202020202020202020202020290D0A202020202020202020202020205B205C745D2A0D0A20202020202020202020202020283F3D5C6E7B322C7D292020202020202F2F20666F6C6C6F77656420627920612062';
wwv_flow_api.g_varchar2_table(245) := '6C616E6B206C696E650D0A20202020202020202020202020290D0A202020202020202020202020202F672C686173684D61746368293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202074657874203D20746578742E726570';
wwv_flow_api.g_varchar2_table(246) := '6C616365282F283F3A5C6E5C6E29285B205D7B302C337D283F3A3C285B3F255D295B5E5C725D2A3F5C323E295B205C745D2A283F3D5C6E7B322C7D29292F672C20686173684D61746368293B0D0A0D0A20202020202020202020202072657475726E2074';
wwv_flow_api.g_varchar2_table(247) := '6578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E2068617368426C6F636B287465787429207B0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F285E5C6E2B7C5C6E2B24292F';
wwv_flow_api.g_varchar2_table(248) := '672C202222293B0D0A2020202020202020202020202F2F205265706C6163652074686520656C656D656E74207465787420776974682061206D61726B65722028227E4B784B22207768657265207820697320697473206B6579290D0A2020202020202020';
wwv_flow_api.g_varchar2_table(249) := '2020202072657475726E20225C6E5C6E7E4B22202B2028675F68746D6C5F626C6F636B732E70757368287465787429202D203129202B20224B5C6E5C6E223B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E20686173684D';
wwv_flow_api.g_varchar2_table(250) := '617463682877686F6C654D617463682C206D3129207B0D0A20202020202020202020202072657475726E2068617368426C6F636B286D31293B0D0A20202020202020207D0D0A0D0A202020202020202076617220626C6F636B47616D7574486F6F6B4361';
wwv_flow_api.g_varchar2_table(251) := '6C6C6261636B203D2066756E6374696F6E20287429207B2072657475726E205F52756E426C6F636B47616D75742874293B207D3B0D0A0D0A202020202020202066756E6374696F6E205F52756E426C6F636B47616D757428746578742C20646F4E6F7455';
wwv_flow_api.g_varchar2_table(252) := '6E686173682C20646F4E6F744372656174655061726167726170687329207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2054686573652061726520616C6C20746865207472616E73666F726D6174696F6E73207468';
wwv_flow_api.g_varchar2_table(253) := '617420666F726D20626C6F636B2D6C6576656C0D0A2020202020202020202020202F2F2074616773206C696B6520706172616772617068732C20686561646572732C20616E64206C697374206974656D732E0D0A2020202020202020202020202F2F0D0A';
wwv_flow_api.g_varchar2_table(254) := '0D0A20202020202020202020202074657874203D20706C7567696E486F6F6B732E707265426C6F636B47616D757428746578742C20626C6F636B47616D7574486F6F6B43616C6C6261636B293B0D0A0D0A20202020202020202020202074657874203D20';
wwv_flow_api.g_varchar2_table(255) := '5F446F486561646572732874657874293B0D0A0D0A2020202020202020202020202F2F20446F20486F72697A6F6E74616C2052756C65733A0D0A202020202020202020202020766172207265706C6163656D656E74203D20223C6872202F3E5C6E223B0D';
wwv_flow_api.g_varchar2_table(256) := '0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E5B205D7B302C327D285B205D3F5C2A5B205D3F297B332C7D5B205C745D2A242F676D2C207265706C6163656D656E74293B0D0A2020202020202020202020207465';
wwv_flow_api.g_varchar2_table(257) := '7874203D20746578742E7265706C616365282F5E5B205D7B302C327D285B205D3F2D5B205D3F297B332C7D5B205C745D2A242F676D2C207265706C6163656D656E74293B0D0A20202020202020202020202074657874203D20746578742E7265706C6163';
wwv_flow_api.g_varchar2_table(258) := '65282F5E5B205D7B302C327D285B205D3F5F5B205D3F297B332C7D5B205C745D2A242F676D2C207265706C6163656D656E74293B0D0A0D0A20202020202020202020202074657874203D205F446F4C697374732874657874293B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(259) := '2020202074657874203D205F446F436F6465426C6F636B732874657874293B0D0A20202020202020202020202074657874203D205F446F426C6F636B51756F7465732874657874293B0D0A0D0A20202020202020202020202074657874203D20706C7567';
wwv_flow_api.g_varchar2_table(260) := '696E486F6F6B732E706F7374426C6F636B47616D757428746578742C20626C6F636B47616D7574486F6F6B43616C6C6261636B293B0D0A0D0A2020202020202020202020202F2F20576520616C72656164792072616E205F4861736848544D4C426C6F63';
wwv_flow_api.g_varchar2_table(261) := '6B732829206265666F72652C20696E204D61726B646F776E28292C2062757420746861740D0A2020202020202020202020202F2F2077617320746F20657363617065207261772048544D4C20696E20746865206F726967696E616C204D61726B646F776E';
wwv_flow_api.g_varchar2_table(262) := '20736F757263652E20546869732074696D652C0D0A2020202020202020202020202F2F207765277265206573636170696E6720746865206D61726B7570207765277665206A75737420637265617465642C20736F207468617420776520646F6E27742077';
wwv_flow_api.g_varchar2_table(263) := '7261700D0A2020202020202020202020202F2F203C703E20746167732061726F756E6420626C6F636B2D6C6576656C20746167732E0D0A20202020202020202020202074657874203D205F4861736848544D4C426C6F636B732874657874293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(264) := '20202020202020202020202074657874203D205F466F726D5061726167726170687328746578742C20646F4E6F74556E686173682C20646F4E6F7443726561746550617261677261706873293B0D0A0D0A20202020202020202020202072657475726E20';
wwv_flow_api.g_varchar2_table(265) := '746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F52756E5370616E47616D7574287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20546865736520617265';
wwv_flow_api.g_varchar2_table(266) := '20616C6C20746865207472616E73666F726D6174696F6E732074686174206F63637572202A77697468696E2A20626C6F636B2D6C6576656C0D0A2020202020202020202020202F2F2074616773206C696B6520706172616772617068732C206865616465';
wwv_flow_api.g_varchar2_table(267) := '72732C20616E64206C697374206974656D732E0D0A2020202020202020202020202F2F0D0A0D0A20202020202020202020202074657874203D20706C7567696E486F6F6B732E7072655370616E47616D75742874657874293B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(268) := '202020202074657874203D205F446F436F64655370616E732874657874293B0D0A20202020202020202020202074657874203D205F4573636170655370656369616C436861727357697468696E546167417474726962757465732874657874293B0D0A20';
wwv_flow_api.g_varchar2_table(269) := '202020202020202020202074657874203D205F456E636F64654261636B736C617368457363617065732874657874293B0D0A0D0A2020202020202020202020202F2F2050726F6365737320616E63686F7220616E6420696D61676520746167732E20496D';
wwv_flow_api.g_varchar2_table(270) := '61676573206D75737420636F6D652066697273742C0D0A2020202020202020202020202F2F206265636175736520215B666F6F5D5B665D206C6F6F6B73206C696B6520616E20616E63686F722E0D0A20202020202020202020202074657874203D205F44';
wwv_flow_api.g_varchar2_table(271) := '6F496D616765732874657874293B0D0A20202020202020202020202074657874203D205F446F416E63686F72732874657874293B0D0A0D0A2020202020202020202020202F2F204D616B65206C696E6B73206F7574206F66207468696E6773206C696B65';
wwv_flow_api.g_varchar2_table(272) := '20603C687474703A2F2F6578616D706C652E636F6D2F3E600D0A2020202020202020202020202F2F204D75737420636F6D65206166746572205F446F416E63686F727328292C206265636175736520796F752063616E20757365203C20616E64203E0D0A';
wwv_flow_api.g_varchar2_table(273) := '2020202020202020202020202F2F2064656C696D697465727320696E20696E6C696E65206C696E6B73206C696B65205B746869735D283C75726C3E292E0D0A20202020202020202020202074657874203D205F446F4175746F4C696E6B73287465787429';
wwv_flow_api.g_varchar2_table(274) := '3B0D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F7E502F672C20223A2F2F22293B202F2F2070757420696E20706C61636520746F2070726576656E74206175746F6C696E6B696E673B207265736574206E6F';
wwv_flow_api.g_varchar2_table(275) := '770D0A0D0A20202020202020202020202074657874203D205F456E636F6465416D7073416E64416E676C65732874657874293B0D0A20202020202020202020202074657874203D205F446F4974616C696373416E64426F6C642874657874293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(276) := '2020202020202020202020202F2F20446F206861726420627265616B733A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F20202B5C6E2F672C2022203C62723E5C6E22293B0D0A0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(277) := '2074657874203D20706C7567696E486F6F6B732E706F73745370616E47616D75742874657874293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(278) := '5F4573636170655370656369616C436861727357697468696E54616741747472696275746573287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2057697468696E2074616773202D2D206D65616E696E';
wwv_flow_api.g_varchar2_table(279) := '67206265747765656E203C20616E64203E202D2D20656E636F6465205B5C2060202A205F5D20736F20746865790D0A2020202020202020202020202F2F20646F6E277420636F6E666C69637420776974682074686569722075736520696E204D61726B64';
wwv_flow_api.g_varchar2_table(280) := '6F776E20666F7220636F64652C206974616C69637320616E64207374726F6E672E0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2F204275696C64206120726567657820746F2066696E642048544D4C207461677320';
wwv_flow_api.g_varchar2_table(281) := '616E6420636F6D6D656E74732E20205365652046726965646C27730D0A2020202020202020202020202F2F20224D6173746572696E6720526567756C61722045787072657373696F6E73222C20326E642045642E2C2070702E203230302D3230312E0D0A';
wwv_flow_api.g_varchar2_table(282) := '0D0A2020202020202020202020202F2F2053453A206368616E6765642074686520636F6D6D656E742070617274206F66207468652072656765780D0A0D0A202020202020202020202020766172207265676578203D202F283C5B612D7A5C2F21245D2822';
wwv_flow_api.g_varchar2_table(283) := '5B5E225D2A227C275B5E275D2A277C5B5E27223E5D292A3E7C3C21282D2D283F3A7C283F3A5B5E3E2D5D7C2D5B5E3E5D29283F3A5B5E2D5D7C2D5B5E2D5D292A292D2D293E292F67693B0D0A0D0A20202020202020202020202074657874203D20746578';
wwv_flow_api.g_varchar2_table(284) := '742E7265706C6163652872656765782C2066756E6374696F6E202877686F6C654D6174636829207B0D0A2020202020202020202020202020202076617220746167203D2077686F6C654D617463682E7265706C616365282F282E293C5C2F3F636F64653E';
wwv_flow_api.g_varchar2_table(285) := '283F3D2E292F672C202224316022293B0D0A20202020202020202020202020202020746167203D2065736361706543686172616374657273287461672C2077686F6C654D617463682E636861724174283129203D3D20222122203F20225C5C602A5F2F22';
wwv_flow_api.g_varchar2_table(286) := '203A20225C5C602A5F22293B202F2F20616C736F2065736361706520736C617368657320696E20636F6D6D656E747320746F2070726576656E74206175746F6C696E6B696E67207468657265202D2D20687474703A2F2F6D6574612E737461636B657863';
wwv_flow_api.g_varchar2_table(287) := '68616E67652E636F6D2F7175657374696F6E732F39353938370D0A2020202020202020202020202020202072657475726E207461673B0D0A2020202020202020202020207D293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D';
wwv_flow_api.g_varchar2_table(288) := '0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F446F416E63686F7273287465787429207B0D0A0D0A20202020202020202020202069662028746578742E696E6465784F6628225B2229203D3D3D202D31290D0A20202020';
wwv_flow_api.g_varchar2_table(289) := '20202020202020202020202072657475726E20746578743B0D0A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F205475726E204D61726B646F776E206C696E6B2073686F72746375747320696E746F205848544D4C203C';
wwv_flow_api.g_varchar2_table(290) := '613E20746167732E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2046697273742C2068616E646C65207265666572656E63652D7374796C65206C696E6B733A205B6C696E6B20';
wwv_flow_api.g_varchar2_table(291) := '746578745D205B69645D0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A202020202020202020202020202820202020';
wwv_flow_api.g_varchar2_table(292) := '20202020202020202020202020202020202020202020202F2F20777261702077686F6C65206D6174636820696E2024310D0A202020202020202020202020205C5B0D0A20202020202020202020202020280D0A20202020202020202020202020283F3A0D';
wwv_flow_api.g_varchar2_table(293) := '0A202020202020202020202020205C5B5B5E5C5D5D2A5C5D2020202020202F2F20616C6C6F7720627261636B657473206E6573746564206F6E65206C6576656C0D0A202020202020202020202020207C0D0A202020202020202020202020205B5E5C5B5D';
wwv_flow_api.g_varchar2_table(294) := '20202020202020202020202F2F206F7220616E797468696E6720656C73650D0A20202020202020202020202020292A0D0A20202020202020202020202020290D0A202020202020202020202020205C5D0D0A0D0A202020202020202020202020205B205D';
wwv_flow_api.g_varchar2_table(295) := '3F20202020202020202020202020202020202020202F2F206F6E65206F7074696F6E616C2073706163650D0A20202020202020202020202020283F3A5C6E5B205D2A293F202020202020202020202020202F2F206F6E65206F7074696F6E616C206E6577';
wwv_flow_api.g_varchar2_table(296) := '6C696E6520666F6C6C6F776564206279207370616365730D0A0D0A202020202020202020202020205C5B0D0A20202020202020202020202020282E2A3F29202020202020202020202020202020202020202F2F206964203D2024330D0A20202020202020';
wwv_flow_api.g_varchar2_table(297) := '2020202020205C5D0D0A20202020202020202020202020290D0A20202020202020202020202020282928292829282920202020202020202020202020202020202020202F2F207061642072656D61696E696E67206261636B7265666572656E6365730D0A';
wwv_flow_api.g_varchar2_table(298) := '202020202020202020202020202F672C207772697465416E63686F72546167293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F285C5B28283F3A5C5B5B5E5C5D5D2A';
wwv_flow_api.g_varchar2_table(299) := '5C5D7C5B5E5C5B5C5D5D292A295C5D5B205D3F283F3A5C6E5B205D2A293F5C5B282E2A3F295C5D2928292829282928292F672C207772697465416E63686F72546167293B0D0A0D0A2020202020202020202020202F2F0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(300) := '2F2F204E6578742C20696E6C696E652D7374796C65206C696E6B733A205B6C696E6B20746578745D2875726C20226F7074696F6E616C207469746C6522290D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2A0D0A2020';
wwv_flow_api.g_varchar2_table(301) := '202020202020202020202074657874203D20746578742E7265706C616365282F0D0A20202020202020202020202020282020202020202020202020202020202020202020202020202020202F2F20777261702077686F6C65206D6174636820696E202431';
wwv_flow_api.g_varchar2_table(302) := '0D0A202020202020202020202020205C5B0D0A20202020202020202020202020280D0A20202020202020202020202020283F3A0D0A202020202020202020202020205C5B5B5E5C5D5D2A5C5D2020202020202F2F20616C6C6F7720627261636B65747320';
wwv_flow_api.g_varchar2_table(303) := '6E6573746564206F6E65206C6576656C0D0A202020202020202020202020207C0D0A202020202020202020202020205B5E5C5B5C5D5D2020202020202020202F2F206F7220616E797468696E6720656C73650D0A20202020202020202020202020292A0D';
wwv_flow_api.g_varchar2_table(304) := '0A20202020202020202020202020290D0A202020202020202020202020205C5D0D0A202020202020202020202020205C28202020202020202020202020202020202020202020202F2F206C69746572616C20706172656E0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(305) := '20205B205C745D2A0D0A202020202020202020202020202829202020202020202020202020202020202020202020202F2F206E6F2069642C20736F206C6561766520243320656D7074790D0A202020202020202020202020203C3F282020202020202020';
wwv_flow_api.g_varchar2_table(306) := '202020202020202020202020202F2F2068726566203D2024340D0A20202020202020202020202020283F3A0D0A202020202020202020202020205C285B5E295D2A5C29202020202020202F2F20616C6C6F77206F6E65206C6576656C206F662028636F72';
wwv_flow_api.g_varchar2_table(307) := '726563746C79206E65737465642920706172656E7320287468696E6B204D53444E290D0A202020202020202020202020207C0D0A202020202020202020202020205B5E28295C735D0D0A20202020202020202020202020292A3F0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(308) := '2020202020293E3F0D0A202020202020202020202020205B205C745D2A0D0A202020202020202020202020202820202020202020202020202020202020202020202020202F2F2024350D0A20202020202020202020202020285B27225D29202020202020';
wwv_flow_api.g_varchar2_table(309) := '20202020202020202F2F2071756F74652063686172203D2024360D0A20202020202020202020202020282E2A3F292020202020202020202020202020202F2F205469746C65203D2024370D0A202020202020202020202020205C36202020202020202020';
wwv_flow_api.g_varchar2_table(310) := '2020202020202020202F2F206D61746368696E672071756F74650D0A202020202020202020202020205B205C745D2A20202020202020202020202020202F2F2069676E6F726520616E79207370616365732F74616273206265747765656E20636C6F7369';
wwv_flow_api.g_varchar2_table(311) := '6E672071756F746520616E6420290D0A20202020202020202020202020293F202020202020202020202020202020202020202020202F2F207469746C65206973206F7074696F6E616C0D0A202020202020202020202020205C290D0A2020202020202020';
wwv_flow_api.g_varchar2_table(312) := '2020202020290D0A202020202020202020202020202F672C207772697465416E63686F72546167293B0D0A202020202020202020202020202A2F0D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F285C5B2828';
wwv_flow_api.g_varchar2_table(313) := '3F3A5C5B5B5E5C5D5D2A5C5D7C5B5E5C5B5C5D5D292A295C5D5C285B205C745D2A28293C3F28283F3A5C285B5E295D2A5C297C5B5E28295C735D292A3F293E3F5B205C745D2A28285B27225D29282E2A3F295C365B205C745D2A293F5C29292F672C2077';
wwv_flow_api.g_varchar2_table(314) := '72697465416E63686F72546167293B0D0A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F204C6173742C2068616E646C65207265666572656E63652D7374796C652073686F7274637574733A205B6C696E6B2074657874';
wwv_flow_api.g_varchar2_table(315) := '5D0D0A2020202020202020202020202F2F205468657365206D75737420636F6D65206C61737420696E206361736520796F7527766520616C736F20676F74205B6C696E6B20746573745D5B315D0D0A2020202020202020202020202F2F206F72205B6C69';
wwv_flow_api.g_varchar2_table(316) := '6E6B20746573745D282F666F6F290D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A2020202020202020202020202028';
wwv_flow_api.g_varchar2_table(317) := '202020202020202020202020202020202020202F2F20777261702077686F6C65206D6174636820696E2024310D0A202020202020202020202020205C5B0D0A20202020202020202020202020285B5E5C5B5C5D5D2B292020202020202F2F206C696E6B20';
wwv_flow_api.g_varchar2_table(318) := '74657874203D2024323B2063616E277420636F6E7461696E20275B27206F7220275D270D0A202020202020202020202020205C5D0D0A20202020202020202020202020290D0A202020202020202020202020202829282928292829282920202020202020';
wwv_flow_api.g_varchar2_table(319) := '2020202F2F207061642072657374206F66206261636B7265666572656E6365730D0A202020202020202020202020202F672C207772697465416E63686F72546167293B0D0A202020202020202020202020202A2F0D0A2020202020202020202020207465';
wwv_flow_api.g_varchar2_table(320) := '7874203D20746578742E7265706C616365282F285C5B285B5E5C5B5C5D5D2B295C5D29282928292829282928292F672C207772697465416E63686F72546167293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A2020202020';
wwv_flow_api.g_varchar2_table(321) := '2020207D0D0A0D0A202020202020202066756E6374696F6E207772697465416E63686F725461672877686F6C654D617463682C206D312C206D322C206D332C206D342C206D352C206D362C206D3729207B0D0A202020202020202020202020696620286D';
wwv_flow_api.g_varchar2_table(322) := '37203D3D20756E646566696E656429206D37203D2022223B0D0A2020202020202020202020207661722077686F6C655F6D61746368203D206D313B0D0A202020202020202020202020766172206C696E6B5F74657874203D206D322E7265706C61636528';
wwv_flow_api.g_varchar2_table(323) := '2F3A5C2F5C2F2F672C20227E5022293B202F2F20746F2070726576656E74206175746F2D6C696E6B696E672077697468696E6720746865206C696E6B2E2077696C6C20626520636F6E766572746564206261636B20616674657220746865206175746F2D';
wwv_flow_api.g_varchar2_table(324) := '6C696E6B65722072756E730D0A202020202020202020202020766172206C696E6B5F6964203D206D332E746F4C6F7765724361736528293B0D0A2020202020202020202020207661722075726C203D206D343B0D0A202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(325) := '207469746C65203D206D373B0D0A0D0A2020202020202020202020206966202875726C203D3D20222229207B0D0A20202020202020202020202020202020696620286C696E6B5F6964203D3D20222229207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(326) := '202020202F2F206C6F7765722D6361736520616E64207475726E20656D626564646564206E65776C696E657320696E746F207370616365730D0A20202020202020202020202020202020202020206C696E6B5F6964203D206C696E6B5F746578742E746F';
wwv_flow_api.g_varchar2_table(327) := '4C6F7765724361736528292E7265706C616365282F203F5C6E2F672C20222022293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202075726C203D20222322202B206C696E6B5F69643B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(328) := '202020202020202020202069662028675F75726C732E676574286C696E6B5F69642920213D20756E646566696E656429207B0D0A202020202020202020202020202020202020202075726C203D20675F75726C732E676574286C696E6B5F6964293B0D0A';
wwv_flow_api.g_varchar2_table(329) := '202020202020202020202020202020202020202069662028675F7469746C65732E676574286C696E6B5F69642920213D20756E646566696E656429207B0D0A2020202020202020202020202020202020202020202020207469746C65203D20675F746974';
wwv_flow_api.g_varchar2_table(330) := '6C65732E676574286C696E6B5F6964293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C7365207B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(331) := '20202020206966202877686F6C655F6D617463682E736561726368282F5C285C732A5C29242F6D29203E202D3129207B0D0A2020202020202020202020202020202020202020202020202F2F205370656369616C206361736520666F72206578706C6963';
wwv_flow_api.g_varchar2_table(332) := '697420656D7074792075726C0D0A20202020202020202020202020202020202020202020202075726C203D2022223B0D0A20202020202020202020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(333) := '20202072657475726E2077686F6C655F6D617463683B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020202020202075726C203D2061';
wwv_flow_api.g_varchar2_table(334) := '74747269627574655361666555726C2875726C293B0D0A0D0A20202020202020202020202076617220726573756C74203D20223C6120687265663D5C2222202B2075726C202B20225C22223B0D0A0D0A202020202020202020202020696620287469746C';
wwv_flow_api.g_varchar2_table(335) := '6520213D20222229207B0D0A202020202020202020202020202020207469746C65203D20617474726962757465456E636F6465287469746C65293B0D0A202020202020202020202020202020207469746C65203D20657363617065436861726163746572';
wwv_flow_api.g_varchar2_table(336) := '73287469746C652C20222A5F22293B0D0A20202020202020202020202020202020726573756C74202B3D2022207469746C653D5C2222202B207469746C65202B20225C22223B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(337) := '20726573756C74202B3D20223E22202B206C696E6B5F74657874202B20223C2F613E223B0D0A0D0A20202020202020202020202072657475726E20726573756C743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F44';
wwv_flow_api.g_varchar2_table(338) := '6F496D61676573287465787429207B0D0A0D0A20202020202020202020202069662028746578742E696E6465784F662822215B2229203D3D3D202D31290D0A2020202020202020202020202020202072657475726E20746578743B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(339) := '202020202020202F2F0D0A2020202020202020202020202F2F205475726E204D61726B646F776E20696D6167652073686F72746375747320696E746F203C696D673E20746167732E0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(340) := '202020202F2F0D0A2020202020202020202020202F2F2046697273742C2068616E646C65207265666572656E63652D7374796C65206C6162656C656420696D616765733A20215B616C7420746578745D5B69645D0D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(341) := '0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A2020202020202020202020202028202020202020202020202020202020202020202F2F20777261702077686F';
wwv_flow_api.g_varchar2_table(342) := '6C65206D6174636820696E2024310D0A20202020202020202020202020215C5B0D0A20202020202020202020202020282E2A3F2920202020202020202020202F2F20616C742074657874203D2024320D0A202020202020202020202020205C5D0D0A0D0A';
wwv_flow_api.g_varchar2_table(343) := '202020202020202020202020205B205D3F2020202020202020202020202F2F206F6E65206F7074696F6E616C2073706163650D0A20202020202020202020202020283F3A5C6E5B205D2A293F20202020202F2F206F6E65206F7074696F6E616C206E6577';
wwv_flow_api.g_varchar2_table(344) := '6C696E6520666F6C6C6F776564206279207370616365730D0A0D0A202020202020202020202020205C5B0D0A20202020202020202020202020282E2A3F2920202020202020202020202F2F206964203D2024330D0A202020202020202020202020205C5D';
wwv_flow_api.g_varchar2_table(345) := '0D0A20202020202020202020202020290D0A2020202020202020202020202028292829282928292020202020202020202020202F2F207061642072657374206F66206261636B7265666572656E6365730D0A202020202020202020202020202F672C2077';
wwv_flow_api.g_varchar2_table(346) := '72697465496D616765546167293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F28215C5B282E2A3F295C5D5B205D3F283F3A5C6E5B205D2A293F5C5B282E2A3F295C';
wwv_flow_api.g_varchar2_table(347) := '5D2928292829282928292F672C207772697465496D616765546167293B0D0A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F204E6578742C2068616E646C6520696E6C696E6520696D616765733A2020215B616C742074';
wwv_flow_api.g_varchar2_table(348) := '6578745D2875726C20226F7074696F6E616C207469746C6522290D0A2020202020202020202020202F2F20446F6E277420666F726765743A20656E636F6465202A20616E64205F0D0A0D0A2020202020202020202020202F2A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(349) := '2020202074657874203D20746578742E7265706C616365282F0D0A2020202020202020202020202028202020202020202020202020202020202020202F2F20777261702077686F6C65206D6174636820696E2024310D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(350) := '215C5B0D0A20202020202020202020202020282E2A3F2920202020202020202020202F2F20616C742074657874203D2024320D0A202020202020202020202020205C5D0D0A202020202020202020202020205C733F202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(351) := '204F6E65206F7074696F6E616C2077686974657370616365206368617261637465720D0A202020202020202020202020205C2820202020202020202020202020202F2F206C69746572616C20706172656E0D0A202020202020202020202020205B205C74';
wwv_flow_api.g_varchar2_table(352) := '5D2A0D0A20202020202020202020202020282920202020202020202020202020202F2F206E6F2069642C20736F206C6561766520243320656D7074790D0A202020202020202020202020203C3F285C532B3F293E3F2020202020202F2F20737263207572';
wwv_flow_api.g_varchar2_table(353) := '6C203D2024340D0A202020202020202020202020205B205C745D2A0D0A20202020202020202020202020282020202020202020202020202020202F2F2024350D0A20202020202020202020202020285B27225D292020202020202F2F2071756F74652063';
wwv_flow_api.g_varchar2_table(354) := '686172203D2024360D0A20202020202020202020202020282E2A3F29202020202020202F2F207469746C65203D2024370D0A202020202020202020202020205C36202020202020202020202F2F206D61746368696E672071756F74650D0A202020202020';
wwv_flow_api.g_varchar2_table(355) := '202020202020205B205C745D2A0D0A20202020202020202020202020293F20202020202020202020202020202F2F207469746C65206973206F7074696F6E616C0D0A202020202020202020202020205C290D0A20202020202020202020202020290D0A20';
wwv_flow_api.g_varchar2_table(356) := '2020202020202020202020202F672C207772697465496D616765546167293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F28215C5B282E2A3F295C5D5C733F5C285B';
wwv_flow_api.g_varchar2_table(357) := '205C745D2A28293C3F285C532B3F293E3F5B205C745D2A28285B27225D29282E2A3F295C365B205C745D2A293F5C29292F672C207772697465496D616765546167293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A202020';
wwv_flow_api.g_varchar2_table(358) := '20202020207D0D0A0D0A202020202020202066756E6374696F6E20617474726962757465456E636F6465287465787429207B0D0A2020202020202020202020202F2F20756E636F6E646974696F6E616C6C79207265706C61636520616E676C6520627261';
wwv_flow_api.g_varchar2_table(359) := '636B6574732068657265202D2D207768617420656E647320757020696E20616E206174747269627574652028652E672E20616C74206F72207469746C65290D0A2020202020202020202020202F2F206E65766572206D616B65732073656E736520746F20';
wwv_flow_api.g_varchar2_table(360) := '6861766520766572626174696D2048544D4C20696E2069742028616E64207468652073616E6974697A657220776F756C6420746F74616C6C7920627265616B206974290D0A20202020202020202020202072657475726E20746578742E7265706C616365';
wwv_flow_api.g_varchar2_table(361) := '282F3E2F672C20222667743B22292E7265706C616365282F3C2F672C2022266C743B22292E7265706C616365282F222F672C20222671756F743B22292E7265706C616365282F272F672C2022262333393B22293B0D0A20202020202020207D0D0A0D0A20';
wwv_flow_api.g_varchar2_table(362) := '2020202020202066756E6374696F6E207772697465496D6167655461672877686F6C654D617463682C206D312C206D322C206D332C206D342C206D352C206D362C206D3729207B0D0A2020202020202020202020207661722077686F6C655F6D61746368';
wwv_flow_api.g_varchar2_table(363) := '203D206D313B0D0A20202020202020202020202076617220616C745F74657874203D206D323B0D0A202020202020202020202020766172206C696E6B5F6964203D206D332E746F4C6F7765724361736528293B0D0A202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(364) := '2075726C203D206D343B0D0A202020202020202020202020766172207469746C65203D206D373B0D0A0D0A20202020202020202020202069662028217469746C6529207469746C65203D2022223B0D0A0D0A202020202020202020202020696620287572';
wwv_flow_api.g_varchar2_table(365) := '6C203D3D20222229207B0D0A20202020202020202020202020202020696620286C696E6B5F6964203D3D20222229207B0D0A20202020202020202020202020202020202020202F2F206C6F7765722D6361736520616E64207475726E20656D6265646465';
wwv_flow_api.g_varchar2_table(366) := '64206E65776C696E657320696E746F207370616365730D0A20202020202020202020202020202020202020206C696E6B5F6964203D20616C745F746578742E746F4C6F7765724361736528292E7265706C616365282F203F5C6E2F672C20222022293B0D';
wwv_flow_api.g_varchar2_table(367) := '0A202020202020202020202020202020207D0D0A2020202020202020202020202020202075726C203D20222322202B206C696E6B5F69643B0D0A0D0A2020202020202020202020202020202069662028675F75726C732E676574286C696E6B5F69642920';
wwv_flow_api.g_varchar2_table(368) := '213D20756E646566696E656429207B0D0A202020202020202020202020202020202020202075726C203D20675F75726C732E676574286C696E6B5F6964293B0D0A202020202020202020202020202020202020202069662028675F7469746C65732E6765';
wwv_flow_api.g_varchar2_table(369) := '74286C696E6B5F69642920213D20756E646566696E656429207B0D0A2020202020202020202020202020202020202020202020207469746C65203D20675F7469746C65732E676574286C696E6B5F6964293B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(370) := '202020207D0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C7365207B0D0A202020202020202020202020202020202020202072657475726E2077686F6C655F6D617463683B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(371) := '202020202020207D0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020616C745F74657874203D206573636170654368617261637465727328617474726962757465456E636F646528616C745F74657874292C20222A5F5B5D28';
wwv_flow_api.g_varchar2_table(372) := '2922293B0D0A20202020202020202020202075726C203D20657363617065436861726163746572732875726C2C20222A5F22293B0D0A20202020202020202020202076617220726573756C74203D20223C696D67207372633D5C2222202B2075726C202B';
wwv_flow_api.g_varchar2_table(373) := '20225C2220616C743D5C2222202B20616C745F74657874202B20225C22223B0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A204D61726B646F776E2E706C206164647320656D707479207469746C652061747472696275746573';
wwv_flow_api.g_varchar2_table(374) := '20746F20696D616765732E0D0A2020202020202020202020202F2F205265706C69636174652074686973206275672E0D0A0D0A2020202020202020202020202F2F696620287469746C6520213D20222229207B0D0A202020202020202020202020746974';
wwv_flow_api.g_varchar2_table(375) := '6C65203D20617474726962757465456E636F6465287469746C65293B0D0A2020202020202020202020207469746C65203D2065736361706543686172616374657273287469746C652C20222A5F22293B0D0A202020202020202020202020726573756C74';
wwv_flow_api.g_varchar2_table(376) := '202B3D2022207469746C653D5C2222202B207469746C65202B20225C22223B0D0A2020202020202020202020202F2F7D0D0A0D0A202020202020202020202020726573756C74202B3D2022202F3E223B0D0A0D0A20202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(377) := '726E20726573756C743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F446F48656164657273287465787429207B0D0A0D0A2020202020202020202020202F2F205365746578742D7374796C6520686561646572733A';
wwv_flow_api.g_varchar2_table(378) := '0D0A2020202020202020202020202F2F202048656164657220310D0A2020202020202020202020202F2F20203D3D3D3D3D3D3D3D0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F202048656164657220320D0A20202020';
wwv_flow_api.g_varchar2_table(379) := '20202020202020202F2F20202D2D2D2D2D2D2D2D0D0A2020202020202020202020202F2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E282E2B295B205C745D2A5C6E3D2B5B205C745D2A5C6E2B2F676D2C0D';
wwv_flow_api.g_varchar2_table(380) := '0A2020202020202020202020202020202066756E6374696F6E202877686F6C654D617463682C206D3129207B2072657475726E20223C68313E22202B205F52756E5370616E47616D7574286D3129202B20223C2F68313E5C6E5C6E223B207D0D0A202020';
wwv_flow_api.g_varchar2_table(381) := '202020202020202020293B0D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E282E2B295B205C745D2A5C6E2D2B5B205C745D2A5C6E2B2F676D2C0D0A2020202020202020202020202020202066756E637469';
wwv_flow_api.g_varchar2_table(382) := '6F6E20286D61746368466F756E642C206D3129207B2072657475726E20223C68323E22202B205F52756E5370616E47616D7574286D3129202B20223C2F68323E5C6E5C6E223B207D0D0A202020202020202020202020293B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(383) := '202020202F2F206174782D7374796C6520686561646572733A0D0A2020202020202020202020202F2F2020232048656164657220310D0A2020202020202020202020202F2F202023232048656164657220320D0A2020202020202020202020202F2F2020';
wwv_flow_api.g_varchar2_table(384) := '2323204865616465722032207769746820636C6F73696E67206861736865732023230D0A2020202020202020202020202F2F20202E2E2E0D0A2020202020202020202020202F2F20202323232323232048656164657220360D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(385) := '20202F2F0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A202020202020202020202020205E285C237B312C367D292020202020202F2F202431203D20737472';
wwv_flow_api.g_varchar2_table(386) := '696E67206F66202327730D0A202020202020202020202020205B205C745D2A0D0A20202020202020202020202020282E2B3F2920202020202020202020202F2F202432203D2048656164657220746578740D0A202020202020202020202020205B205C74';
wwv_flow_api.g_varchar2_table(387) := '5D2A0D0A202020202020202020202020205C232A202020202020202020202020202F2F206F7074696F6E616C20636C6F73696E672023277320286E6F7420636F756E746564290D0A202020202020202020202020205C6E2B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(388) := '2020202F676D2C2066756E6374696F6E2829207B2E2E2E7D293B0D0A202020202020202020202020202A2F0D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E285C237B312C367D295B205C745D2A282E2B3F';
wwv_flow_api.g_varchar2_table(389) := '295B205C745D2A5C232A5C6E2B2F676D2C0D0A2020202020202020202020202020202066756E6374696F6E202877686F6C654D617463682C206D312C206D3229207B0D0A202020202020202020202020202020202020202076617220685F6C6576656C20';
wwv_flow_api.g_varchar2_table(390) := '3D206D312E6C656E6774683B0D0A202020202020202020202020202020202020202072657475726E20223C6822202B20685F6C6576656C202B20223E22202B205F52756E5370616E47616D7574286D3229202B20223C2F6822202B20685F6C6576656C20';
wwv_flow_api.g_varchar2_table(391) := '2B20223E5C6E5C6E223B0D0A202020202020202020202020202020207D0D0A202020202020202020202020293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E63';
wwv_flow_api.g_varchar2_table(392) := '74696F6E205F446F4C6973747328746578742C206973496E736964655061726167726170686C6573734C6973744974656D29207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20466F726D2048544D4C206F72646572';
wwv_flow_api.g_varchar2_table(393) := '656420286E756D62657265642920616E6420756E6F726465726564202862756C6C6574656429206C697374732E0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A206164642073656E7469';
wwv_flow_api.g_varchar2_table(394) := '6E656C20746F206861636B2061726F756E64206B68746D6C2F736166617269206275673A0D0A2020202020202020202020202F2F20687474703A2F2F627567732E7765626B69742E6F72672F73686F775F6275672E6367693F69643D31313233310D0A20';
wwv_flow_api.g_varchar2_table(395) := '202020202020202020202074657874202B3D20227E30223B0D0A0D0A2020202020202020202020202F2F2052652D757361626C65207061747465726E20746F206D6174636820616E7920656E746972656C20756C206F72206F6C206C6973743A0D0A0D0A';
wwv_flow_api.g_varchar2_table(396) := '2020202020202020202020202F2A0D0A202020202020202020202020207661722077686F6C655F6C697374203D202F0D0A202020202020202020202020202820202020202020202020202020202020202020202020202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(397) := '202431203D2077686F6C65206C6973740D0A2020202020202020202020202028202020202020202020202020202020202020202020202020202020202020202F2F2024320D0A202020202020202020202020205B205D7B302C337D202020202020202020';
wwv_flow_api.g_varchar2_table(398) := '20202020202020202020202F2F2061747461636B6C61623A20675F7461625F7769647468202D20310D0A20202020202020202020202020285B2A2B2D5D7C5C642B5B2E5D2920202020202020202020202020202F2F202433203D206669727374206C6973';
wwv_flow_api.g_varchar2_table(399) := '74206974656D206D61726B65720D0A202020202020202020202020205B205C745D2B0D0A20202020202020202020202020290D0A202020202020202020202020205B5E5C725D2B3F0D0A2020202020202020202020202028202020202020202020202020';
wwv_flow_api.g_varchar2_table(400) := '202020202020202020202020202020202020202F2F2024340D0A202020202020202020202020207E3020202020202020202020202020202020202020202020202020202F2F2073656E74696E656C20666F7220776F726B61726F756E643B2073686F756C';
wwv_flow_api.g_varchar2_table(401) := '6420626520240D0A202020202020202020202020207C0D0A202020202020202020202020205C6E7B322C7D0D0A20202020202020202020202020283F3D5C53290D0A20202020202020202020202020283F21202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(402) := '202020202020202F2F204E65676174697665206C6F6F6B616865616420666F7220616E6F74686572206C697374206974656D206D61726B65720D0A202020202020202020202020205B205C745D2A0D0A20202020202020202020202020283F3A5B2A2B2D';
wwv_flow_api.g_varchar2_table(403) := '5D7C5C642B5B2E5D295B205C745D2B0D0A20202020202020202020202020290D0A20202020202020202020202020290D0A20202020202020202020202020290D0A202020202020202020202020202F670D0A202020202020202020202020202A2F0D0A20';
wwv_flow_api.g_varchar2_table(404) := '20202020202020202020207661722077686F6C655F6C697374203D202F5E28285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B295B5E5C725D2B3F287E307C5C6E7B322C7D283F3D5C5329283F215B205C745D2A283F3A5B2A2B2D';
wwv_flow_api.g_varchar2_table(405) := '5D7C5C642B5B2E5D295B205C745D2B2929292F676D3B0D0A20202020202020202020202069662028675F6C6973745F6C6576656C29207B0D0A2020202020202020202020202020202074657874203D20746578742E7265706C6163652877686F6C655F6C';
wwv_flow_api.g_varchar2_table(406) := '6973742C2066756E6374696F6E202877686F6C654D617463682C206D312C206D3229207B0D0A2020202020202020202020202020202020202020766172206C697374203D206D313B0D0A2020202020202020202020202020202020202020766172206C69';
wwv_flow_api.g_varchar2_table(407) := '73745F74797065203D20286D322E736561726368282F5B2A2B2D5D2F6729203E202D3129203F2022756C22203A20226F6C223B0D0A20202020202020202020202020202020202020207661722066697273745F6E756D6265723B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(408) := '202020202020202020202020696620286C6973745F74797065203D3D3D20226F6C22290D0A20202020202020202020202020202020202020202020202066697273745F6E756D626572203D207061727365496E74286D322C203130293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(409) := '202020202020202020202020202020202076617220726573756C74203D205F50726F636573734C6973744974656D73286C6973742C206C6973745F747970652C206973496E736964655061726167726170686C6573734C6973744974656D293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(410) := '20202020202020202020202020202020202020202F2F205472696D20616E7920747261696C696E6720776869746573706163652C20746F207075742074686520636C6F73696E6720603C2F246C6973745F747970653E600D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(411) := '2020202020202020202F2F207570206F6E2074686520707265636564696E67206C696E652C20746F206765742069742070617374207468652063757272656E74207374757069640D0A20202020202020202020202020202020202020202F2F2048544D4C';
wwv_flow_api.g_varchar2_table(412) := '20626C6F636B207061727365722E20546869732069732061206861636B20746F20776F726B2061726F756E6420746865207465727269626C650D0A20202020202020202020202020202020202020202F2F206861636B2074686174206973207468652048';
wwv_flow_api.g_varchar2_table(413) := '544D4C20626C6F636B207061727365722E0D0A2020202020202020202020202020202020202020726573756C74203D20726573756C742E7265706C616365282F5C732B242F2C202222293B0D0A2020202020202020202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(414) := '206F70656E696E67203D20223C22202B206C6973745F747970653B0D0A20202020202020202020202020202020202020206966202866697273745F6E756D6265722026262066697273745F6E756D62657220213D3D2031290D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(415) := '20202020202020202020202020206F70656E696E67202B3D20222073746172743D5C2222202B2066697273745F6E756D626572202B20225C22223B0D0A2020202020202020202020202020202020202020726573756C74203D206F70656E696E67202B20';
wwv_flow_api.g_varchar2_table(416) := '223E22202B20726573756C74202B20223C2F22202B206C6973745F74797065202B20223E5C6E223B0D0A202020202020202020202020202020202020202072657475726E20726573756C743B0D0A202020202020202020202020202020207D293B0D0A20';
wwv_flow_api.g_varchar2_table(417) := '20202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202077686F6C655F6C697374203D202F285C6E5C6E7C5E5C6E3F2928285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B295B5E5C725D2B3F';
wwv_flow_api.g_varchar2_table(418) := '287E307C5C6E7B322C7D283F3D5C5329283F215B205C745D2A283F3A5B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2929292F673B0D0A2020202020202020202020202020202074657874203D20746578742E7265706C6163652877686F6C655F6C6973';
wwv_flow_api.g_varchar2_table(419) := '742C2066756E6374696F6E202877686F6C654D617463682C206D312C206D322C206D3329207B0D0A20202020202020202020202020202020202020207661722072756E7570203D206D313B0D0A2020202020202020202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(420) := '206C697374203D206D323B0D0A0D0A2020202020202020202020202020202020202020766172206C6973745F74797065203D20286D332E736561726368282F5B2A2B2D5D2F6729203E202D3129203F2022756C22203A20226F6C223B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(421) := '202020202020202020202020202020207661722066697273745F6E756D6265723B0D0A2020202020202020202020202020202020202020696620286C6973745F74797065203D3D3D20226F6C22290D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(422) := '2020202066697273745F6E756D626572203D207061727365496E74286D332C203130293B0D0A0D0A202020202020202020202020202020202020202076617220726573756C74203D205F50726F636573734C6973744974656D73286C6973742C206C6973';
wwv_flow_api.g_varchar2_table(423) := '745F74797065293B0D0A2020202020202020202020202020202020202020766172206F70656E696E67203D20223C22202B206C6973745F747970653B0D0A20202020202020202020202020202020202020206966202866697273745F6E756D6265722026';
wwv_flow_api.g_varchar2_table(424) := '262066697273745F6E756D62657220213D3D2031290D0A2020202020202020202020202020202020202020202020206F70656E696E67202B3D20222073746172743D5C2222202B2066697273745F6E756D626572202B20225C22223B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(425) := '20202020202020202020202020202020726573756C74203D2072756E7570202B206F70656E696E67202B20223E5C6E22202B20726573756C74202B20223C2F22202B206C6973745F74797065202B20223E5C6E223B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(426) := '2020202020202072657475726E20726573756C743B0D0A202020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A2073747269702073656E74696E65';
wwv_flow_api.g_varchar2_table(427) := '6C0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F7E302F2C202222293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202076617220';
wwv_flow_api.g_varchar2_table(428) := '5F6C6973744974656D4D61726B657273203D207B206F6C3A20225C5C642B5B2E5D222C20756C3A20225B2A2B2D5D22207D3B0D0A0D0A202020202020202066756E6374696F6E205F50726F636573734C6973744974656D73286C6973745F7374722C206C';
wwv_flow_api.g_varchar2_table(429) := '6973745F747970652C206973496E736964655061726167726170686C6573734C6973744974656D29207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F202050726F636573732074686520636F6E74656E7473206F6620';
wwv_flow_api.g_varchar2_table(430) := '612073696E676C65206F726465726564206F7220756E6F726465726564206C6973742C2073706C697474696E672069740D0A2020202020202020202020202F2F2020696E746F20696E646976696475616C206C697374206974656D732E0D0A2020202020';
wwv_flow_api.g_varchar2_table(431) := '202020202020202F2F0D0A2020202020202020202020202F2F20206C6973745F74797065206973206569746865722022756C22206F7220226F6C222E0D0A0D0A2020202020202020202020202F2F205468652024675F6C6973745F6C6576656C20676C6F';
wwv_flow_api.g_varchar2_table(432) := '62616C206B6565707320747261636B206F66207768656E20776527726520696E736964652061206C6973742E0D0A2020202020202020202020202F2F20456163682074696D6520776520656E7465722061206C6973742C20776520696E6372656D656E74';
wwv_flow_api.g_varchar2_table(433) := '2069743B207768656E207765206C656176652061206C6973742C0D0A2020202020202020202020202F2F2077652064656372656D656E742E2049662069742773207A65726F2C207765277265206E6F7420696E2061206C69737420616E796D6F72652E0D';
wwv_flow_api.g_varchar2_table(434) := '0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20576520646F20746869732062656361757365207768656E207765277265206E6F7420696E736964652061206C6973742C2077652077616E7420746F2074726561740D0A20';
wwv_flow_api.g_varchar2_table(435) := '20202020202020202020202F2F20736F6D657468696E67206C696B6520746869733A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2020202049207265636F6D6D656E6420757067726164696E6720746F207665727369';
wwv_flow_api.g_varchar2_table(436) := '6F6E0D0A2020202020202020202020202F2F20202020382E204F6F70732C206E6F772074686973206C696E6520697320747265617465640D0A2020202020202020202020202F2F2020202061732061207375622D6C6973742E0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(437) := '2020202F2F0D0A2020202020202020202020202F2F20417320612073696E676C65207061726167726170682C2064657370697465207468652066616374207468617420746865207365636F6E64206C696E65207374617274730D0A202020202020202020';
wwv_flow_api.g_varchar2_table(438) := '2020202F2F207769746820612064696769742D706572696F642D73706163652073657175656E63652E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2057686572656173207768656E20776527726520696E7369646520';
wwv_flow_api.g_varchar2_table(439) := '61206C69737420286F72207375622D6C697374292C2074686174206C696E652077696C6C2062650D0A2020202020202020202020202F2F207472656174656420617320746865207374617274206F662061207375622D6C6973742E20576861742061206B';
wwv_flow_api.g_varchar2_table(440) := '6C756467652C206875683F20546869732069730D0A2020202020202020202020202F2F20616E20617370656374206F66204D61726B646F776E27732073796E74617820746861742773206861726420746F20706172736520706572666563746C790D0A20';
wwv_flow_api.g_varchar2_table(441) := '20202020202020202020202F2F20776974686F7574207265736F7274696E6720746F206D696E642D72656164696E672E20506572686170732074686520736F6C7574696F6E20697320746F0D0A2020202020202020202020202F2F206368616E67652074';
wwv_flow_api.g_varchar2_table(442) := '68652073796E7461782072756C657320737563682074686174207375622D6C69737473206D757374207374617274207769746820610D0A2020202020202020202020202F2F207374617274696E672063617264696E616C206E756D6265723B20652E672E';
wwv_flow_api.g_varchar2_table(443) := '2022312E22206F722022612E222E0D0A0D0A202020202020202020202020675F6C6973745F6C6576656C2B2B3B0D0A0D0A2020202020202020202020202F2F207472696D20747261696C696E6720626C616E6B206C696E65733A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(444) := '202020206C6973745F737472203D206C6973745F7374722E7265706C616365282F5C6E7B322C7D242F2C20225C6E22293B0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A206164642073656E74696E656C20746F20656D756C61';
wwv_flow_api.g_varchar2_table(445) := '7465205C7A0D0A2020202020202020202020206C6973745F737472202B3D20227E30223B0D0A0D0A2020202020202020202020202F2F20496E20746865206F726967696E616C2061747461636B6C61622073686F77646F776E2C206C6973745F74797065';
wwv_flow_api.g_varchar2_table(446) := '20776173206E6F7420676976656E20746F20746869732066756E6374696F6E2C20616E6420616E797468696E670D0A2020202020202020202020202F2F2074686174206D617463686564202F5B2A2B2D5D7C5C642B5B2E5D2F20776F756C64206A757374';
wwv_flow_api.g_varchar2_table(447) := '2063726561746520746865206E657874203C6C693E2C2063617573696E672074686973206D69736D617463683A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20204D61726B646F776E2020202020202020202072656E';
wwv_flow_api.g_varchar2_table(448) := '646572656420627920574D44202020202020202072656E6465726564206279204D61726B646F776E53686172700D0A2020202020202020202020202F2F20202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(449) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2020202020202020202020202F2F2020312E20666972737420202020202020202020312E206669727374202020202020202020202020202020312E2066697273740D0A2020';
wwv_flow_api.g_varchar2_table(450) := '202020202020202020202F2F2020322E207365636F6E64202020202020202020322E207365636F6E642020202020202020202020202020322E207365636F6E640D0A2020202020202020202020202F2F20202D2074686972642020202020202020202020';
wwv_flow_api.g_varchar2_table(451) := '332E207468697264202020202020202020202020202020202020202A2074686972640D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F205765206368616E676564207468697320746F20626568617665206964656E746963';
wwv_flow_api.g_varchar2_table(452) := '616C20746F204D61726B646F776E53686172702E20546869732069732074686520636F6E73747275637465642052656745782C0D0A2020202020202020202020202F2F2077697468207B4D41524B45527D206265696E67206F6E65206F66205C642B5B2E';
wwv_flow_api.g_varchar2_table(453) := '5D206F72205B2A2B2D5D2C20646570656E64696E67206F6E206C6973745F747970653A0D0A0D0A2020202020202020202020202F2A0D0A202020202020202020202020206C6973745F737472203D206C6973745F7374722E7265706C616365282F0D0A20';
wwv_flow_api.g_varchar2_table(454) := '202020202020202020202020285E5B205C745D2A2920202020202020202020202020202020202020202020202F2F206C656164696E672077686974657370616365203D2024310D0A20202020202020202020202020287B4D41524B45527D29205B205C74';
wwv_flow_api.g_varchar2_table(455) := '5D2B2020202020202020202020202020202F2F206C697374206D61726B6572203D2024320D0A20202020202020202020202020285B5E5C725D2B3F2020202020202020202020202020202020202020202020202F2F206C697374206974656D2074657874';
wwv_flow_api.g_varchar2_table(456) := '2020203D2024330D0A20202020202020202020202020285C6E2B290D0A20202020202020202020202020290D0A20202020202020202020202020283F3D0D0A20202020202020202020202020287E30207C205C3220287B4D41524B45527D29205B205C74';
wwv_flow_api.g_varchar2_table(457) := '5D2B290D0A20202020202020202020202020290D0A202020202020202020202020202F676D2C2066756E6374696F6E28297B2E2E2E7D293B0D0A202020202020202020202020202A2F0D0A0D0A202020202020202020202020766172206D61726B657220';
wwv_flow_api.g_varchar2_table(458) := '3D205F6C6973744974656D4D61726B6572735B6C6973745F747970655D3B0D0A202020202020202020202020766172207265203D206E6577205265674578702822285E5B205C5C745D2A292822202B206D61726B6572202B2022295B205C5C745D2B285B';
wwv_flow_api.g_varchar2_table(459) := '5E5C5C725D2B3F285C5C6E2B2929283F3D287E307C5C5C312822202B206D61726B6572202B2022295B205C5C745D2B2929222C2022676D22293B0D0A202020202020202020202020766172206C6173745F6974656D5F6861645F615F646F75626C655F6E';
wwv_flow_api.g_varchar2_table(460) := '65776C696E65203D2066616C73653B0D0A2020202020202020202020206C6973745F737472203D206C6973745F7374722E7265706C6163652872652C0D0A2020202020202020202020202020202066756E6374696F6E202877686F6C654D617463682C20';
wwv_flow_api.g_varchar2_table(461) := '6D312C206D322C206D3329207B0D0A2020202020202020202020202020202020202020766172206974656D203D206D333B0D0A2020202020202020202020202020202020202020766172206C656164696E675F7370616365203D206D313B0D0A20202020';
wwv_flow_api.g_varchar2_table(462) := '2020202020202020202020202020202076617220656E64735F776974685F646F75626C655F6E65776C696E65203D202F5C6E5C6E242F2E74657374286974656D293B0D0A202020202020202020202020202020202020202076617220636F6E7461696E73';
wwv_flow_api.g_varchar2_table(463) := '5F646F75626C655F6E65776C696E65203D20656E64735F776974685F646F75626C655F6E65776C696E65207C7C206974656D2E736561726368282F5C6E7B322C7D2F29203E202D313B0D0A0D0A2020202020202020202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(464) := '206C6F6F7365203D20636F6E7461696E735F646F75626C655F6E65776C696E65207C7C206C6173745F6974656D5F6861645F615F646F75626C655F6E65776C696E653B0D0A20202020202020202020202020202020202020206974656D203D205F52756E';
wwv_flow_api.g_varchar2_table(465) := '426C6F636B47616D7574285F4F757464656E74286974656D292C202F2A20646F4E6F74556E68617368203D202A2F747275652C202F2A20646F4E6F7443726561746550617261677261706873203D202A2F20216C6F6F7365293B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(466) := '20202020202020202020202020206C6173745F6974656D5F6861645F615F646F75626C655F6E65776C696E65203D20656E64735F776974685F646F75626C655F6E65776C696E653B0D0A202020202020202020202020202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(467) := '20223C6C693E22202B206974656D202B20223C2F6C693E5C6E223B0D0A202020202020202020202020202020207D0D0A202020202020202020202020293B0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A207374726970207365';
wwv_flow_api.g_varchar2_table(468) := '6E74696E656C0D0A2020202020202020202020206C6973745F737472203D206C6973745F7374722E7265706C616365282F7E302F672C202222293B0D0A0D0A202020202020202020202020675F6C6973745F6C6576656C2D2D3B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(469) := '2020202072657475726E206C6973745F7374723B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F446F436F6465426C6F636B73287465787429207B0D0A2020202020202020202020202F2F0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(470) := '2020202F2F202050726F63657373204D61726B646F776E20603C7072653E3C636F64653E6020626C6F636B732E0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D';
wwv_flow_api.g_varchar2_table(471) := '20746578742E7265706C616365282F0D0A20202020202020202020202020283F3A5C6E5C6E7C5E290D0A2020202020202020202020202028202020202020202020202020202020202020202020202020202020202020202F2F202431203D207468652063';
wwv_flow_api.g_varchar2_table(472) := '6F646520626C6F636B202D2D206F6E65206F72206D6F7265206C696E65732C207374617274696E67207769746820612073706163652F7461620D0A20202020202020202020202020283F3A0D0A20202020202020202020202020283F3A5B205D7B347D7C';
wwv_flow_api.g_varchar2_table(473) := '5C742920202020202020202020202F2F204C696E6573206D7573742073746172742077697468206120746162206F722061207461622D7769647468206F6620737061636573202D2061747461636B6C61623A20675F7461625F77696474680D0A20202020';
wwv_flow_api.g_varchar2_table(474) := '2020202020202020202E2A5C6E2B0D0A20202020202020202020202020292B0D0A20202020202020202020202020290D0A20202020202020202020202020285C6E2A5B205D7B302C337D5B5E205C745C6E5D7C283F3D7E302929202020202F2F20617474';
wwv_flow_api.g_varchar2_table(475) := '61636B6C61623A20675F7461625F77696474680D0A202020202020202020202020202F67202C66756E6374696F6E28297B2E2E2E7D293B0D0A202020202020202020202020202A2F0D0A0D0A2020202020202020202020202F2F2061747461636B6C6162';
wwv_flow_api.g_varchar2_table(476) := '3A2073656E74696E656C20776F726B61726F756E647320666F72206C61636B206F66205C4120616E64205C5A2C207361666172695C6B68746D6C206275670D0A20202020202020202020202074657874202B3D20227E30223B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(477) := '202020202074657874203D20746578742E7265706C616365282F283F3A5C6E5C6E7C5E5C6E3F2928283F3A283F3A5B205D7B347D7C5C74292E2A5C6E2B292B29285C6E2A5B205D7B302C337D5B5E205C745C6E5D7C283F3D7E3029292F672C0D0A202020';
wwv_flow_api.g_varchar2_table(478) := '2020202020202020202020202066756E6374696F6E202877686F6C654D617463682C206D312C206D3229207B0D0A202020202020202020202020202020202020202076617220636F6465626C6F636B203D206D313B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(479) := '20202020202020766172206E65787443686172203D206D323B0D0A0D0A2020202020202020202020202020202020202020636F6465626C6F636B203D205F456E636F6465436F6465285F4F757464656E7428636F6465626C6F636B29293B0D0A20202020';
wwv_flow_api.g_varchar2_table(480) := '20202020202020202020202020202020636F6465626C6F636B203D205F446574616228636F6465626C6F636B293B0D0A2020202020202020202020202020202020202020636F6465626C6F636B203D20636F6465626C6F636B2E7265706C616365282F5E';
wwv_flow_api.g_varchar2_table(481) := '5C6E2B2F672C202222293B202F2F207472696D206C656164696E67206E65776C696E65730D0A2020202020202020202020202020202020202020636F6465626C6F636B203D20636F6465626C6F636B2E7265706C616365282F5C6E2B242F672C20222229';
wwv_flow_api.g_varchar2_table(482) := '3B202F2F207472696D20747261696C696E6720776869746573706163650D0A0D0A2020202020202020202020202020202020202020636F6465626C6F636B203D20223C7072653E3C636F64653E22202B20636F6465626C6F636B202B20225C6E3C2F636F';
wwv_flow_api.g_varchar2_table(483) := '64653E3C2F7072653E223B0D0A0D0A202020202020202020202020202020202020202072657475726E20225C6E5C6E22202B20636F6465626C6F636B202B20225C6E5C6E22202B206E657874436861723B0D0A202020202020202020202020202020207D';
wwv_flow_api.g_varchar2_table(484) := '0D0A202020202020202020202020293B0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A2073747269702073656E74696E656C0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F7E302F2C20';
wwv_flow_api.g_varchar2_table(485) := '2222293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F446F436F64655370616E73287465787429207B0D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(486) := '0D0A2020202020202020202020202F2F202A204261636B7469636B2071756F74657320617265207573656420666F72203C636F64653E3C2F636F64653E207370616E732E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(487) := '202A20596F752063616E20757365206D756C7469706C65206261636B7469636B73206173207468652064656C696D697465727320696620796F752077616E7420746F0D0A2020202020202020202020202F2F202020696E636C756465206C69746572616C';
wwv_flow_api.g_varchar2_table(488) := '206261636B7469636B7320696E2074686520636F6465207370616E2E20536F2C207468697320696E7075743A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2020202020204A7573742074797065206060666F6F206062';
wwv_flow_api.g_varchar2_table(489) := '6172602062617A6060206174207468652070726F6D70742E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20202057696C6C207472616E736C61746520746F3A0D0A2020202020202020202020202F2F0D0A2020202020';
wwv_flow_api.g_varchar2_table(490) := '202020202020202F2F2020202020203C703E4A7573742074797065203C636F64653E666F6F2060626172602062617A3C2F636F64653E206174207468652070726F6D70742E3C2F703E0D0A2020202020202020202020202F2F0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(491) := '2020202F2F20202054686572652773206E6F20617262697472617279206C696D697420746F20746865206E756D626572206F66206261636B7469636B7320796F750D0A2020202020202020202020202F2F20202063616E207573652061732064656C696D';
wwv_flow_api.g_varchar2_table(492) := '746572732E20496620796F75206E65656420746872656520636F6E7365637574697665206261636B7469636B730D0A2020202020202020202020202F2F202020696E20796F757220636F64652C2075736520666F757220666F722064656C696D69746572';
wwv_flow_api.g_varchar2_table(493) := '732C206574632E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F202A20596F752063616E207573652073706163657320746F20676574206C69746572616C206261636B7469636B73206174207468652065646765733A0D';
wwv_flow_api.g_varchar2_table(494) := '0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2020202020202E2E2E2074797065206060206062617260206060202E2E2E0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2020205475726E';
wwv_flow_api.g_varchar2_table(495) := '7320746F3A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2020202020202E2E2E2074797065203C636F64653E60626172603C2F636F64653E202E2E2E0D0A2020202020202020202020202F2F0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(496) := '2020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A20202020202020202020202020285E7C5B5E5C5C605D292020202020202F2F20436861726163746572206265666F7265206F70656E69';
wwv_flow_api.g_varchar2_table(497) := '6E6720602063616E27742062652061206261636B736C617368206F72206261636B7469636B0D0A2020202020202020202020202028602B292020202020202020202020202F2F202432203D204F70656E696E672072756E206F6620600D0A202020202020';
wwv_flow_api.g_varchar2_table(498) := '20202020202020283F21602920202020202020202020202F2F20616E64206E6F206D6F7265206261636B7469636B73202D2D206D61746368207468652066756C6C2072756E0D0A2020202020202020202020202028202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(499) := '2F2F202433203D2054686520636F646520626C6F636B0D0A202020202020202020202020205B5E5C725D2A3F0D0A202020202020202020202020205B5E605D20202020202020202F2F2061747461636B6C61623A20776F726B2061726F756E64206C6163';
wwv_flow_api.g_varchar2_table(500) := '6B206F66206C6F6F6B626568696E640D0A20202020202020202020202020290D0A202020202020202020202020205C3220202020202020202020202020202F2F204D61746368696E6720636C6F7365720D0A20202020202020202020202020283F216029';
wwv_flow_api.g_varchar2_table(501) := '0D0A202020202020202020202020202F676D2C2066756E6374696F6E28297B2E2E2E7D293B0D0A202020202020202020202020202A2F0D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F285E7C5B5E5C5C605D';
wwv_flow_api.g_varchar2_table(502) := '2928602B29283F216029285B5E5C725D2A3F5B5E605D295C32283F2160292F676D2C0D0A2020202020202020202020202020202066756E6374696F6E202877686F6C654D617463682C206D312C206D322C206D332C206D3429207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(503) := '202020202020202020202020207661722063203D206D333B0D0A202020202020202020202020202020202020202063203D20632E7265706C616365282F5E285B205C745D2A292F672C202222293B202F2F206C656164696E672077686974657370616365';
wwv_flow_api.g_varchar2_table(504) := '0D0A202020202020202020202020202020202020202063203D20632E7265706C616365282F5B205C745D2A242F672C202222293B202F2F20747261696C696E6720776869746573706163650D0A202020202020202020202020202020202020202063203D';
wwv_flow_api.g_varchar2_table(505) := '205F456E636F6465436F64652863293B0D0A202020202020202020202020202020202020202063203D20632E7265706C616365282F3A5C2F5C2F2F672C20227E5022293B202F2F20746F2070726576656E74206175746F2D6C696E6B696E672E204E6F74';
wwv_flow_api.g_varchar2_table(506) := '206E656365737361727920696E20636F6465202A626C6F636B732A2C2062757420696E20636F6465207370616E732E2057696C6C20626520636F6E766572746564206261636B20616674657220746865206175746F2D6C696E6B65722072756E732E0D0A';
wwv_flow_api.g_varchar2_table(507) := '202020202020202020202020202020202020202072657475726E206D31202B20223C636F64653E22202B2063202B20223C2F636F64653E223B0D0A202020202020202020202020202020207D0D0A202020202020202020202020293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(508) := '202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F456E636F6465436F6465287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(509) := '202F2F20456E636F64652F657363617065206365727461696E206368617261637465727320696E73696465204D61726B646F776E20636F64652072756E732E0D0A2020202020202020202020202F2F2054686520706F696E74206973207468617420696E';
wwv_flow_api.g_varchar2_table(510) := '20636F64652C207468657365206368617261637465727320617265206C69746572616C732C0D0A2020202020202020202020202F2F20616E64206C6F7365207468656972207370656369616C204D61726B646F776E206D65616E696E67732E0D0A202020';
wwv_flow_api.g_varchar2_table(511) := '2020202020202020202F2F0D0A2020202020202020202020202F2F20456E636F646520616C6C20616D70657273616E64733B2048544D4C20656E74697469657320617265206E6F740D0A2020202020202020202020202F2F20656E746974696573207769';
wwv_flow_api.g_varchar2_table(512) := '7468696E2061204D61726B646F776E20636F6465207370616E2E0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F262F672C202226616D703B22293B0D0A0D0A2020202020202020202020202F2F20446F20746865';
wwv_flow_api.g_varchar2_table(513) := '20616E676C6520627261636B657420736F6E6720616E642064616E63653A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F3C2F672C2022266C743B22293B0D0A20202020202020202020202074657874203D2074';
wwv_flow_api.g_varchar2_table(514) := '6578742E7265706C616365282F3E2F672C20222667743B22293B0D0A0D0A2020202020202020202020202F2F204E6F772C206573636170652063686172616374657273207468617420617265206D6167696320696E204D61726B646F776E3A0D0A202020';
wwv_flow_api.g_varchar2_table(515) := '20202020202020202074657874203D206573636170654368617261637465727328746578742C20225C2A5F7B7D5B5D5C5C222C2066616C7365293B0D0A0D0A2020202020202020202020202F2F206A6A20746865206C696E652061626F76652062726561';
wwv_flow_api.g_varchar2_table(516) := '6B7320746869733A0D0A2020202020202020202020202F2F2D2D2D0D0A0D0A2020202020202020202020202F2F2A204974656D0D0A0D0A2020202020202020202020202F2F202020312E205375626974656D0D0A0D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(517) := '2020202020202020202020207370656369616C20636861723A202A0D0A2020202020202020202020202F2F2D2D2D0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E';
wwv_flow_api.g_varchar2_table(518) := '6374696F6E205F446F4974616C696373416E64426F6C64537472696374287465787429207B0D0A0D0A20202020202020202020202069662028746578742E696E6465784F6628222A2229203D3D3D202D3120262620746578742E696E6465784F6628225F';
wwv_flow_api.g_varchar2_table(519) := '2229203D3D3D202D2031290D0A2020202020202020202020202020202072657475726E20746578743B0D0A0D0A20202020202020202020202074657874203D20617363696966792874657874293B0D0A0D0A2020202020202020202020202F2F203C7374';
wwv_flow_api.g_varchar2_table(520) := '726F6E673E206D75737420676F2066697273743A0D0A0D0A2020202020202020202020202F2F20285E7C5B5C575F5D292020202020202020202020537461727420776974682061206E6F6E2D6C6574746572206F7220626567696E6E696E67206F662073';
wwv_flow_api.g_varchar2_table(521) := '7472696E672E2053746F726520696E205C312E0D0A2020202020202020202020202F2F20283F3A283F215C31297C283F3D5E29292020202045697468657220746865206E65787420636861726163746572206973202A6E6F742A207468652073616D6520';
wwv_flow_api.g_varchar2_table(522) := '6173207468652070726576696F75732C0D0A2020202020202020202020202F2F2020202020202020202020202020202020202020206F7220776520737461727465642061742074686520656E64206F662074686520737472696E672028696E2077686963';
wwv_flow_api.g_varchar2_table(523) := '682063617365207468652070726576696F75730D0A2020202020202020202020202F2F20202020202020202020202020202020202020202067726F757020686164207A65726F2077696474682C20736F207765277265207374696C6C207468657265292E';
wwv_flow_api.g_varchar2_table(524) := '204265636175736520746865206E6578740D0A2020202020202020202020202F2F20202020202020202020202020202020202020202063686172616374657220697320746865206D61726B65722C2074686973206D65616E732074686174206966207468';
wwv_flow_api.g_varchar2_table(525) := '6572652061726520652E672E206D756C7469706C650D0A2020202020202020202020202F2F202020202020202020202020202020202020202020756E64657273636F72657320696E206120726F772C2077652063616E206F6E6C79206D61746368207468';
wwv_flow_api.g_varchar2_table(526) := '65206C6566742D6D6F7374206F6E6573202877686963680D0A2020202020202020202020202F2F20202020202020202020202020202020202020202070726576656E747320666F6F5F5F5F6261725F5F2066726F6D2067657474696E6720626F6C646564';
wwv_flow_api.g_varchar2_table(527) := '290D0A2020202020202020202020202F2F20285C2A7C5F292020202020202020202020202020546865206D61726B65722063686172616374657220697473656C662C20617374657269736B206F7220756E64657273636F72652E2053746F726520696E20';
wwv_flow_api.g_varchar2_table(528) := '5C322E0D0A2020202020202020202020202F2F205C32202020202020202020202020202020202020546865206D61726B657220616761696E2C2073696E636520626F6C64206E656564732074776F2E0D0A2020202020202020202020202F2F20283F3D5C';
wwv_flow_api.g_varchar2_table(529) := '5329202020202020202020202020202054686520666972737420626F6C646564206368617261637465722063616E6E6F7420626520612073706163652E0D0A2020202020202020202020202F2F20285B5E5C725D2A3F5C53292020202020202020205468';
wwv_flow_api.g_varchar2_table(530) := '652061637475616C20626F6C64656420737472696E672E204174206C65617374206F6E65206368617261637465722C20616E642069742063616E6E6F74202A656E642A0D0A2020202020202020202020202F2F2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(531) := '20202020776974682061207370616365206569746865722E204E6F74652074686174206C696B6520696E206D616E79206F7468657220706C616365732C205B5E5C725D2069730D0A2020202020202020202020202F2F2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(532) := '202020202020206A757374206120776F726B61726F756E6420666F72204A5327206C61636B206F662073696E676C652D6C696E6520726567657865733B2069742773206571756976616C656E740D0A2020202020202020202020202F2F20202020202020';
wwv_flow_api.g_varchar2_table(533) := '2020202020202020202020202020746F2061202E20696E20616E202F732072656765782C20626563617573652074686520737472696E672063616E6E6F7420636F6E7461696E20616E79205C722028746865790D0A2020202020202020202020202F2F20';
wwv_flow_api.g_varchar2_table(534) := '20202020202020202020202020202020202020206172652072656D6F76656420696E20746865206E6F726D616C697A696E672073746570292E0D0A2020202020202020202020202F2F205C325C3220202020202020202020202020202020546865206D61';
wwv_flow_api.g_varchar2_table(535) := '726B6572206368617261637465722C207477696365202D2D20656E64206F6620626F6C642E0D0A2020202020202020202020202F2F20283F215C322920202020202020202020202020204E6F7420666F6C6C6F77656420627920616E6F74686572206D61';
wwv_flow_api.g_varchar2_table(536) := '726B6572206368617261637465722028656E737572696E672074686174207765206D61746368207468650D0A2020202020202020202020202F2F20202020202020202020202020202020202020202072696768746D6F73742074776F20696E2061206C6F';
wwv_flow_api.g_varchar2_table(537) := '6E67657220726F77292E2E2E0D0A2020202020202020202020202F2F20283F3D5B5C575F5D7C24292020202020202020202E2E2E62757420627920616E79206F74686572206E6F6E2D776F726420636861726163746572206F722074686520656E64206F';
wwv_flow_api.g_varchar2_table(538) := '6620737472696E672E0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F285E7C5B5C575F5D29283F3A283F215C31297C283F3D5E2929285C2A7C5F295C32283F3D5C5329285B5E5C725D2A3F5C53295C325C32283F';
wwv_flow_api.g_varchar2_table(539) := '215C3229283F3D5B5C575F5D7C24292F672C0D0A202020202020202020202020202020202224313C7374726F6E673E24333C2F7374726F6E673E22293B0D0A0D0A2020202020202020202020202F2F205468697320697320616C6D6F7374206964656E74';
wwv_flow_api.g_varchar2_table(540) := '6963616C20746F20746865203C7374726F6E673E2072656765782C206578636570742031292074686572652773206F6276696F75736C79206A757374206F6E65206D61726B65720D0A2020202020202020202020202F2F206368617261637465722C2061';
wwv_flow_api.g_varchar2_table(541) := '6E6420322920746865206974616C6963697A656420737472696E672063616E6E6F7420636F6E7461696E20746865206D61726B6572206368617261637465722E0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F28';
wwv_flow_api.g_varchar2_table(542) := '5E7C5B5C575F5D29283F3A283F215C31297C283F3D5E2929285C2A7C5F29283F3D5C532928283F3A283F215C32295B5E5C725D292A3F5C53295C32283F215C3229283F3D5B5C575F5D7C24292F672C0D0A20202020202020202020202020202020222431';
wwv_flow_api.g_varchar2_table(543) := '3C656D3E24333C2F656D3E22293B0D0A0D0A20202020202020202020202072657475726E206465617363696966792874657874293B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F446F4974616C696373416E64426F';
wwv_flow_api.g_varchar2_table(544) := '6C645F416C6C6F77496E747261776F726457697468417374657269736B287465787429207B0D0A0D0A20202020202020202020202069662028746578742E696E6465784F6628222A2229203D3D3D202D3120262620746578742E696E6465784F6628225F';
wwv_flow_api.g_varchar2_table(545) := '2229203D3D3D202D2031290D0A2020202020202020202020202020202072657475726E20746578743B0D0A0D0A20202020202020202020202074657874203D20617363696966792874657874293B0D0A0D0A2020202020202020202020202F2F203C7374';
wwv_flow_api.g_varchar2_table(546) := '726F6E673E206D75737420676F2066697273743A0D0A2020202020202020202020202F2F20283F3D5B5E5C725D5B2A5F5D7C5B2A5F5D292020202020202020202020202020204F7074696D697A6174696F6E206F6E6C792C20746F2066696E6420706F74';
wwv_flow_api.g_varchar2_table(547) := '656E7469616C6C792072656C6576616E74207465787420706F7274696F6E73206661737465722E204D696E696D616C6C7920736C6F77657220696E204368726F6D652C20627574206D7563682066617374657220696E2049452E0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(548) := '202020202F2F2028202020202020202020202020202020202020202020202020202020202020202053746F726520696E205C312E205468697320697320746865206C61737420636861726163746572206265666F7265207468652064656C696D69746572';
wwv_flow_api.g_varchar2_table(549) := '0D0A2020202020202020202020202F2F20202020205E2020202020202020202020202020202020202020202020202020202045697468657220776527726520617420746865207374617274206F662074686520737472696E672028692E652E2074686572';
wwv_flow_api.g_varchar2_table(550) := '65206973206E6F206C61737420636861726163746572292E2E2E0D0A2020202020202020202020202F2F20202020207C202020202020202020202020202020202020202020202020202020202E2E2E206F7220776520616C6C6F77206F6E65206F662074';
wwv_flow_api.g_varchar2_table(551) := '686520666F6C6C6F77696E673A0D0A2020202020202020202020202F2F2020202020283F3D2020202020202020202020202020202020202020202020202020286C6F6F6B61686561643B207765277265206E6F7420636170747572696E6720746869732C';
wwv_flow_api.g_varchar2_table(552) := '206A757374206C697374696E67206C6567616C20706F73736962696C6974696573290D0A2020202020202020202020202F2F2020202020202020205C575F5F2020202020202020202020202020202020202020204966207468652064656C696D69746572';
wwv_flow_api.g_varchar2_table(553) := '206973205F5F2C207468656E2074686973206C61737420636861726163746572206D757374206265206E6F6E2D776F7264206E6F6E2D756E64657273636F7265202865787472612D776F726420656D706861736973206F6E6C79290D0A20202020202020';
wwv_flow_api.g_varchar2_table(554) := '20202020202F2F2020202020202020207C0D0A2020202020202020202020202F2F202020202020202020283F215C2A295B5C575F5D5C2A5C2A202020202020202020204966207468652064656C696D69746572206973202A2A2C207468656E2074686973';
wwv_flow_api.g_varchar2_table(555) := '206C617374206368617261637465722063616E206265206E6F6E2D776F7264206E6F6E2D617374657269736B202865787472612D776F726420656D706861736973292E2E2E0D0A2020202020202020202020202F2F2020202020202020207C0D0A202020';
wwv_flow_api.g_varchar2_table(556) := '2020202020202020202F2F2020202020202020205C775C2A5C2A5C7720202020202020202020202020202020202E2E2E6F722069742063616E20626520776F72642F756E64657273636F72652C20627574206F6E6C792069662074686520666972737420';
wwv_flow_api.g_varchar2_table(557) := '626F6C6465642063686172616374657220697320737563682061206368617261637465722061732077656C6C2028696E7472612D776F726420656D706861736973290D0A2020202020202020202020202F2F2020202020290D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(558) := '20202F2F20202020205B5E5C725D20202020202020202020202020202020202020202020202061637475616C6C7920636170747572652074686520636861726163746572202863616E27742075736520602E602073696E636520697420636F756C642062';
wwv_flow_api.g_varchar2_table(559) := '65205C6E290D0A2020202020202020202020202F2F20290D0A2020202020202020202020202F2F20285C2A5C2A7C5F5F2920202020202020202020202020202020202020202020202053746F726520696E205C323A207468652061637475616C2064656C';
wwv_flow_api.g_varchar2_table(560) := '696D697465720D0A2020202020202020202020202F2F20283F215C32292020202020202020202020202020202020202020202020202020206E6F7420666F6C6C6F776564206279207468652064656C696D6974657220616761696E20286174206D6F7374';
wwv_flow_api.g_varchar2_table(561) := '206F6E65206D6F726520617374657269736B2F756E64657273636F726520697320616C6C6F776564290D0A2020202020202020202020202F2F20283F3D5C5329202020202020202020202020202020202020202020202020202020746865206669727374';
wwv_flow_api.g_varchar2_table(562) := '20626F6C646564206368617261637465722063616E277420626520612073706163650D0A2020202020202020202020202F2F2028202020202020202020202020202020202020202020202020202020202020202053746F726520696E205C333A20746865';
wwv_flow_api.g_varchar2_table(563) := '20626F6C64656420737472696E670D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2020202020283F3A7C202020202020202020202020202020202020202020202020204C6F6F6B20617420616C6C20626F6C6465642063';
wwv_flow_api.g_varchar2_table(564) := '6861726163746572732065786365707420666F7220746865206C617374206F6E652E204569746865722074686174277320656D7074792C206D65616E696E67206F6E6C7920612073696E676C65206368617261637465722077617320626F6C6465642E2E';
wwv_flow_api.g_varchar2_table(565) := '2E0D0A2020202020202020202020202F2F202020202020205B5E5C725D2A3F20202020202020202020202020202020202020202E2E2E206F74686572776973652074616B652061726269747261727920636861726163746572732C206D696E696D616C6C';
wwv_flow_api.g_varchar2_table(566) := '79206D61746368696E673B2074686174277320616C6C20626F6C64656420636861726163746572732065786365707420666F7220746865206C617374202A74776F2A0D0A2020202020202020202020202F2F20202020202020283F215C32292020202020';
wwv_flow_api.g_varchar2_table(567) := '202020202020202020202020202020202020746865206C6173742074776F20636861726163746572732063616E6E6F74206265207468652064656C696D6974657220697473656C66202862656361757365207468617420776F756C64206D65616E20666F';
wwv_flow_api.g_varchar2_table(568) := '757220756E64657273636F7265732F617374657269736B7320696E206120726F77290D0A2020202020202020202020202F2F202020202020205B5E5C725D2020202020202020202020202020202020202020202020206361707475726520746865206E65';
wwv_flow_api.g_varchar2_table(569) := '78742D746F2D6C61737420626F6C646564206368617261637465720D0A2020202020202020202020202F2F2020202020290D0A2020202020202020202020202F2F2020202020283F3D20202020202020202020202020202020202020202020202020206C';
wwv_flow_api.g_varchar2_table(570) := '6F6F6B6168656164206174207468652076657279206C61737420626F6C646564206368617220616E64207768617420636F6D65732061667465720D0A2020202020202020202020202F2F2020202020202020205C535F2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(571) := '2020202020202020666F7220756E64657273636F72652D626F6C64696E672C2069742063616E20626520616E79206E6F6E2D73706163650D0A2020202020202020202020202F2F2020202020202020207C0D0A2020202020202020202020202F2F202020';
wwv_flow_api.g_varchar2_table(572) := '2020202020205C772020202020202020202020202020202020202020202020666F7220617374657269736B2D626F6C64696E6720286F7468657277697365207468652070726576696F757320616C7465726E617469766520776F756C64277665206D6174';
wwv_flow_api.g_varchar2_table(573) := '636865642C2073696E6365205C7720696D706C696573205C53292C2065697468657220746865206C617374206368617220697320776F72642F756E64657273636F72652E2E2E0D0A2020202020202020202020202F2F2020202020202020207C0D0A2020';
wwv_flow_api.g_varchar2_table(574) := '202020202020202020202F2F2020202020202020205C535C2A5C2A283F3A5B5C575F5D7C242920202020202020202E2E2E206F72206974277320616E79206F74686572206E6F6E2D73706163652C2062757420696E207468617420636173652074686520';
wwv_flow_api.g_varchar2_table(575) := '636861726163746572202A61667465722A207468652064656C696D69746572206D6179206E6F74206265206120776F7264206368617261637465720D0A2020202020202020202020202F2F2020202020290D0A2020202020202020202020202F2F202020';
wwv_flow_api.g_varchar2_table(576) := '20202E2020202020202020202020202020202020202020202020202020202061637475616C6C79206361707475726520746865206C61737420636861726163746572202863616E2075736520602E6020746869732074696D652062656361757365207468';
wwv_flow_api.g_varchar2_table(577) := '65206C6F6F6B616865616420656E7375726573205C5320696E20616C6C206361736573290D0A2020202020202020202020202F2F20290D0A2020202020202020202020202F2F20283F3D2020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(578) := '202020206C6F6F6B61686561643B206C69737420746865206C6567616C20706F73736962696C697469657320666F722074686520636C6F73696E672064656C696D6974657220616E642069747320666F6C6C6F77696E67206368617261637465720D0A20';
wwv_flow_api.g_varchar2_table(579) := '20202020202020202020202F2F20202020205F5F283F3A5C577C242920202020202020202020202020202020202020666F7220756E64657273636F72652D626F6C64696E672C2074686520666F6C6C6F77696E6720636861726163746572202869662061';
wwv_flow_api.g_varchar2_table(580) := '6E7929206D757374206265206E6F6E2D776F7264206E6F6E2D756E64657273636F72650D0A2020202020202020202020202F2F20202020207C0D0A2020202020202020202020202F2F20202020205C2A5C2A283F3A5B5E2A5D7C24292020202020202020';
wwv_flow_api.g_varchar2_table(581) := '20202020202020666F7220617374657269736B2D626F6C64696E672C20616E79206E6F6E2D617374657269736B20697320616C6C6F77656420286E6F746520776520616C726561647920656E73757265642061626F766520746861742069742773206E6F';
wwv_flow_api.g_varchar2_table(582) := '74206120776F72642063686172616374657220696620746865206C61737420626F6C64656420636861726163746572207761736E2774206F6E65290D0A2020202020202020202020202F2F20290D0A2020202020202020202020202F2F205C3220202020';
wwv_flow_api.g_varchar2_table(583) := '20202020202020202020202020202020202020202020202020202061637475616C6C7920636170747572652074686520636C6F73696E672064656C696D697465722028616E64206D616B6520737572652074686174206974206D61746368657320746865';
wwv_flow_api.g_varchar2_table(584) := '206F70656E696E67206F6E65290D0A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F283F3D5B5E5C725D5B2A5F5D7C5B2A5F5D29285E7C283F3D5C575F5F7C283F215C2A295B5C575F5D5C2A5C2A7C5C775C2A5C';
wwv_flow_api.g_varchar2_table(585) := '2A5C77295B5E5C725D29285C2A5C2A7C5F5F29283F215C3229283F3D5C532928283F3A7C5B5E5C725D2A3F283F215C32295B5E5C725D29283F3D5C535F7C5C777C5C535C2A5C2A283F3A5B5C575F5D7C2429292E29283F3D5F5F283F3A5C577C24297C5C';
wwv_flow_api.g_varchar2_table(586) := '2A5C2A283F3A5B5E2A5D7C2429295C322F672C0D0A202020202020202020202020202020202224313C7374726F6E673E24333C2F7374726F6E673E22293B0D0A0D0A2020202020202020202020202F2F206E6F77203C656D3E3A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(587) := '202020202F2F20283F3D5B5E5C725D5B2A5F5D7C5B2A5F5D292020202020202020202020202020204F7074696D697A6174696F6E2C207365652061626F76652E0D0A2020202020202020202020202F2F2028202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(588) := '202020202020202020202020202053746F726520696E205C312E205468697320697320746865206C61737420636861726163746572206265666F7265207468652064656C696D697465720D0A2020202020202020202020202F2F20202020205E20202020';
wwv_flow_api.g_varchar2_table(589) := '20202020202020202020202020202020202020202020202045697468657220776527726520617420746865207374617274206F662074686520737472696E672028692E652E207468657265206973206E6F206C61737420636861726163746572292E2E2E';
wwv_flow_api.g_varchar2_table(590) := '0D0A2020202020202020202020202F2F20202020207C202020202020202020202020202020202020202020202020202020202E2E2E206F7220776520616C6C6F77206F6E65206F662074686520666F6C6C6F77696E673A0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(591) := '202F2F2020202020283F3D2020202020202020202020202020202020202020202020202020286C6F6F6B61686561643B207765277265206E6F7420636170747572696E6720746869732C206A757374206C697374696E67206C6567616C20706F73736962';
wwv_flow_api.g_varchar2_table(592) := '696C6974696573290D0A2020202020202020202020202F2F2020202020202020205C575F202020202020202020202020202020202020202020204966207468652064656C696D69746572206973205F2C207468656E2074686973206C6173742063686172';
wwv_flow_api.g_varchar2_table(593) := '6163746572206D757374206265206E6F6E2D776F7264206E6F6E2D756E64657273636F7265202865787472612D776F726420656D706861736973206F6E6C79290D0A2020202020202020202020202F2F2020202020202020207C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(594) := '202020202F2F202020202020202020283F215C2A29202020202020202020202020202020202020206F74686572776973652C207765206C6973742074776F20706F737369626C697469657320666F72202A206173207468652064656C696D697465723B20';
wwv_flow_api.g_varchar2_table(595) := '696E2065697468657220636173652C20746865206C61737420636861726163746572732063616E6E6F7420626520616E20617374657269736B20697473656C660D0A2020202020202020202020202F2F202020202020202020283F3A0D0A202020202020';
wwv_flow_api.g_varchar2_table(596) := '2020202020202F2F202020202020202020202020205B5C575F5D5C2A202020202020202020202020202074686973206C617374206368617261637465722063616E206265206E6F6E2D776F7264202865787472612D776F726420656D706861736973292E';
wwv_flow_api.g_varchar2_table(597) := '2E2E0D0A2020202020202020202020202F2F202020202020202020202020207C0D0A2020202020202020202020202F2F202020202020202020202020205C445C2A283F3D5C77295C442020202020202020202E2E2E6F722069742063616E20626520776F';
wwv_flow_api.g_varchar2_table(598) := '726420286F74686572776973652074686520666972737420616C7465726E617469766520776F756C64277665206D617463686564292C20627574206F6E6C792069660D0A2020202020202020202020202F2F202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(599) := '2020202020202020202020202020202020202020612920746865206669727374206974616C6963697A65642063686172616374657220697320737563682061206368617261637465722061732077656C6C2028696E7472612D776F726420656D70686173';
wwv_flow_api.g_varchar2_table(600) := '6973292C20616E640D0A2020202020202020202020202F2F20202020202020202020202020202020202020202020202020202020202020202020202020206229206E65697468657220636861726163746572206F6E206569746865722073696465206F66';
wwv_flow_api.g_varchar2_table(601) := '2074686520617374657269736B20697320612064696769740D0A2020202020202020202020202F2F202020202020202020290D0A2020202020202020202020202F2F2020202020290D0A2020202020202020202020202F2F20202020205B5E5C725D2020';
wwv_flow_api.g_varchar2_table(602) := '2020202020202020202020202020202020202020202061637475616C6C7920636170747572652074686520636861726163746572202863616E27742075736520602E602073696E636520697420636F756C64206265205C6E290D0A202020202020202020';
wwv_flow_api.g_varchar2_table(603) := '2020202F2F20290D0A2020202020202020202020202F2F20285C2A7C5F2920202020202020202020202020202020202020202020202020202053746F726520696E205C323A207468652061637475616C2064656C696D697465720D0A2020202020202020';
wwv_flow_api.g_varchar2_table(604) := '202020202F2F20283F215C325C325C322920202020202020202020202020202020202020202020206E6F7420666F6C6C6F776564206279206D6F7265207468616E2074776F206D6F726520696E7374616E636573206F66207468652064656C696D697465';
wwv_flow_api.g_varchar2_table(605) := '720D0A2020202020202020202020202F2F20283F3D5C5329202020202020202020202020202020202020202020202020202020746865206669727374206974616C6963697A6564206368617261637465722063616E277420626520612073706163650D0A';
wwv_flow_api.g_varchar2_table(606) := '2020202020202020202020202F2F2028202020202020202020202020202020202020202020202020202020202020202053746F726520696E205C333A20746865206974616C6963697A656420737472696E670D0A2020202020202020202020202F2F2020';
wwv_flow_api.g_varchar2_table(607) := '202020283F3A283F215C32295B5E5C725D292A3F20202020202020202020202061726269747261727920636861726163746572732065786365707420666F72207468652064656C696D6974657220697473656C662C206D696E696D616C6C79206D617463';
wwv_flow_api.g_varchar2_table(608) := '68696E670D0A2020202020202020202020202F2F2020202020283F3D20202020202020202020202020202020202020202020202020206C6F6F6B6168656164206174207468652076657279206C617374206974616C6963697A6564206368617220616E64';
wwv_flow_api.g_varchar2_table(609) := '207768617420636F6D65732061667465720D0A2020202020202020202020202F2F2020202020202020205B5E5C735F5D5F202020202020202020202020202020202020666F7220756E64657273636F72652D6974616C6963697A696E672C206974206361';
wwv_flow_api.g_varchar2_table(610) := '6E20626520616E79206E6F6E2D7370616365206E6F6E2D756E64657273636F72650D0A2020202020202020202020202F2F2020202020202020207C0D0A2020202020202020202020202F2F202020202020202020283F3D5C77295C445C2A5C4420202020';
wwv_flow_api.g_varchar2_table(611) := '202020202020202020666F7220617374657269736B2D6974616C6963697A696E672C2065697468657220746865206C617374206368617220697320776F72642F756E64657273636F7265202A616E642A206E65697468657220636861726163746572206F';
wwv_flow_api.g_varchar2_table(612) := '6E206569746865722073696465206F662074686520617374657269736B20697320612064696769742E2E2E0D0A2020202020202020202020202F2F2020202020202020207C0D0A2020202020202020202020202F2F2020202020202020205B5E5C732A5D';
wwv_flow_api.g_varchar2_table(613) := '5C2A283F3A5B5C575F5D7C24292020202020202E2E2E206F722074686174206C617374206368617220697320616E79206F74686572206E6F6E2D7370616365206E6F6E2D617374657269736B2C20627574207468656E2074686520636861726163746572';
wwv_flow_api.g_varchar2_table(614) := '206166746572207468652064656C696D697465722028696620616E7929206D757374206265206E6F6E2D776F72640D0A2020202020202020202020202F2F2020202020290D0A2020202020202020202020202F2F20202020202E20202020202020202020';
wwv_flow_api.g_varchar2_table(615) := '20202020202020202020202020202020202061637475616C6C79206361707475726520746865206C61737420636861726163746572202863616E2075736520602E6020746869732074696D65206265636175736520746865206C6F6F6B61686561642065';
wwv_flow_api.g_varchar2_table(616) := '6E7375726573205C5320696E20616C6C206361736573290D0A2020202020202020202020202F2F20290D0A2020202020202020202020202F2F20283F3D2020202020202020202020202020202020202020202020202020202020206C6F6F6B6168656164';
wwv_flow_api.g_varchar2_table(617) := '3B206C69737420746865206C6567616C20706F73736962696C697469657320666F722074686520636C6F73696E672064656C696D6974657220616E642069747320666F6C6C6F77696E67206368617261637465720D0A2020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(618) := '20202020205F283F3A5C577C24292020202020202020202020202020202020202020666F7220756E64657273636F72652D6974616C6963697A696E672C2074686520666F6C6C6F77696E67206368617261637465722028696620616E7929206D75737420';
wwv_flow_api.g_varchar2_table(619) := '6265206E6F6E2D776F7264206E6F6E2D756E64657273636F72650D0A2020202020202020202020202F2F20202020207C0D0A2020202020202020202020202F2F20202020205C2A283F3A5B5E2A5D7C24292020202020202020202020202020202020666F';
wwv_flow_api.g_varchar2_table(620) := '7220617374657269736B2D6974616C6963697A696E672C20616E79206E6F6E2D617374657269736B20697320616C6C6F7765643B20616C6C206F74686572207265737472696374696F6E73206861766520616C7265616479206265656E20656E73757265';
wwv_flow_api.g_varchar2_table(621) := '6420696E207468652070726576696F7573206C6F6F6B61686561640D0A2020202020202020202020202F2F20290D0A2020202020202020202020202F2F205C32202020202020202020202020202020202020202020202020202020202020206163747561';
wwv_flow_api.g_varchar2_table(622) := '6C6C7920636170747572652074686520636C6F73696E672064656C696D697465722028616E64206D616B6520737572652074686174206974206D61746368657320746865206F70656E696E67206F6E65290D0A0D0A202020202020202020202020746578';
wwv_flow_api.g_varchar2_table(623) := '74203D20746578742E7265706C616365282F283F3D5B5E5C725D5B2A5F5D7C5B2A5F5D29285E7C283F3D5C575F7C283F215C2A29283F3A5B5C575F5D5C2A7C5C445C2A283F3D5C77295C4429295B5E5C725D29285C2A7C5F29283F215C325C325C322928';
wwv_flow_api.g_varchar2_table(624) := '3F3D5C532928283F3A283F215C32295B5E5C725D292A3F283F3D5B5E5C735F5D5F7C283F3D5C77295C445C2A5C447C5B5E5C732A5D5C2A283F3A5B5C575F5D7C2429292E29283F3D5F283F3A5C577C24297C5C2A283F3A5B5E2A5D7C2429295C322F672C';
wwv_flow_api.g_varchar2_table(625) := '0D0A202020202020202020202020202020202224313C656D3E24333C2F656D3E22293B0D0A0D0A20202020202020202020202072657475726E206465617363696966792874657874293B0D0A20202020202020207D0D0A0D0A0D0A202020202020202066';
wwv_flow_api.g_varchar2_table(626) := '756E6374696F6E205F446F426C6F636B51756F746573287465787429207B0D0A0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A2020202020202020202020202028';
wwv_flow_api.g_varchar2_table(627) := '2020202020202020202020202020202020202020202020202020202F2F20577261702077686F6C65206D6174636820696E2024310D0A20202020202020202020202020280D0A202020202020202020202020205E5B205C745D2A3E5B205C745D3F202020';
wwv_flow_api.g_varchar2_table(628) := '2020202F2F20273E2720617420746865207374617274206F662061206C696E650D0A202020202020202020202020202E2B5C6E202020202020202020202020202020202F2F2072657374206F6620746865206669727374206C696E650D0A202020202020';
wwv_flow_api.g_varchar2_table(629) := '20202020202020282E2B5C6E292A202020202020202020202020202F2F2073756273657175656E7420636F6E7365637574697665206C696E65730D0A202020202020202020202020205C6E2A20202020202020202020202020202020202F2F20626C616E';
wwv_flow_api.g_varchar2_table(630) := '6B730D0A20202020202020202020202020292B0D0A20202020202020202020202020290D0A202020202020202020202020202F676D2C2066756E6374696F6E28297B2E2E2E7D293B0D0A202020202020202020202020202A2F0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(631) := '202020202074657874203D20746578742E7265706C616365282F28285E5B205C745D2A3E5B205C745D3F2E2B5C6E282E2B5C6E292A5C6E2A292B292F676D2C0D0A2020202020202020202020202020202066756E6374696F6E202877686F6C654D617463';
wwv_flow_api.g_varchar2_table(632) := '682C206D3129207B0D0A2020202020202020202020202020202020202020766172206271203D206D313B0D0A0D0A20202020202020202020202020202020202020202F2F2061747461636B6C61623A206861636B2061726F756E64204B6F6E717565726F';
wwv_flow_api.g_varchar2_table(633) := '7220332E352E34206275673A0D0A20202020202020202020202020202020202020202F2F20222D2D2D2D2D2D2D2D2D2D627567222E7265706C616365282F5E2D2F672C222229203D3D2022627567220D0A0D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(634) := '2020206271203D2062712E7265706C616365282F5E5B205C745D2A3E5B205C745D3F2F676D2C20227E3022293B202F2F207472696D206F6E65206C6576656C206F662071756F74696E670D0A0D0A20202020202020202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(635) := '2061747461636B6C61623A20636C65616E207570206861636B0D0A20202020202020202020202020202020202020206271203D2062712E7265706C616365282F7E302F672C202222293B0D0A0D0A20202020202020202020202020202020202020206271';
wwv_flow_api.g_varchar2_table(636) := '203D2062712E7265706C616365282F5E5B205C745D2B242F676D2C202222293B20202020202F2F207472696D20776869746573706163652D6F6E6C79206C696E65730D0A20202020202020202020202020202020202020206271203D205F52756E426C6F';
wwv_flow_api.g_varchar2_table(637) := '636B47616D7574286271293B202020202020202020202020202F2F20726563757273650D0A0D0A20202020202020202020202020202020202020206271203D2062712E7265706C616365282F285E7C5C6E292F672C20222431202022293B0D0A20202020';
wwv_flow_api.g_varchar2_table(638) := '202020202020202020202020202020202F2F205468657365206C656164696E67207370616365732073637265772077697468203C7072653E20636F6E74656E742C20736F207765206E65656420746F2066697820746861743A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(639) := '20202020202020202020206271203D2062712E7265706C616365280D0A2020202020202020202020202020202020202020202020202F285C732A3C7072653E5B5E5C725D2B3F3C5C2F7072653E292F676D2C0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(640) := '202020202020202066756E6374696F6E202877686F6C654D617463682C206D3129207B0D0A2020202020202020202020202020202020202020202020202020202076617220707265203D206D313B0D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(641) := '20202020202020202F2F2061747461636B6C61623A206861636B2061726F756E64204B6F6E717565726F7220332E352E34206275673A0D0A20202020202020202020202020202020202020202020202020202020707265203D207072652E7265706C6163';
wwv_flow_api.g_varchar2_table(642) := '65282F5E20202F6D672C20227E3022293B0D0A20202020202020202020202020202020202020202020202020202020707265203D207072652E7265706C616365282F7E302F672C202222293B0D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(643) := '20202020202072657475726E207072653B0D0A2020202020202020202020202020202020202020202020207D293B0D0A0D0A202020202020202020202020202020202020202072657475726E2068617368426C6F636B28223C626C6F636B71756F74653E';
wwv_flow_api.g_varchar2_table(644) := '5C6E22202B206271202B20225C6E3C2F626C6F636B71756F74653E22293B0D0A202020202020202020202020202020207D0D0A202020202020202020202020293B0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(645) := '207D0D0A0D0A202020202020202066756E6374696F6E205F466F726D5061726167726170687328746578742C20646F4E6F74556E686173682C20646F4E6F744372656174655061726167726170687329207B0D0A2020202020202020202020202F2F0D0A';
wwv_flow_api.g_varchar2_table(646) := '2020202020202020202020202F2F2020506172616D733A0D0A2020202020202020202020202F2F202020202474657874202D20737472696E6720746F2070726F6365737320776974682068746D6C203C703E20746167730D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(647) := '202F2F0D0A0D0A2020202020202020202020202F2F205374726970206C656164696E6720616E6420747261696C696E67206C696E65733A0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5E5C6E2B2F672C202222';
wwv_flow_api.g_varchar2_table(648) := '293B0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F5C6E2B242F672C202222293B0D0A0D0A202020202020202020202020766172206772616673203D20746578742E73706C6974282F5C6E7B322C7D2F67293B0D';
wwv_flow_api.g_varchar2_table(649) := '0A2020202020202020202020207661722067726166734F7574203D205B5D3B0D0A0D0A202020202020202020202020766172206D61726B65725265203D202F7E4B285C642B294B2F3B0D0A0D0A2020202020202020202020202F2F0D0A20202020202020';
wwv_flow_api.g_varchar2_table(650) := '20202020202F2F2057726170203C703E20746167732E0D0A2020202020202020202020202F2F0D0A20202020202020202020202076617220656E64203D2067726166732E6C656E6774683B0D0A202020202020202020202020666F722028766172206920';
wwv_flow_api.g_varchar2_table(651) := '3D20303B2069203C20656E643B20692B2B29207B0D0A2020202020202020202020202020202076617220737472203D2067726166735B695D3B0D0A0D0A202020202020202020202020202020202F2F206966207468697320697320616E2048544D4C206D';
wwv_flow_api.g_varchar2_table(652) := '61726B65722C20636F70792069740D0A20202020202020202020202020202020696620286D61726B657252652E74657374287374722929207B0D0A202020202020202020202020202020202020202067726166734F75742E7075736828737472293B0D0A';
wwv_flow_api.g_varchar2_table(653) := '202020202020202020202020202020207D0D0A20202020202020202020202020202020656C736520696620282F5C532F2E74657374287374722929207B0D0A2020202020202020202020202020202020202020737472203D205F52756E5370616E47616D';
wwv_flow_api.g_varchar2_table(654) := '757428737472293B0D0A2020202020202020202020202020202020202020737472203D207374722E7265706C616365282F5E285B205C745D2A292F672C20646F4E6F7443726561746550617261677261706873203F202222203A20223C703E22293B0D0A';
wwv_flow_api.g_varchar2_table(655) := '20202020202020202020202020202020202020206966202821646F4E6F7443726561746550617261677261706873290D0A202020202020202020202020202020202020202020202020737472202B3D20223C2F703E223B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(656) := '20202020202020202067726166734F75742E7075736828737472293B0D0A202020202020202020202020202020207D0D0A0D0A2020202020202020202020207D0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F20556E68';
wwv_flow_api.g_varchar2_table(657) := '6173686966792048544D4C20626C6F636B730D0A2020202020202020202020202F2F0D0A2020202020202020202020206966202821646F4E6F74556E6861736829207B0D0A20202020202020202020202020202020656E64203D2067726166734F75742E';
wwv_flow_api.g_varchar2_table(658) := '6C656E6774683B0D0A20202020202020202020202020202020666F7220287661722069203D20303B2069203C20656E643B20692B2B29207B0D0A202020202020202020202020202020202020202076617220666F756E64416E79203D20747275653B0D0A';
wwv_flow_api.g_varchar2_table(659) := '20202020202020202020202020202020202020207768696C652028666F756E64416E7929207B202F2F207765206D6179206E656564207365766572616C2072756E732C2073696E6365207468652064617461206D6179206265206E65737465640D0A2020';
wwv_flow_api.g_varchar2_table(660) := '20202020202020202020202020202020202020202020666F756E64416E79203D2066616C73653B0D0A20202020202020202020202020202020202020202020202067726166734F75745B695D203D2067726166734F75745B695D2E7265706C616365282F';
wwv_flow_api.g_varchar2_table(661) := '7E4B285C642B294B2F672C2066756E6374696F6E202877686F6C654D617463682C20696429207B0D0A20202020202020202020202020202020202020202020202020202020666F756E64416E79203D20747275653B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(662) := '20202020202020202020202020202072657475726E20675F68746D6C5F626C6F636B735B69645D3B0D0A2020202020202020202020202020202020202020202020207D293B0D0A20202020202020202020202020202020202020207D0D0A202020202020';
wwv_flow_api.g_varchar2_table(663) := '202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020202020202072657475726E2067726166734F75742E6A6F696E28225C6E5C6E22293B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E';
wwv_flow_api.g_varchar2_table(664) := '205F456E636F6465416D7073416E64416E676C6573287465787429207B0D0A2020202020202020202020202F2F20536D6172742070726F63657373696E6720666F7220616D70657273616E647320616E6420616E676C6520627261636B65747320746861';
wwv_flow_api.g_varchar2_table(665) := '74206E65656420746F20626520656E636F6465642E0D0A0D0A2020202020202020202020202F2F20416D70657273616E642D656E636F64696E6720626173656420656E746972656C79206F6E204E61742049726F6E73277320416D70757461746F72204D';
wwv_flow_api.g_varchar2_table(666) := '5420706C7567696E3A0D0A2020202020202020202020202F2F202020687474703A2F2F62756D70706F2E6E65742F70726F6A656374732F616D70757461746F722F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F';
wwv_flow_api.g_varchar2_table(667) := '26283F21233F5B78585D3F283F3A5B302D39612D66412D465D2B7C5C772B293B292F672C202226616D703B22293B0D0A0D0A2020202020202020202020202F2F20456E636F6465206E616B6564203C27730D0A2020202020202020202020207465787420';
wwv_flow_api.g_varchar2_table(668) := '3D20746578742E7265706C616365282F3C283F215B612D7A5C2F3F215D7C7E44292F67692C2022266C743B22293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E';
wwv_flow_api.g_varchar2_table(669) := '6374696F6E205F456E636F64654261636B736C61736845736361706573287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F202020506172616D657465723A2020537472696E672E0D0A20202020202020';
wwv_flow_api.g_varchar2_table(670) := '20202020202F2F20202052657475726E733A2020202054686520737472696E672C20776974682061667465722070726F63657373696E672074686520666F6C6C6F77696E67206261636B736C6173680D0A2020202020202020202020202F2F2020202020';
wwv_flow_api.g_varchar2_table(671) := '202020202020202020206573636170652073657175656E6365732E0D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A2054686520706F6C6974652077617920746F20646F20746869732069';
wwv_flow_api.g_varchar2_table(672) := '73207769746820746865206E65770D0A2020202020202020202020202F2F206573636170654368617261637465727328292066756E6374696F6E3A0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F202020202074657874';
wwv_flow_api.g_varchar2_table(673) := '203D206573636170654368617261637465727328746578742C225C5C222C74727565293B0D0A2020202020202020202020202F2F202020202074657874203D206573636170654368617261637465727328746578742C22602A5F7B7D5B5D28293E232B2D';
wwv_flow_api.g_varchar2_table(674) := '2E21222C74727565293B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F202E2E2E62757420776527726520736964657374657070696E672069747320757365206F66207468652028736C6F77292052656745787020636F';
wwv_flow_api.g_varchar2_table(675) := '6E7374727563746F720D0A2020202020202020202020202F2F20617320616E206F7074696D697A6174696F6E20666F722046697265666F782E2020546869732066756E6374696F6E20676574732063616C6C65642061204C4F542E0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(676) := '2020202020202074657874203D20746578742E7265706C616365282F5C5C285C5C292F672C20657363617065436861726163746572735F63616C6C6261636B293B0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F';
wwv_flow_api.g_varchar2_table(677) := '5C5C285B602A5F7B7D5C5B5C5D28293E232B2D2E215D292F672C20657363617065436861726163746572735F63616C6C6261636B293B0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(678) := '2020207661722063686172496E7369646555726C203D20225B2D412D5A302D392B2640232F253F3D7E5F7C5B5C5C5D2829213A2C2E3B5D222C0D0A20202020202020202020202063686172456E64696E6755726C203D20225B2D412D5A302D392B264023';
wwv_flow_api.g_varchar2_table(679) := '2F253D7E5F7C5B5C5C5D295D222C0D0A2020202020202020202020206175746F4C696E6B5265676578203D206E6577205265674578702822283D5C227C3C293F5C5C622868747470733F7C66747029283A2F2F22202B2063686172496E7369646555726C';
wwv_flow_api.g_varchar2_table(680) := '202B20222A22202B2063686172456E64696E6755726C202B202229283F3D247C5C5C5729222C2022676922292C0D0A202020202020202020202020656E64436861725265676578203D206E6577205265674578702863686172456E64696E6755726C2C20';
wwv_flow_api.g_varchar2_table(681) := '226922293B0D0A0D0A202020202020202066756E6374696F6E2068616E646C65547261696C696E67506172656E732877686F6C654D617463682C206C6F6F6B626568696E642C2070726F746F636F6C2C206C696E6B29207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(682) := '2020696620286C6F6F6B626568696E64290D0A2020202020202020202020202020202072657475726E2077686F6C654D617463683B0D0A202020202020202020202020696620286C696E6B2E636861724174286C696E6B2E6C656E677468202D20312920';
wwv_flow_api.g_varchar2_table(683) := '213D3D20222922290D0A2020202020202020202020202020202072657475726E20223C22202B2070726F746F636F6C202B206C696E6B202B20223E223B0D0A20202020202020202020202076617220706172656E73203D206C696E6B2E6D61746368282F';
wwv_flow_api.g_varchar2_table(684) := '5B28295D2F67293B0D0A202020202020202020202020766172206C6576656C203D20303B0D0A202020202020202020202020666F7220287661722069203D20303B2069203C20706172656E732E6C656E6774683B20692B2B29207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(685) := '20202020202020202069662028706172656E735B695D203D3D3D2022282229207B0D0A2020202020202020202020202020202020202020696620286C6576656C203C3D2030290D0A2020202020202020202020202020202020202020202020206C657665';
wwv_flow_api.g_varchar2_table(686) := '6C203D20313B0D0A2020202020202020202020202020202020202020656C73650D0A2020202020202020202020202020202020202020202020206C6576656C2B2B3B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(687) := '202020656C7365207B0D0A20202020202020202020202020202020202020206C6576656C2D2D3B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A202020202020202020202020766172207461696C203D202222';
wwv_flow_api.g_varchar2_table(688) := '3B0D0A202020202020202020202020696620286C6576656C203C203029207B0D0A20202020202020202020202020202020766172207265203D206E65772052656745787028225C5C297B312C22202B20282D6C6576656C29202B20227D2422293B0D0A20';
wwv_flow_api.g_varchar2_table(689) := '2020202020202020202020202020206C696E6B203D206C696E6B2E7265706C6163652872652C2066756E6374696F6E2028747261696C696E67506172656E7329207B0D0A20202020202020202020202020202020202020207461696C203D20747261696C';
wwv_flow_api.g_varchar2_table(690) := '696E67506172656E733B0D0A202020202020202020202020202020202020202072657475726E2022223B0D0A202020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A202020202020202020202020696620287461696C';
wwv_flow_api.g_varchar2_table(691) := '29207B0D0A20202020202020202020202020202020766172206C61737443686172203D206C696E6B2E636861724174286C696E6B2E6C656E677468202D2031293B0D0A202020202020202020202020202020206966202821656E64436861725265676578';
wwv_flow_api.g_varchar2_table(692) := '2E74657374286C617374436861722929207B0D0A20202020202020202020202020202020202020207461696C203D206C61737443686172202B207461696C3B0D0A20202020202020202020202020202020202020206C696E6B203D206C696E6B2E737562';
wwv_flow_api.g_varchar2_table(693) := '73747228302C206C696E6B2E6C656E677468202D2031293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020202020202072657475726E20223C22202B2070726F746F636F6C202B206C696E6B';
wwv_flow_api.g_varchar2_table(694) := '202B20223E22202B207461696C3B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F446F4175746F4C696E6B73287465787429207B0D0A0D0A2020202020202020202020202F2F206E6F74652074686174206174207468';
wwv_flow_api.g_varchar2_table(695) := '697320706F696E742C20616C6C206F746865722055524C20696E2074686520746578742061726520616C72656164792068797065726C696E6B6564206173203C6120687265663D22223E3C2F613E0D0A2020202020202020202020202F2F202A65786365';
wwv_flow_api.g_varchar2_table(696) := '70742A20666F7220746865203C687474703A2F2F7777772E666F6F2E636F6D3E20636173650D0A0D0A2020202020202020202020202F2F206175746F6D61746963616C6C7920616464203C20616E64203E2061726F756E6420756E61646F726E65642072';
wwv_flow_api.g_varchar2_table(697) := '61772068797065726C696E6B730D0A2020202020202020202020202F2F206D7573742062652070726563656465642062792061206E6F6E2D776F7264206368617261637465722028616E64206E6F74206279203D22206F72203C2920616E6420666F6C6C';
wwv_flow_api.g_varchar2_table(698) := '6F776564206279206E6F6E2D776F72642F454F46206368617261637465720D0A2020202020202020202020202F2F2073696D756C6174696E6720746865206C6F6F6B626568696E6420696E206120636F6E73756D696E6720776179206973206F6B617920';
wwv_flow_api.g_varchar2_table(699) := '686572652C2073696E636520612055524C2063616E206E65697468657220616E64207769746820612022206E6F720D0A2020202020202020202020202F2F20776974682061203C2C20736F207468657265206973206E6F207269736B206F66206F766572';
wwv_flow_api.g_varchar2_table(700) := '6C617070696E67206D6174636865732E0D0A20202020202020202020202074657874203D20746578742E7265706C616365286175746F4C696E6B52656765782C2068616E646C65547261696C696E67506172656E73293B0D0A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(701) := '2020202F2F20206175746F6C696E6B20616E797468696E67206C696B65203C687474703A2F2F6578616D706C652E636F6D3E0D0A0D0A0D0A202020202020202020202020766172207265706C61636572203D2066756E6374696F6E202877686F6C656D61';
wwv_flow_api.g_varchar2_table(702) := '7463682C206D3129207B0D0A202020202020202020202020202020207661722075726C203D206174747269627574655361666555726C286D31293B0D0A0D0A2020202020202020202020202020202072657475726E20223C6120687265663D5C2222202B';
wwv_flow_api.g_varchar2_table(703) := '2075726C202B20225C223E22202B20706C7567696E486F6F6B732E706C61696E4C696E6B54657874286D3129202B20223C2F613E223B0D0A2020202020202020202020207D3B0D0A20202020202020202020202074657874203D20746578742E7265706C';
wwv_flow_api.g_varchar2_table(704) := '616365282F3C282868747470733F7C667470293A5B5E27223E5C735D2B293E2F67692C207265706C61636572293B0D0A0D0A2020202020202020202020202F2F20456D61696C206164647265737365733A203C6164647265737340646F6D61696E2E666F';
wwv_flow_api.g_varchar2_table(705) := '6F3E0D0A2020202020202020202020202F2A0D0A2020202020202020202020202074657874203D20746578742E7265706C616365282F0D0A202020202020202020202020203C0D0A20202020202020202020202020283F3A6D61696C746F3A293F0D0A20';
wwv_flow_api.g_varchar2_table(706) := '202020202020202020202020280D0A202020202020202020202020205B2D2E5C775D2B0D0A202020202020202020202020205C400D0A202020202020202020202020205B2D612D7A302D395D2B285C2E5B2D612D7A302D395D2B292A5C2E5B612D7A5D2B';
wwv_flow_api.g_varchar2_table(707) := '0D0A20202020202020202020202020290D0A202020202020202020202020203E0D0A202020202020202020202020202F67692C205F446F4175746F4C696E6B735F63616C6C6261636B2829293B0D0A202020202020202020202020202A2F0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(708) := '202020202020202020202F2A2064697361626C696E6720656D61696C206175746F6C696E6B696E672C2073696E636520776520646F6E277420646F2074686174206F6E20746865207365727665722C206569746865720D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(709) := '2074657874203D20746578742E7265706C616365282F3C283F3A6D61696C746F3A293F285B2D2E5C775D2B5C405B2D612D7A302D395D2B285C2E5B2D612D7A302D395D2B292A5C2E5B612D7A5D2B293E2F67692C0D0A2020202020202020202020202066';
wwv_flow_api.g_varchar2_table(710) := '756E6374696F6E2877686F6C654D617463682C6D3129207B0D0A2020202020202020202020202072657475726E205F456E636F6465456D61696C4164647265737328205F556E6573636170655370656369616C4368617273286D312920293B0D0A202020';
wwv_flow_api.g_varchar2_table(711) := '202020202020202020207D0D0A20202020202020202020202020293B0D0A202020202020202020202020202A2F0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E637469';
wwv_flow_api.g_varchar2_table(712) := '6F6E205F556E6573636170655370656369616C4368617273287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2053776170206261636B20696E20616C6C20746865207370656369616C20636861726163';
wwv_flow_api.g_varchar2_table(713) := '746572732077652776652068696464656E2E0D0A2020202020202020202020202F2F0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F7E45285C642B29452F672C0D0A202020202020202020202020202020206675';
wwv_flow_api.g_varchar2_table(714) := '6E6374696F6E202877686F6C654D617463682C206D3129207B0D0A20202020202020202020202020202020202020207661722063686172436F6465546F5265706C616365203D207061727365496E74286D31293B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(715) := '20202020202072657475726E20537472696E672E66726F6D43686172436F64652863686172436F6465546F5265706C616365293B0D0A202020202020202020202020202020207D0D0A202020202020202020202020293B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(716) := '2072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E205F4F757464656E74287465787429207B0D0A2020202020202020202020202F2F0D0A2020202020202020202020202F2F2052656D6F7665';
wwv_flow_api.g_varchar2_table(717) := '206F6E65206C6576656C206F66206C696E652D6C656164696E672074616273206F72207370616365730D0A2020202020202020202020202F2F0D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A206861636B2061726F756E64204B';
wwv_flow_api.g_varchar2_table(718) := '6F6E717565726F7220332E352E34206275673A0D0A2020202020202020202020202F2F20222D2D2D2D2D2D2D2D2D2D627567222E7265706C616365282F5E2D2F672C222229203D3D2022627567220D0A0D0A20202020202020202020202074657874203D';
wwv_flow_api.g_varchar2_table(719) := '20746578742E7265706C616365282F5E285C747C5B205D7B312C347D292F676D2C20227E3022293B202F2F2061747461636B6C61623A20675F7461625F77696474680D0A0D0A2020202020202020202020202F2F2061747461636B6C61623A20636C6561';
wwv_flow_api.g_varchar2_table(720) := '6E207570206861636B0D0A20202020202020202020202074657874203D20746578742E7265706C616365282F7E302F672C202222293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(721) := '202020202066756E6374696F6E205F4465746162287465787429207B0D0A20202020202020202020202069662028212F5C742F2E74657374287465787429290D0A2020202020202020202020202020202072657475726E20746578743B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(722) := '20202020202020202076617220737061636573203D205B2220202020222C2022202020222C20222020222C202220225D2C0D0A20202020202020202020202020202020736B6577203D20302C0D0A20202020202020202020202020202020763B0D0A0D0A';
wwv_flow_api.g_varchar2_table(723) := '20202020202020202020202072657475726E20746578742E7265706C616365282F5B5C6E5C745D2F672C2066756E6374696F6E20286D617463682C206F666673657429207B0D0A20202020202020202020202020202020696620286D61746368203D3D3D';
wwv_flow_api.g_varchar2_table(724) := '20225C6E2229207B0D0A2020202020202020202020202020202020202020736B6577203D206F6666736574202B20313B0D0A202020202020202020202020202020202020202072657475726E206D617463683B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(725) := '207D0D0A2020202020202020202020202020202076203D20286F6666736574202D20736B657729202520343B0D0A20202020202020202020202020202020736B6577203D206F6666736574202B20313B0D0A202020202020202020202020202020207265';
wwv_flow_api.g_varchar2_table(726) := '7475726E207370616365735B765D3B0D0A2020202020202020202020207D293B0D0A20202020202020207D0D0A0D0A20202020202020202F2F0D0A20202020202020202F2F202061747461636B6C61623A205574696C6974792066756E6374696F6E730D';
wwv_flow_api.g_varchar2_table(727) := '0A20202020202020202F2F0D0A0D0A202020202020202066756E6374696F6E206174747269627574655361666555726C2875726C29207B0D0A20202020202020202020202075726C203D20617474726962757465456E636F64652875726C293B0D0A2020';
wwv_flow_api.g_varchar2_table(728) := '2020202020202020202075726C203D20657363617065436861726163746572732875726C2C20222A5F3A28295B5D22293B0D0A20202020202020202020202072657475726E2075726C3B0D0A20202020202020207D0D0A0D0A202020202020202066756E';
wwv_flow_api.g_varchar2_table(729) := '6374696F6E206573636170654368617261637465727328746578742C206368617273546F4573636170652C2061667465724261636B736C61736829207B0D0A2020202020202020202020202F2F204669727374207765206861766520746F206573636170';
wwv_flow_api.g_varchar2_table(730) := '652074686520657363617065206368617261637465727320736F20746861740D0A2020202020202020202020202F2F2077652063616E206275696C6420612063686172616374657220636C617373206F7574206F66207468656D0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(731) := '20202020766172207265676578537472696E67203D2022285B22202B206368617273546F4573636170652E7265706C616365282F285B5C5B5C5D5C5C5D292F672C20225C5C24312229202B20225D29223B0D0A0D0A202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(732) := '2861667465724261636B736C61736829207B0D0A202020202020202020202020202020207265676578537472696E67203D20225C5C5C5C22202B207265676578537472696E673B0D0A2020202020202020202020207D0D0A0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(733) := '2020766172207265676578203D206E657720526567457870287265676578537472696E672C20226722293B0D0A20202020202020202020202074657874203D20746578742E7265706C6163652872656765782C2065736361706543686172616374657273';
wwv_flow_api.g_varchar2_table(734) := '5F63616C6C6261636B293B0D0A0D0A20202020202020202020202072657475726E20746578743B0D0A20202020202020207D0D0A0D0A0D0A202020202020202066756E6374696F6E20657363617065436861726163746572735F63616C6C6261636B2877';
wwv_flow_api.g_varchar2_table(735) := '686F6C654D617463682C206D3129207B0D0A2020202020202020202020207661722063686172436F6465546F457363617065203D206D312E63686172436F646541742830293B0D0A20202020202020202020202072657475726E20227E4522202B206368';
wwv_flow_api.g_varchar2_table(736) := '6172436F6465546F457363617065202B202245223B0D0A20202020202020207D0D0A0D0A202020207D3B202F2F20656E64206F6620746865204D61726B646F776E2E436F6E76657274657220636F6E7374727563746F720D0A0D0A7D2928293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(737) := '0D0A2F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F20283229204D61726B646F776E2045';
wwv_flow_api.g_varchar2_table(738) := '6469746F720D0A2F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A2F2F204D6F6469666963';
wwv_flow_api.g_varchar2_table(739) := '6174696F6E20666F72204F7261636C6520415045583A0D0A2F2F2050726F626C656D3A205468652049442773206F662074686520746578746172656173206E6565647320746F206861766520746865204150455820494427732C20666F72206D61726B64';
wwv_flow_api.g_varchar2_table(740) := '6F776E2074686973206E6565647320746F2062652022776D642D696E70757422202B20706F73746669782E0D0A2F2F20536F6C7574696F6E3A204E657720706172616D6174657220746F2075736520746865204150455820494427732028736561726368';
wwv_flow_api.g_varchar2_table(741) := '20666F722022696441504558222C20666F7572206F63637572656E636573290D0A0D0A2F2F206E65656473204D61726B646F776E2E436F6E7665727465722E6A7320617420746865206D6F6D656E740D0A0D0A2866756E6374696F6E202829207B0D0A0D';
wwv_flow_api.g_varchar2_table(742) := '0A20202020766172207574696C203D207B7D2C0D0A2020202020202020706F736974696F6E203D207B7D2C0D0A20202020202020207569203D207B7D2C0D0A2020202020202020646F63203D2077696E646F772E646F63756D656E742C0D0A2020202020';
wwv_flow_api.g_varchar2_table(743) := '2020207265203D2077696E646F772E5265674578702C0D0A20202020202020206E6176203D2077696E646F772E6E6176696761746F722C0D0A202020202020202053455454494E4753203D207B206C696E654C656E6774683A203732207D2C0D0A0D0A20';
wwv_flow_api.g_varchar2_table(744) := '2020202F2F205573656420746F20776F726B2061726F756E6420736F6D652062726F7773657220627567732077686572652077652063616E27742075736520666561747572652074657374696E672E0D0A20202020202020207561536E6966666564203D';
wwv_flow_api.g_varchar2_table(745) := '207B0D0A202020202020202020202020697349453A202F6D7369652F2E74657374286E61762E757365724167656E742E746F4C6F776572436173652829292C0D0A202020202020202020202020697349455F356F72363A202F6D73696520362F2E746573';
wwv_flow_api.g_varchar2_table(746) := '74286E61762E757365724167656E742E746F4C6F77657243617365282929207C7C202F6D73696520352F2E74657374286E61762E757365724167656E742E746F4C6F776572436173652829292C0D0A20202020202020202020202069734F706572613A20';
wwv_flow_api.g_varchar2_table(747) := '2F6F706572612F2E74657374286E61762E757365724167656E742E746F4C6F776572436173652829290D0A20202020202020207D3B0D0A0D0A202020207661722064656661756C7473537472696E6773203D207B0D0A2020202020202020626F6C643A20';
wwv_flow_api.g_varchar2_table(748) := '225374726F6E67203C7374726F6E673E204374726C2B42222C0D0A2020202020202020626F6C646578616D706C653A20227374726F6E672074657874222C0D0A0D0A20202020202020206974616C69633A2022456D706861736973203C656D3E20437472';
wwv_flow_api.g_varchar2_table(749) := '6C2B49222C0D0A20202020202020206974616C69636578616D706C653A2022656D70686173697A65642074657874222C0D0A0D0A20202020202020206C696E6B3A202248797065726C696E6B203C613E204374726C2B4C222C0D0A20202020202020206C';
wwv_flow_api.g_varchar2_table(750) := '696E6B6465736372697074696F6E3A2022656E746572206C696E6B206465736372697074696F6E2068657265222C0D0A20202020202020206C696E6B6469616C6F673A20223C703E3C623E496E736572742048797065726C696E6B3C2F623E3C2F703E3C';
wwv_flow_api.g_varchar2_table(751) := '703E687474703A2F2F6578616D706C652E636F6D2F205C226F7074696F6E616C207469746C655C223C2F703E222C0D0A0D0A202020202020202071756F74653A2022426C6F636B71756F7465203C626C6F636B71756F74653E204374726C2B51222C0D0A';
wwv_flow_api.g_varchar2_table(752) := '202020202020202071756F74656578616D706C653A2022426C6F636B71756F7465222C0D0A0D0A2020202020202020636F64653A2022436F64652053616D706C65203C7072653E3C636F64653E204374726C2B4B222C0D0A2020202020202020636F6465';
wwv_flow_api.g_varchar2_table(753) := '6578616D706C653A2022656E74657220636F64652068657265222C0D0A0D0A2020202020202020696D6167653A2022496D616765203C696D673E204374726C2B47222C0D0A2020202020202020696D6167656465736372697074696F6E3A2022656E7465';
wwv_flow_api.g_varchar2_table(754) := '7220696D616765206465736372697074696F6E2068657265222C0D0A2020202020202020696D6167656469616C6F673A20223C703E3C623E496E7365727420496D6167653C2F623E3C2F703E3C703E687474703A2F2F6578616D706C652E636F6D2F696D';
wwv_flow_api.g_varchar2_table(755) := '616765732F6469616772616D2E6A7067205C226F7074696F6E616C207469746C655C223C2F703E222C0D0A0D0A20202020202020206F6C6973743A20224E756D6265726564204C697374203C6F6C3E204374726C2B4F222C0D0A2020202020202020756C';
wwv_flow_api.g_varchar2_table(756) := '6973743A202242756C6C65746564204C697374203C756C3E204374726C2B55222C0D0A20202020202020206C6974656D3A20224C697374206974656D222C0D0A0D0A202020202020202068656164696E673A202248656164696E67203C68313E2F3C6832';
wwv_flow_api.g_varchar2_table(757) := '3E204374726C2B48222C0D0A202020202020202068656164696E676578616D706C653A202248656164696E67222C0D0A0D0A202020202020202068723A2022486F72697A6F6E74616C2052756C65203C68723E204374726C2B52222C0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(758) := '20202020756E646F3A2022556E646F202D204374726C2B5A222C0D0A20202020202020207265646F3A20225265646F202D204374726C2B59222C0D0A20202020202020207265646F6D61633A20225265646F202D204374726C2B53686966742B5A222C0D';
wwv_flow_api.g_varchar2_table(759) := '0A0D0A202020202020202068656C703A20224D61726B646F776E2045646974696E672048656C70220D0A202020207D3B0D0A0D0A0D0A202020202F2F202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(760) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A202020202F2F2020594F5552204348414E47455320474F20484552450D0A202020202F2F0D0A202020202F2F204927766520747269656420746F206C6F63616C697A65207468';
wwv_flow_api.g_varchar2_table(761) := '65207468696E677320796F7520617265206C696B656C7920746F206368616E676520746F0D0A202020202F2F207468697320617265612E0D0A202020202F2F202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(762) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020202F2F205468652064656661756C7420746578742074686174206170706561727320696E20746865206469616C6F6720696E70757420626F78207768656E';
wwv_flow_api.g_varchar2_table(763) := '20656E746572696E670D0A202020202F2F206C696E6B732E0D0A2020202076617220696D61676544656661756C7454657874203D2022687474703A2F2F223B0D0A20202020766172206C696E6B44656661756C7454657874203D2022687474703A2F2F22';
wwv_flow_api.g_varchar2_table(764) := '3B0D0A0D0A202020202F2F202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A202020202F2F2020454E44204F4620594F5552';
wwv_flow_api.g_varchar2_table(765) := '204348414E4745530D0A202020202F2F202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020202F2F206F7074696F';
wwv_flow_api.g_varchar2_table(766) := '6E732C20696620676976656E2C2063616E20686176652074686520666F6C6C6F77696E672070726F706572746965733A0D0A202020202F2F2020206F7074696F6E732E68656C70427574746F6E203D207B2068616E646C65723A20796F75724576656E74';
wwv_flow_api.g_varchar2_table(767) := '48616E646C6572207D0D0A202020202F2F2020206F7074696F6E732E737472696E6773203D207B206974616C69636578616D706C653A2022736C616E746564207465787422207D0D0A202020202F2F2060796F75724576656E7448616E646C6572602069';
wwv_flow_api.g_varchar2_table(768) := '732074686520636C69636B2068616E646C657220666F72207468652068656C7020627574746F6E2E0D0A202020202F2F20496620606F7074696F6E732E68656C70427574746F6E602069736E277420676976656E2C206E6F742068656C7020627574746F';
wwv_flow_api.g_varchar2_table(769) := '6E20697320637265617465642E0D0A202020202F2F20606F7074696F6E732E737472696E6773602063616E206861766520616E79206F7220616C6C206F66207468652073616D652070726F706572746965732061730D0A202020202F2F20606465666175';
wwv_flow_api.g_varchar2_table(770) := '6C74537472696E6773602061626F76652C20736F20796F752063616E206A757374206F7665727269646520736F6D6520737472696E6720646973706C617965640D0A202020202F2F20746F207468652075736572206F6E206120636173652D62792D6361';
wwv_flow_api.g_varchar2_table(771) := '73652062617369732C206F72207472616E736C61746520616C6C20737472696E677320746F0D0A202020202F2F206120646966666572656E74206C616E67756167652E0D0A202020202F2F0D0A202020202F2F20466F72206261636B776172647320636F';
wwv_flow_api.g_varchar2_table(772) := '6D7061746962696C69747920726561736F6E732C2074686520606F7074696F6E736020617267756D656E742063616E20616C736F0D0A202020202F2F206265206A75737420746865206068656C70427574746F6E60206F626A6563742C20616E64206073';
wwv_flow_api.g_varchar2_table(773) := '7472696E67732E68656C70602063616E20616C736F20626520736574207669610D0A202020202F2F206068656C70427574746F6E2E7469746C65602E20546869732073686F756C6420626520636F6E73696465726564206C65676163792E0D0A20202020';
wwv_flow_api.g_varchar2_table(774) := '2F2F0D0A202020202F2F2054686520636F6E737472756374656420656469746F72206F626A6563742068617320746865206D6574686F64733A0D0A202020202F2F202D20676574436F6E76657274657228292072657475726E7320746865206D61726B64';
wwv_flow_api.g_varchar2_table(775) := '6F776E20636F6E766572746572206F626A6563742074686174207761732070617373656420746F2074686520636F6E7374727563746F720D0A202020202F2F202D2072756E28292061637475616C6C79207374617274732074686520656469746F723B20';
wwv_flow_api.g_varchar2_table(776) := '73686F756C642062652063616C6C656420616674657220616C6C206E656365737361727920706C7567696E732061726520726567697374657265642E2043616C6C696E672074686973206D6F7265207468616E206F6E63652069732061206E6F2D6F702E';
wwv_flow_api.g_varchar2_table(777) := '0D0A202020202F2F202D207265667265736850726576696577282920666F7263657320746865207072657669657720746F20626520757064617465642E2054686973206D6574686F64206973206F6E6C7920617661696C61626C65206166746572207275';
wwv_flow_api.g_varchar2_table(778) := '6E2829207761732063616C6C65642E0D0A202020204D61726B646F776E2E456469746F72203D2066756E6374696F6E20286D61726B646F776E436F6E7665727465722C206964506F73746669782C206964415045582C206F7074696F6E7329207B0D0A0D';
wwv_flow_api.g_varchar2_table(779) := '0A20202020202020206F7074696F6E73203D206F7074696F6E73207C7C207B7D3B0D0A0D0A202020202020202069662028747970656F66206F7074696F6E732E68616E646C6572203D3D3D202266756E6374696F6E2229207B202F2F6261636B77617264';
wwv_flow_api.g_varchar2_table(780) := '7320636F6D70617469626C65206265686176696F720D0A2020202020202020202020206F7074696F6E73203D207B2068656C70427574746F6E3A206F7074696F6E73207D3B0D0A20202020202020207D0D0A20202020202020206F7074696F6E732E7374';
wwv_flow_api.g_varchar2_table(781) := '72696E6773203D206F7074696F6E732E737472696E6773207C7C207B7D3B0D0A2020202020202020696620286F7074696F6E732E68656C70427574746F6E29207B0D0A2020202020202020202020206F7074696F6E732E737472696E67732E68656C7020';
wwv_flow_api.g_varchar2_table(782) := '3D206F7074696F6E732E737472696E67732E68656C70207C7C206F7074696F6E732E68656C70427574746F6E2E7469746C653B0D0A20202020202020207D0D0A202020202020202076617220676574537472696E67203D2066756E6374696F6E20286964';
wwv_flow_api.g_varchar2_table(783) := '656E74696669657229207B2072657475726E206F7074696F6E732E737472696E67735B6964656E7469666965725D207C7C2064656661756C7473537472696E67735B6964656E7469666965725D3B207D0D0A0D0A20202020202020206964506F73746669';
wwv_flow_api.g_varchar2_table(784) := '78203D206964506F7374666978207C7C2022223B0D0A0D0A202020202020202076617220686F6F6B73203D20746869732E686F6F6B73203D206E6577204D61726B646F776E2E486F6F6B436F6C6C656374696F6E28293B0D0A2020202020202020686F6F';
wwv_flow_api.g_varchar2_table(785) := '6B732E6164644E6F6F7028226F6E507265766965775265667265736822293B202020202020202F2F2063616C6C65642077697468206E6F20617267756D656E747320616674657220746865207072657669657720686173206265656E2072656672657368';
wwv_flow_api.g_varchar2_table(786) := '65640D0A2020202020202020686F6F6B732E6164644E6F6F702822706F7374426C6F636B71756F74654372656174696F6E22293B202F2F2063616C6C6564207769746820746865207573657227732073656C656374696F6E202A61667465722A20746865';
wwv_flow_api.g_varchar2_table(787) := '20626C6F636B71756F74652077617320637265617465643B2073686F756C642072657475726E207468652061637475616C20746F2D62652D696E73657274656420746578740D0A2020202020202020686F6F6B732E61646446616C73652822696E736572';
wwv_flow_api.g_varchar2_table(788) := '74496D6167654469616C6F6722293B20202020202F2A2063616C6C65642077697468206F6E6520706172616D657465723A20612063616C6C6261636B20746F2062652063616C6C65642077697468207468652055524C206F662074686520696D6167652E';
wwv_flow_api.g_varchar2_table(789) := '20496620746865206170706C69636174696F6E20637265617465730D0A2020202020202020202A20697473206F776E20696D61676520696E73657274696F6E206469616C6F672C207468697320686F6F6B2073686F756C642072657475726E2074727565';
wwv_flow_api.g_varchar2_table(790) := '2C20616E64207468652063616C6C6261636B2073686F756C642062652063616C6C65642077697468207468652063686F73656E0D0A2020202020202020202A20696D6167652075726C20286F72206E756C6C2069662074686520757365722063616E6365';
wwv_flow_api.g_varchar2_table(791) := '6C6C6564292E204966207468697320686F6F6B2072657475726E732066616C73652C207468652064656661756C74206469616C6F672077696C6C20626520757365642E0D0A2020202020202020202A2F0D0A0D0A2020202020202020746869732E676574';
wwv_flow_api.g_varchar2_table(792) := '436F6E766572746572203D2066756E6374696F6E202829207B2072657475726E206D61726B646F776E436F6E7665727465723B207D0D0A0D0A20202020202020207661722074686174203D20746869732C0D0A20202020202020202020202070616E656C';
wwv_flow_api.g_varchar2_table(793) := '733B0D0A0D0A2020202020202020746869732E72756E203D2066756E6374696F6E202829207B0D0A2020202020202020202020206966202870616E656C73290D0A2020202020202020202020202020202072657475726E3B202F2F20616C726561647920';
wwv_flow_api.g_varchar2_table(794) := '696E697469616C697A65640D0A0D0A20202020202020202020202070616E656C73203D206E65772050616E656C436F6C6C656374696F6E286964506F73746669782C20696441504558293B0D0A20202020202020202020202076617220636F6D6D616E64';
wwv_flow_api.g_varchar2_table(795) := '4D616E61676572203D206E657720436F6D6D616E644D616E6167657228686F6F6B732C20676574537472696E672C206D61726B646F776E436F6E766572746572293B0D0A20202020202020202020202076617220707265766965774D616E61676572203D';
wwv_flow_api.g_varchar2_table(796) := '206E657720507265766965774D616E61676572286D61726B646F776E436F6E7665727465722C2070616E656C732C2066756E6374696F6E202829207B20686F6F6B732E6F6E507265766965775265667265736828293B207D293B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(797) := '2020202076617220756E646F4D616E616765722C2075694D616E616765723B0D0A0D0A20202020202020202020202069662028212F5C3F6E6F756E646F2F2E7465737428646F632E6C6F636174696F6E2E687265662929207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(798) := '20202020202020756E646F4D616E61676572203D206E657720556E646F4D616E616765722866756E6374696F6E202829207B0D0A2020202020202020202020202020202020202020707265766965774D616E616765722E7265667265736828293B0D0A20';
wwv_flow_api.g_varchar2_table(799) := '202020202020202020202020202020202020206966202875694D616E6167657229202F2F206E6F7420617661696C61626C65206F6E207468652066697273742063616C6C0D0A20202020202020202020202020202020202020202020202075694D616E61';
wwv_flow_api.g_varchar2_table(800) := '6765722E736574556E646F5265646F427574746F6E53746174657328293B0D0A202020202020202020202020202020207D2C2070616E656C73293B0D0A20202020202020202020202020202020746869732E746578744F7065726174696F6E203D206675';
wwv_flow_api.g_varchar2_table(801) := '6E6374696F6E20286629207B0D0A2020202020202020202020202020202020202020756E646F4D616E616765722E736574436F6D6D616E644D6F646528293B0D0A20202020202020202020202020202020202020206628293B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(802) := '2020202020202020202020746861742E726566726573685072657669657728293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A0D0A20202020202020202020202075694D616E61676572203D206E65772055';
wwv_flow_api.g_varchar2_table(803) := '494D616E61676572286964506F73746669782C2070616E656C732C20756E646F4D616E616765722C20707265766965774D616E616765722C20636F6D6D616E644D616E616765722C206F7074696F6E732E68656C70427574746F6E2C2067657453747269';
wwv_flow_api.g_varchar2_table(804) := '6E67293B0D0A20202020202020202020202075694D616E616765722E736574556E646F5265646F427574746F6E53746174657328293B0D0A0D0A20202020202020202020202076617220666F72636552656672657368203D20746861742E726566726573';
wwv_flow_api.g_varchar2_table(805) := '6850726576696577203D2066756E6374696F6E202829207B20707265766965774D616E616765722E726566726573682874727565293B207D3B0D0A0D0A202020202020202020202020666F7263655265667265736828293B0D0A20202020202020207D3B';
wwv_flow_api.g_varchar2_table(806) := '0D0A0D0A202020207D0D0A0D0A202020202F2F206265666F72653A20636F6E7461696E7320616C6C20746865207465787420696E2074686520696E70757420626F78204245464F5245207468652073656C656374696F6E2E0D0A202020202F2F20616674';
wwv_flow_api.g_varchar2_table(807) := '65723A20636F6E7461696E7320616C6C20746865207465787420696E2074686520696E70757420626F78204146544552207468652073656C656374696F6E2E0D0A2020202066756E6374696F6E204368756E6B732829207B207D0D0A0D0A202020202F2F';
wwv_flow_api.g_varchar2_table(808) := '20737461727452656765783A206120726567756C61722065787072657373696F6E20746F2066696E6420746865207374617274207461670D0A202020202F2F20656E6452656765783A206120726567756C6172206578707265737373696F6E20746F2066';
wwv_flow_api.g_varchar2_table(809) := '696E642074686520656E64207461670D0A202020204368756E6B732E70726F746F747970652E66696E6454616773203D2066756E6374696F6E2028737461727452656765782C20656E64526567657829207B0D0A0D0A2020202020202020766172206368';
wwv_flow_api.g_varchar2_table(810) := '756E6B4F626A203D20746869733B0D0A20202020202020207661722072656765783B0D0A0D0A2020202020202020696620287374617274526567657829207B0D0A0D0A2020202020202020202020207265676578203D207574696C2E657874656E645265';
wwv_flow_api.g_varchar2_table(811) := '6745787028737461727452656765782C2022222C20222422293B0D0A0D0A202020202020202020202020746869732E6265666F7265203D20746869732E6265666F72652E7265706C6163652872656765782C0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(812) := '66756E6374696F6E20286D6174636829207B0D0A20202020202020202020202020202020202020206368756E6B4F626A2E7374617274546167203D206368756E6B4F626A2E7374617274546167202B206D617463683B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(813) := '202020202020202072657475726E2022223B0D0A202020202020202020202020202020207D293B0D0A0D0A2020202020202020202020207265676578203D207574696C2E657874656E6452656745787028737461727452656765782C20225E222C202222';
wwv_flow_api.g_varchar2_table(814) := '293B0D0A0D0A202020202020202020202020746869732E73656C656374696F6E203D20746869732E73656C656374696F6E2E7265706C6163652872656765782C0D0A2020202020202020202020202020202066756E6374696F6E20286D6174636829207B';
wwv_flow_api.g_varchar2_table(815) := '0D0A20202020202020202020202020202020202020206368756E6B4F626A2E7374617274546167203D206368756E6B4F626A2E7374617274546167202B206D617463683B0D0A202020202020202020202020202020202020202072657475726E2022223B';
wwv_flow_api.g_varchar2_table(816) := '0D0A202020202020202020202020202020207D293B0D0A20202020202020207D0D0A0D0A202020202020202069662028656E64526567657829207B0D0A0D0A2020202020202020202020207265676578203D207574696C2E657874656E64526567457870';
wwv_flow_api.g_varchar2_table(817) := '28656E6452656765782C2022222C20222422293B0D0A0D0A202020202020202020202020746869732E73656C656374696F6E203D20746869732E73656C656374696F6E2E7265706C6163652872656765782C0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(818) := '66756E6374696F6E20286D6174636829207B0D0A20202020202020202020202020202020202020206368756E6B4F626A2E656E64546167203D206D61746368202B206368756E6B4F626A2E656E645461673B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(819) := '2020202072657475726E2022223B0D0A202020202020202020202020202020207D293B0D0A0D0A2020202020202020202020207265676578203D207574696C2E657874656E6452656745787028656E6452656765782C20225E222C202222293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(820) := '202020202020202020202020746869732E6166746572203D20746869732E61667465722E7265706C6163652872656765782C0D0A2020202020202020202020202020202066756E6374696F6E20286D6174636829207B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(821) := '20202020202020206368756E6B4F626A2E656E64546167203D206D61746368202B206368756E6B4F626A2E656E645461673B0D0A202020202020202020202020202020202020202072657475726E2022223B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(822) := '7D293B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A202020202F2F2049662072656D6F76652069732066616C73652C207468652077686974657370616365206973207472616E736665727265640D0A202020202F2F20746F20746865206265';
wwv_flow_api.g_varchar2_table(823) := '666F72652F616674657220726567696F6E732E0D0A202020202F2F0D0A202020202F2F2049662072656D6F766520697320747275652C20746865207768697465737061636520646973617070656172732E0D0A202020204368756E6B732E70726F746F74';
wwv_flow_api.g_varchar2_table(824) := '7970652E7472696D57686974657370616365203D2066756E6374696F6E202872656D6F766529207B0D0A2020202020202020766172206265666F72655265706C616365722C2061667465725265706C616365722C2074686174203D20746869733B0D0A20';
wwv_flow_api.g_varchar2_table(825) := '202020202020206966202872656D6F766529207B0D0A2020202020202020202020206265666F72655265706C61636572203D2061667465725265706C61636572203D2022223B0D0A20202020202020207D20656C7365207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(826) := '20206265666F72655265706C61636572203D2066756E6374696F6E20287329207B20746861742E6265666F7265202B3D20733B2072657475726E2022223B207D0D0A20202020202020202020202061667465725265706C61636572203D2066756E637469';
wwv_flow_api.g_varchar2_table(827) := '6F6E20287329207B20746861742E6166746572203D2073202B20746861742E61667465723B2072657475726E2022223B207D0D0A20202020202020207D0D0A0D0A2020202020202020746869732E73656C656374696F6E203D20746869732E73656C6563';
wwv_flow_api.g_varchar2_table(828) := '74696F6E2E7265706C616365282F5E285C732A292F2C206265666F72655265706C61636572292E7265706C616365282F285C732A29242F2C2061667465725265706C61636572293B0D0A202020207D3B0D0A0D0A0D0A202020204368756E6B732E70726F';
wwv_flow_api.g_varchar2_table(829) := '746F747970652E736B69704C696E6573203D2066756E6374696F6E20286E4C696E65734265666F72652C206E4C696E657341667465722C2066696E6445787472614E65776C696E657329207B0D0A0D0A2020202020202020696620286E4C696E65734265';
wwv_flow_api.g_varchar2_table(830) := '666F7265203D3D3D20756E646566696E656429207B0D0A2020202020202020202020206E4C696E65734265666F7265203D20313B0D0A20202020202020207D0D0A0D0A2020202020202020696620286E4C696E65734166746572203D3D3D20756E646566';
wwv_flow_api.g_varchar2_table(831) := '696E656429207B0D0A2020202020202020202020206E4C696E65734166746572203D20313B0D0A20202020202020207D0D0A0D0A20202020202020206E4C696E65734265666F72652B2B3B0D0A20202020202020206E4C696E657341667465722B2B3B0D';
wwv_flow_api.g_varchar2_table(832) := '0A0D0A2020202020202020766172207265676578546578743B0D0A2020202020202020766172207265706C6163656D656E74546578743B0D0A0D0A20202020202020202F2F206368726F6D6520627567202E2E2E20646F63756D656E7465642061743A20';
wwv_flow_api.g_varchar2_table(833) := '687474703A2F2F6D6574612E737461636B65786368616E67652E636F6D2F7175657374696F6E732F36333330372F626C6F636B71756F74652D676C697463682D696E2D656469746F722D696E2D6368726F6D652D362D616E642D372F3635393835233635';
wwv_flow_api.g_varchar2_table(834) := '3938350D0A2020202020202020696620286E6176696761746F722E757365724167656E742E6D61746368282F4368726F6D652F2929207B0D0A2020202020202020202020202258222E6D61746368282F28292E2F293B0D0A20202020202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(835) := '0A2020202020202020746869732E73656C656374696F6E203D20746869732E73656C656374696F6E2E7265706C616365282F285E5C6E2A292F2C202222293B0D0A0D0A2020202020202020746869732E7374617274546167203D20746869732E73746172';
wwv_flow_api.g_varchar2_table(836) := '74546167202B2072652E24313B0D0A0D0A2020202020202020746869732E73656C656374696F6E203D20746869732E73656C656374696F6E2E7265706C616365282F285C6E2A24292F2C202222293B0D0A2020202020202020746869732E656E64546167';
wwv_flow_api.g_varchar2_table(837) := '203D20746869732E656E64546167202B2072652E24313B0D0A2020202020202020746869732E7374617274546167203D20746869732E73746172745461672E7265706C616365282F285E5C6E2A292F2C202222293B0D0A2020202020202020746869732E';
wwv_flow_api.g_varchar2_table(838) := '6265666F7265203D20746869732E6265666F7265202B2072652E24313B0D0A2020202020202020746869732E656E64546167203D20746869732E656E645461672E7265706C616365282F285C6E2A24292F2C202222293B0D0A2020202020202020746869';
wwv_flow_api.g_varchar2_table(839) := '732E6166746572203D20746869732E6166746572202B2072652E24313B0D0A0D0A202020202020202069662028746869732E6265666F726529207B0D0A0D0A202020202020202020202020726567657854657874203D207265706C6163656D656E745465';
wwv_flow_api.g_varchar2_table(840) := '7874203D2022223B0D0A0D0A2020202020202020202020207768696C6520286E4C696E65734265666F72652D2D29207B0D0A20202020202020202020202020202020726567657854657874202B3D20225C5C6E3F223B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(841) := '202020207265706C6163656D656E7454657874202B3D20225C6E223B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020206966202866696E6445787472614E65776C696E657329207B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(842) := '20726567657854657874203D20225C5C6E2A223B0D0A2020202020202020202020207D0D0A202020202020202020202020746869732E6265666F7265203D20746869732E6265666F72652E7265706C616365286E65772072652872656765785465787420';
wwv_flow_api.g_varchar2_table(843) := '2B202224222C202222292C207265706C6163656D656E7454657874293B0D0A20202020202020207D0D0A0D0A202020202020202069662028746869732E616674657229207B0D0A0D0A202020202020202020202020726567657854657874203D20726570';
wwv_flow_api.g_varchar2_table(844) := '6C6163656D656E7454657874203D2022223B0D0A0D0A2020202020202020202020207768696C6520286E4C696E657341667465722D2D29207B0D0A20202020202020202020202020202020726567657854657874202B3D20225C5C6E3F223B0D0A202020';
wwv_flow_api.g_varchar2_table(845) := '202020202020202020202020207265706C6163656D656E7454657874202B3D20225C6E223B0D0A2020202020202020202020207D0D0A2020202020202020202020206966202866696E6445787472614E65776C696E657329207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(846) := '2020202020202020726567657854657874203D20225C5C6E2A223B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020746869732E6166746572203D20746869732E61667465722E7265706C616365286E657720726528726567';
wwv_flow_api.g_varchar2_table(847) := '6578546578742C202222292C207265706C6163656D656E7454657874293B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A202020202F2F20656E64206F66204368756E6B730D0A0D0A202020202F2F204120636F6C6C656374696F6E206F6620';
wwv_flow_api.g_varchar2_table(848) := '74686520696D706F7274616E7420726567696F6E73206F6E2074686520706167652E0D0A202020202F2F2043616368656420736F20776520646F6E2774206861766520746F206B6565702074726176657273696E672074686520444F4D2E0D0A20202020';
wwv_flow_api.g_varchar2_table(849) := '2F2F20416C736F20686F6C647320696543616368656452616E676520616E642069654361636865645363726F6C6C546F702C207768657265206E65636573736172793B20776F726B696E672061726F756E640D0A202020202F2F20746869732069737375';
wwv_flow_api.g_varchar2_table(850) := '653A0D0A202020202F2F20496E7465726E6574206578706C6F726572206861732070726F626C656D732077697468204353532073707269746520627574746F6E732074686174207573652048544D4C0D0A202020202F2F206C697374732E20205768656E';
wwv_flow_api.g_varchar2_table(851) := '20796F7520636C69636B206F6E20746865206261636B67726F756E6420696D6167652022627574746F6E222C2049452077696C6C0D0A202020202F2F2073656C65637420746865206E6F6E2D6578697374656E74206C696E6B207465787420616E642064';
wwv_flow_api.g_varchar2_table(852) := '697363617264207468652073656C656374696F6E20696E207468650D0A202020202F2F2074657874617265612E202054686520736F6C7574696F6E20746F207468697320697320746F206361636865207468652074657874617265612073656C65637469';
wwv_flow_api.g_varchar2_table(853) := '6F6E0D0A202020202F2F206F6E2074686520627574746F6E2773206D6F757365646F776E206576656E7420616E6420736574206120666C61672E2020496E207468652070617274206F66207468650D0A202020202F2F20636F6465207768657265207765';
wwv_flow_api.g_varchar2_table(854) := '206E65656420746F2067726162207468652073656C656374696F6E2C20776520636865636B20666F722074686520666C61670D0A202020202F2F20616E642C2069662069742773207365742C207573652074686520636163686564206172656120696E73';
wwv_flow_api.g_varchar2_table(855) := '74656164206F66207175657279696E67207468650D0A202020202F2F2074657874617265612E0D0A202020202F2F0D0A202020202F2F2054686973204F4E4C59206166666563747320496E7465726E6574204578706C6F7265722028746573746564206F';
wwv_flow_api.g_varchar2_table(856) := '6E2076657273696F6E7320362C20370D0A202020202F2F20616E6420382920616E64204F4E4C59206F6E20627574746F6E20636C69636B732E20204B6579626F6172642073686F72746375747320776F726B0D0A202020202F2F206E6F726D616C6C7920';
wwv_flow_api.g_varchar2_table(857) := '73696E63652074686520666F637573206E65766572206C6561766573207468652074657874617265612E0D0A2020202066756E6374696F6E2050616E656C436F6C6C656374696F6E28706F73746669782C2069644150455829207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(858) := '20746869732E627574746F6E426172203D20646F632E676574456C656D656E74427949642822776D642D627574746F6E2D62617222202B20706F7374666978293B0D0A2020202020202020746869732E70726576696577203D20646F632E676574456C65';
wwv_flow_api.g_varchar2_table(859) := '6D656E74427949642822776D642D7072657669657722202B20706F7374666978293B0D0A2020202020202020746869732E696E707574203D20646F632E676574456C656D656E744279496428696441504558293B202F2F206F726967696E616C3A20646F';
wwv_flow_api.g_varchar2_table(860) := '632E676574456C656D656E74427949642822776D642D696E70757422202B20706F7374666978293B0D0A202020207D3B0D0A0D0A202020202F2F2052657475726E7320747275652069662074686520444F4D20656C656D656E742069732076697369626C';
wwv_flow_api.g_varchar2_table(861) := '652C2066616C736520696620697427732068696464656E2E0D0A202020202F2F20436865636B7320696620646973706C617920697320616E797468696E67206F74686572207468616E206E6F6E652E0D0A202020207574696C2E697356697369626C6520';
wwv_flow_api.g_varchar2_table(862) := '3D2066756E6374696F6E2028656C656D29207B0D0A0D0A20202020202020206966202877696E646F772E676574436F6D70757465645374796C6529207B0D0A2020202020202020202020202F2F204D6F73742062726F77736572730D0A20202020202020';
wwv_flow_api.g_varchar2_table(863) := '202020202072657475726E2077696E646F772E676574436F6D70757465645374796C6528656C656D2C206E756C6C292E67657450726F706572747956616C75652822646973706C6179222920213D3D20226E6F6E65223B0D0A20202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(864) := '2020202020202020656C73652069662028656C656D2E63757272656E745374796C6529207B0D0A2020202020202020202020202F2F2049450D0A20202020202020202020202072657475726E20656C656D2E63757272656E745374796C655B2264697370';
wwv_flow_api.g_varchar2_table(865) := '6C6179225D20213D3D20226E6F6E65223B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A0D0A202020202F2F20416464732061206C697374656E65722063616C6C6261636B20746F206120444F4D20656C656D656E7420776869636820697320';
wwv_flow_api.g_varchar2_table(866) := '6669726564206F6E2061207370656369666965640D0A202020202F2F206576656E742E0D0A202020207574696C2E6164644576656E74203D2066756E6374696F6E2028656C656D2C206576656E742C206C697374656E657229207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(867) := '2069662028656C656D2E6174746163684576656E7429207B0D0A2020202020202020202020202F2F204945206F6E6C792E202054686520226F6E22206973206D616E6461746F72792E0D0A202020202020202020202020656C656D2E6174746163684576';
wwv_flow_api.g_varchar2_table(868) := '656E7428226F6E22202B206576656E742C206C697374656E6572293B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A2020202020202020202020202F2F204F746865722062726F77736572732E0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(869) := '20656C656D2E6164644576656E744C697374656E6572286576656E742C206C697374656E65722C2066616C7365293B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A0D0A202020202F2F2052656D6F7665732061206C697374656E6572206361';
wwv_flow_api.g_varchar2_table(870) := '6C6C6261636B2066726F6D206120444F4D20656C656D656E74207768696368206973206669726564206F6E2061207370656369666965640D0A202020202F2F206576656E742E0D0A202020207574696C2E72656D6F76654576656E74203D2066756E6374';
wwv_flow_api.g_varchar2_table(871) := '696F6E2028656C656D2C206576656E742C206C697374656E657229207B0D0A202020202020202069662028656C656D2E6465746163684576656E7429207B0D0A2020202020202020202020202F2F204945206F6E6C792E202054686520226F6E22206973';
wwv_flow_api.g_varchar2_table(872) := '206D616E6461746F72792E0D0A202020202020202020202020656C656D2E6465746163684576656E7428226F6E22202B206576656E742C206C697374656E6572293B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(873) := '202020202020202F2F204F746865722062726F77736572732E0D0A202020202020202020202020656C656D2E72656D6F76654576656E744C697374656E6572286576656E742C206C697374656E65722C2066616C7365293B0D0A20202020202020207D0D';
wwv_flow_api.g_varchar2_table(874) := '0A202020207D3B0D0A0D0A202020202F2F20436F6E7665727473205C725C6E20616E64205C7220746F205C6E2E0D0A202020207574696C2E666978456F6C4368617273203D2066756E6374696F6E20287465787429207B0D0A2020202020202020746578';
wwv_flow_api.g_varchar2_table(875) := '74203D20746578742E7265706C616365282F5C725C6E2F672C20225C6E22293B0D0A202020202020202074657874203D20746578742E7265706C616365282F5C722F672C20225C6E22293B0D0A202020202020202072657475726E20746578743B0D0A20';
wwv_flow_api.g_varchar2_table(876) := '2020207D3B0D0A0D0A202020202F2F20457874656E6473206120726567756C61722065787072657373696F6E2E202052657475726E732061206E6577205265674578700D0A202020202F2F207573696E6720707265202B207265676578202B20706F7374';
wwv_flow_api.g_varchar2_table(877) := '206173207468652065787072657373696F6E2E0D0A202020202F2F205573656420696E2061206665772066756E6374696F6E732077686572652077652068617665206120626173650D0A202020202F2F2065787072657373696F6E20616E642077652077';
wwv_flow_api.g_varchar2_table(878) := '616E7420746F207072652D206F7220617070656E6420736F6D650D0A202020202F2F20636F6E646974696F6E7320746F2069742028652E672E20616464696E672022242220746F2074686520656E64292E0D0A202020202F2F2054686520666C61677320';
wwv_flow_api.g_varchar2_table(879) := '61726520756E6368616E6765642E0D0A202020202F2F0D0A202020202F2F2072656765782069732061205265674578702C2070726520616E6420706F73742061726520737472696E67732E0D0A202020207574696C2E657874656E64526567457870203D';
wwv_flow_api.g_varchar2_table(880) := '2066756E6374696F6E202872656765782C207072652C20706F737429207B0D0A0D0A202020202020202069662028707265203D3D3D206E756C6C207C7C20707265203D3D3D20756E646566696E656429207B0D0A20202020202020202020202070726520';
wwv_flow_api.g_varchar2_table(881) := '3D2022223B0D0A20202020202020207D0D0A202020202020202069662028706F7374203D3D3D206E756C6C207C7C20706F7374203D3D3D20756E646566696E656429207B0D0A202020202020202020202020706F7374203D2022223B0D0A202020202020';
wwv_flow_api.g_varchar2_table(882) := '20207D0D0A0D0A2020202020202020766172207061747465726E203D2072656765782E746F537472696E6728293B0D0A202020202020202076617220666C6167733B0D0A0D0A20202020202020202F2F205265706C6163652074686520666C6167732077';
wwv_flow_api.g_varchar2_table(883) := '69746820656D70747920737061636520616E642073746F7265207468656D2E0D0A20202020202020207061747465726E203D207061747465726E2E7265706C616365282F5C2F285B67696D5D2A29242F2C2066756E6374696F6E202877686F6C654D6174';
wwv_flow_api.g_varchar2_table(884) := '63682C20666C6167735061727429207B0D0A202020202020202020202020666C616773203D20666C616773506172743B0D0A20202020202020202020202072657475726E2022223B0D0A20202020202020207D293B0D0A0D0A20202020202020202F2F20';
wwv_flow_api.g_varchar2_table(885) := '52656D6F76652074686520736C6173682064656C696D6974657273206F6E2074686520726567756C61722065787072657373696F6E2E0D0A20202020202020207061747465726E203D207061747465726E2E7265706C616365282F285E5C2F7C5C2F2429';
wwv_flow_api.g_varchar2_table(886) := '2F672C202222293B0D0A20202020202020207061747465726E203D20707265202B207061747465726E202B20706F73743B0D0A0D0A202020202020202072657475726E206E6577207265287061747465726E2C20666C616773293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(887) := '0D0A202020202F2F20554E46494E49534845440D0A202020202F2F205468652061737369676E6D656E7420696E20746865207768696C65206C6F6F70206D616B6573206A736C696E74206372616E6B792E0D0A202020202F2F2049276C6C206368616E67';
wwv_flow_api.g_varchar2_table(888) := '6520697420746F206120626574746572206C6F6F70206C617465722E0D0A20202020706F736974696F6E2E676574546F70203D2066756E6374696F6E2028656C656D2C206973496E6E657229207B0D0A202020202020202076617220726573756C74203D';
wwv_flow_api.g_varchar2_table(889) := '20656C656D2E6F6666736574546F703B0D0A202020202020202069662028216973496E6E657229207B0D0A2020202020202020202020207768696C652028656C656D203D20656C656D2E6F6666736574506172656E7429207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(890) := '20202020202020726573756C74202B3D20656C656D2E6F6666736574546F703B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A202020202020202072657475726E20726573756C743B0D0A202020207D3B0D0A0D0A20202020706F';
wwv_flow_api.g_varchar2_table(891) := '736974696F6E2E676574486569676874203D2066756E6374696F6E2028656C656D29207B0D0A202020202020202072657475726E20656C656D2E6F6666736574486569676874207C7C20656C656D2E7363726F6C6C4865696768743B0D0A202020207D3B';
wwv_flow_api.g_varchar2_table(892) := '0D0A0D0A20202020706F736974696F6E2E6765745769647468203D2066756E6374696F6E2028656C656D29207B0D0A202020202020202072657475726E20656C656D2E6F66667365745769647468207C7C20656C656D2E7363726F6C6C57696474683B0D';
wwv_flow_api.g_varchar2_table(893) := '0A202020207D3B0D0A0D0A20202020706F736974696F6E2E6765745061676553697A65203D2066756E6374696F6E202829207B0D0A0D0A2020202020202020766172207363726F6C6C57696474682C207363726F6C6C4865696768743B0D0A2020202020';
wwv_flow_api.g_varchar2_table(894) := '20202076617220696E6E657257696474682C20696E6E65724865696768743B0D0A0D0A20202020202020202F2F2049742773206E6F74207665727920636C65617220776869636820626C6F636B7320776F726B20776974682077686963682062726F7773';
wwv_flow_api.g_varchar2_table(895) := '6572732E0D0A20202020202020206966202873656C662E696E6E65724865696768742026262073656C662E7363726F6C6C4D61785929207B0D0A2020202020202020202020207363726F6C6C5769647468203D20646F632E626F64792E7363726F6C6C57';
wwv_flow_api.g_varchar2_table(896) := '696474683B0D0A2020202020202020202020207363726F6C6C486569676874203D2073656C662E696E6E6572486569676874202B2073656C662E7363726F6C6C4D6178593B0D0A20202020202020207D0D0A2020202020202020656C7365206966202864';
wwv_flow_api.g_varchar2_table(897) := '6F632E626F64792E7363726F6C6C486569676874203E20646F632E626F64792E6F666673657448656967687429207B0D0A2020202020202020202020207363726F6C6C5769647468203D20646F632E626F64792E7363726F6C6C57696474683B0D0A2020';
wwv_flow_api.g_varchar2_table(898) := '202020202020202020207363726F6C6C486569676874203D20646F632E626F64792E7363726F6C6C4865696768743B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A2020202020202020202020207363726F6C6C576964746820';
wwv_flow_api.g_varchar2_table(899) := '3D20646F632E626F64792E6F666673657457696474683B0D0A2020202020202020202020207363726F6C6C486569676874203D20646F632E626F64792E6F66667365744865696768743B0D0A20202020202020207D0D0A0D0A2020202020202020696620';
wwv_flow_api.g_varchar2_table(900) := '2873656C662E696E6E657248656967687429207B0D0A2020202020202020202020202F2F204E6F6E2D49452062726F777365720D0A202020202020202020202020696E6E65725769647468203D2073656C662E696E6E657257696474683B0D0A20202020';
wwv_flow_api.g_varchar2_table(901) := '2020202020202020696E6E6572486569676874203D2073656C662E696E6E65724865696768743B0D0A20202020202020207D0D0A2020202020202020656C73652069662028646F632E646F63756D656E74456C656D656E7420262620646F632E646F6375';
wwv_flow_api.g_varchar2_table(902) := '6D656E74456C656D656E742E636C69656E7448656967687429207B0D0A2020202020202020202020202F2F20536F6D652076657273696F6E73206F6620494520284945203620772F206120444F4354595045206465636C61726174696F6E290D0A202020';
wwv_flow_api.g_varchar2_table(903) := '202020202020202020696E6E65725769647468203D20646F632E646F63756D656E74456C656D656E742E636C69656E7457696474683B0D0A202020202020202020202020696E6E6572486569676874203D20646F632E646F63756D656E74456C656D656E';
wwv_flow_api.g_varchar2_table(904) := '742E636C69656E744865696768743B0D0A20202020202020207D0D0A2020202020202020656C73652069662028646F632E626F647929207B0D0A2020202020202020202020202F2F204F746865722076657273696F6E73206F662049450D0A2020202020';
wwv_flow_api.g_varchar2_table(905) := '20202020202020696E6E65725769647468203D20646F632E626F64792E636C69656E7457696474683B0D0A202020202020202020202020696E6E6572486569676874203D20646F632E626F64792E636C69656E744865696768743B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(906) := '207D0D0A0D0A2020202020202020766172206D61785769647468203D204D6174682E6D6178287363726F6C6C57696474682C20696E6E65725769647468293B0D0A2020202020202020766172206D6178486569676874203D204D6174682E6D6178287363';
wwv_flow_api.g_varchar2_table(907) := '726F6C6C4865696768742C20696E6E6572486569676874293B0D0A202020202020202072657475726E205B6D617857696474682C206D61784865696768742C20696E6E657257696474682C20696E6E65724865696768745D3B0D0A202020207D3B0D0A0D';
wwv_flow_api.g_varchar2_table(908) := '0A202020202F2F2048616E646C65732070757368696E6720616E6420706F7070696E6720546578746172656153746174657320666F7220756E646F2F7265646F20636F6D6D616E64732E0D0A202020202F2F20492073686F756C642072656E616D652074';
wwv_flow_api.g_varchar2_table(909) := '686520737461636B207661726961626C657320746F206C6973742E0D0A2020202066756E6374696F6E20556E646F4D616E616765722863616C6C6261636B2C2070616E656C7329207B0D0A0D0A202020202020202076617220756E646F4F626A203D2074';
wwv_flow_api.g_varchar2_table(910) := '6869733B0D0A202020202020202076617220756E646F537461636B203D205B5D3B202F2F204120737461636B206F6620756E646F207374617465730D0A202020202020202076617220737461636B507472203D20303B202F2F2054686520696E64657820';
wwv_flow_api.g_varchar2_table(911) := '6F66207468652063757272656E742073746174650D0A2020202020202020766172206D6F6465203D20226E6F6E65223B0D0A2020202020202020766172206C61737453746174653B202F2F20546865206C6173742073746174650D0A2020202020202020';
wwv_flow_api.g_varchar2_table(912) := '7661722074696D65723B202F2F205468652073657454696D656F75742068616E646C6520666F722063616E63656C6C696E67207468652074696D65720D0A202020202020202076617220696E70757453746174654F626A3B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(913) := '2F2F2053657420746865206D6F646520666F72206C61746572206C6F6769632073746570732E0D0A2020202020202020766172207365744D6F6465203D2066756E6374696F6E20286E65774D6F64652C206E6F5361766529207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(914) := '20202020696620286D6F646520213D206E65774D6F646529207B0D0A202020202020202020202020202020206D6F6465203D206E65774D6F64653B0D0A2020202020202020202020202020202069662028216E6F5361766529207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(915) := '2020202020202020202020202073617665537461746528293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A0D0A20202020202020202020202069662028217561536E69666665642E69734945207C7C206D6F';
wwv_flow_api.g_varchar2_table(916) := '646520213D20226D6F76696E672229207B0D0A2020202020202020202020202020202074696D6572203D2073657454696D656F7574287265667265736853746174652C2031293B0D0A2020202020202020202020207D0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(917) := '656C7365207B0D0A20202020202020202020202020202020696E70757453746174654F626A203D206E756C6C3B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A202020202020202076617220726566726573685374617465';
wwv_flow_api.g_varchar2_table(918) := '203D2066756E6374696F6E20286973496E697469616C537461746529207B0D0A202020202020202020202020696E70757453746174654F626A203D206E657720546578746172656153746174652870616E656C732C206973496E697469616C5374617465';
wwv_flow_api.g_varchar2_table(919) := '293B0D0A20202020202020202020202074696D6572203D20756E646566696E65643B0D0A20202020202020207D3B0D0A0D0A2020202020202020746869732E736574436F6D6D616E644D6F6465203D2066756E6374696F6E202829207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(920) := '202020202020206D6F6465203D2022636F6D6D616E64223B0D0A20202020202020202020202073617665537461746528293B0D0A20202020202020202020202074696D6572203D2073657454696D656F7574287265667265736853746174652C2030293B';
wwv_flow_api.g_varchar2_table(921) := '0D0A20202020202020207D3B0D0A0D0A2020202020202020746869732E63616E556E646F203D2066756E6374696F6E202829207B0D0A20202020202020202020202072657475726E20737461636B507472203E20313B0D0A20202020202020207D3B0D0A';
wwv_flow_api.g_varchar2_table(922) := '0D0A2020202020202020746869732E63616E5265646F203D2066756E6374696F6E202829207B0D0A20202020202020202020202069662028756E646F537461636B5B737461636B507472202B20315D29207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(923) := '72657475726E20747275653B0D0A2020202020202020202020207D0D0A20202020202020202020202072657475726E2066616C73653B0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F2052656D6F76657320746865206C617374207374';
wwv_flow_api.g_varchar2_table(924) := '61746520616E6420726573746F7265732069742E0D0A2020202020202020746869732E756E646F203D2066756E6374696F6E202829207B0D0A0D0A20202020202020202020202069662028756E646F4F626A2E63616E556E646F282929207B0D0A202020';
wwv_flow_api.g_varchar2_table(925) := '20202020202020202020202020696620286C617374537461746529207B0D0A20202020202020202020202020202020202020202F2F20576861742061626F75742073657474696E67207374617465202D3120746F206E756C6C206F7220636865636B696E';
wwv_flow_api.g_varchar2_table(926) := '6720666F7220756E646566696E65643F0D0A20202020202020202020202020202020202020206C61737453746174652E726573746F726528293B0D0A20202020202020202020202020202020202020206C6173745374617465203D206E756C6C3B0D0A20';
wwv_flow_api.g_varchar2_table(927) := '2020202020202020202020202020207D0D0A20202020202020202020202020202020656C7365207B0D0A2020202020202020202020202020202020202020756E646F537461636B5B737461636B5074725D203D206E657720546578746172656153746174';
wwv_flow_api.g_varchar2_table(928) := '652870616E656C73293B0D0A2020202020202020202020202020202020202020756E646F537461636B5B2D2D737461636B5074725D2E726573746F726528293B0D0A0D0A20202020202020202020202020202020202020206966202863616C6C6261636B';
wwv_flow_api.g_varchar2_table(929) := '29207B0D0A20202020202020202020202020202020202020202020202063616C6C6261636B28293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(930) := '0A2020202020202020202020206D6F6465203D20226E6F6E65223B0D0A20202020202020202020202070616E656C732E696E7075742E666F63757328293B0D0A20202020202020202020202072656672657368537461746528293B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(931) := '207D3B0D0A0D0A20202020202020202F2F205265646F20616E20616374696F6E2E0D0A2020202020202020746869732E7265646F203D2066756E6374696F6E202829207B0D0A0D0A20202020202020202020202069662028756E646F4F626A2E63616E52';
wwv_flow_api.g_varchar2_table(932) := '65646F282929207B0D0A0D0A20202020202020202020202020202020756E646F537461636B5B2B2B737461636B5074725D2E726573746F726528293B0D0A0D0A202020202020202020202020202020206966202863616C6C6261636B29207B0D0A202020';
wwv_flow_api.g_varchar2_table(933) := '202020202020202020202020202020202063616C6C6261636B28293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020206D6F6465203D20226E6F6E65223B0D0A202020202020';
wwv_flow_api.g_varchar2_table(934) := '20202020202070616E656C732E696E7075742E666F63757328293B0D0A20202020202020202020202072656672657368537461746528293B0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F20507573682074686520696E707574206172';
wwv_flow_api.g_varchar2_table(935) := '656120737461746520746F2074686520737461636B2E0D0A202020202020202076617220736176655374617465203D2066756E6374696F6E202829207B0D0A20202020202020202020202076617220637572725374617465203D20696E70757453746174';
wwv_flow_api.g_varchar2_table(936) := '654F626A207C7C206E657720546578746172656153746174652870616E656C73293B0D0A0D0A202020202020202020202020696620282163757272537461746529207B0D0A2020202020202020202020202020202072657475726E2066616C73653B0D0A';
wwv_flow_api.g_varchar2_table(937) := '2020202020202020202020207D0D0A202020202020202020202020696620286D6F6465203D3D20226D6F76696E672229207B0D0A2020202020202020202020202020202069662028216C617374537461746529207B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(938) := '202020202020206C6173745374617465203D206375727253746174653B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(939) := '2020696620286C617374537461746529207B0D0A2020202020202020202020202020202069662028756E646F537461636B5B737461636B507472202D20315D2E7465787420213D206C61737453746174652E7465787429207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(940) := '2020202020202020202020756E646F537461636B5B737461636B5074722B2B5D203D206C61737453746174653B0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020206C6173745374617465203D206E756C6C3B0D';
wwv_flow_api.g_varchar2_table(941) := '0A2020202020202020202020207D0D0A202020202020202020202020756E646F537461636B5B737461636B5074722B2B5D203D206375727253746174653B0D0A202020202020202020202020756E646F537461636B5B737461636B507472202B20315D20';
wwv_flow_api.g_varchar2_table(942) := '3D206E756C6C3B0D0A2020202020202020202020206966202863616C6C6261636B29207B0D0A2020202020202020202020202020202063616C6C6261636B28293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(943) := '202020207661722068616E646C654374726C595A203D2066756E6374696F6E20286576656E7429207B0D0A0D0A2020202020202020202020207661722068616E646C6564203D2066616C73653B0D0A0D0A20202020202020202020202069662028286576';
wwv_flow_api.g_varchar2_table(944) := '656E742E6374726C4B6579207C7C206576656E742E6D6574614B65792920262620216576656E742E616C744B657929207B0D0A0D0A202020202020202020202020202020202F2F20494520616E64204F7065726120646F206E6F7420737570706F727420';
wwv_flow_api.g_varchar2_table(945) := '63686172436F64652E0D0A20202020202020202020202020202020766172206B6579436F6465203D206576656E742E63686172436F6465207C7C206576656E742E6B6579436F64653B0D0A20202020202020202020202020202020766172206B6579436F';
wwv_flow_api.g_varchar2_table(946) := '646543686172203D20537472696E672E66726F6D43686172436F6465286B6579436F6465293B0D0A0D0A2020202020202020202020202020202073776974636820286B6579436F6465436861722E746F4C6F77657243617365282929207B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(947) := '20202020202020202020202020202020202063617365202279223A0D0A202020202020202020202020202020202020202020202020756E646F4F626A2E7265646F28293B0D0A20202020202020202020202020202020202020202020202068616E646C65';
wwv_flow_api.g_varchar2_table(948) := '64203D20747275653B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A0D0A20202020202020202020202020202020202020206361736520227A223A0D0A202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(949) := '69662028216576656E742E73686966744B657929207B0D0A20202020202020202020202020202020202020202020202020202020756E646F4F626A2E756E646F28293B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020';
wwv_flow_api.g_varchar2_table(950) := '2020202020202020202020202020202020202020656C7365207B0D0A20202020202020202020202020202020202020202020202020202020756E646F4F626A2E7265646F28293B0D0A2020202020202020202020202020202020202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(951) := '20202020202020202020202020202020202020202020202068616E646C6564203D20747275653B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A202020202020202020202020202020207D0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(952) := '202020207D0D0A0D0A2020202020202020202020206966202868616E646C656429207B0D0A20202020202020202020202020202020696620286576656E742E70726576656E7444656661756C7429207B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(953) := '20206576656E742E70726576656E7444656661756C7428293B0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020206966202877696E646F772E6576656E7429207B0D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(954) := '20202077696E646F772E6576656E742E72657475726E56616C7565203D2066616C73653B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(955) := '20202020207D3B0D0A0D0A20202020202020202F2F2053657420746865206D6F646520646570656E64696E67206F6E207768617420697320676F696E67206F6E20696E2074686520696E70757420617265612E0D0A20202020202020207661722068616E';
wwv_flow_api.g_varchar2_table(956) := '646C654D6F64654368616E6765203D2066756E6374696F6E20286576656E7429207B0D0A0D0A20202020202020202020202069662028216576656E742E6374726C4B657920262620216576656E742E6D6574614B657929207B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(957) := '202020202020202020766172206B6579436F6465203D206576656E742E6B6579436F64653B0D0A0D0A2020202020202020202020202020202069662028286B6579436F6465203E3D203333202626206B6579436F6465203C3D20343029207C7C20286B65';
wwv_flow_api.g_varchar2_table(958) := '79436F6465203E3D203633323332202626206B6579436F6465203C3D2036333233352929207B0D0A20202020202020202020202020202020202020202F2F203333202D2034303A20706167652075702F646E20616E64206172726F77206B6579730D0A20';
wwv_flow_api.g_varchar2_table(959) := '202020202020202020202020202020202020202F2F203633323332202D2036333233353A20706167652075702F646E20616E64206172726F77206B657973206F6E207361666172690D0A20202020202020202020202020202020202020207365744D6F64';
wwv_flow_api.g_varchar2_table(960) := '6528226D6F76696E6722293B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C736520696620286B6579436F6465203D3D2038207C7C206B6579436F6465203D3D203436207C7C206B6579436F6465203D';
wwv_flow_api.g_varchar2_table(961) := '3D2031323729207B0D0A20202020202020202020202020202020202020202F2F20383A206261636B73706163650D0A20202020202020202020202020202020202020202F2F2034363A2064656C6574650D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(962) := '20202F2F203132373A2064656C6574650D0A20202020202020202020202020202020202020207365744D6F6465282264656C6574696E6722293B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C736520';
wwv_flow_api.g_varchar2_table(963) := '696620286B6579436F6465203D3D20313329207B0D0A20202020202020202020202020202020202020202F2F2031333A20456E7465720D0A20202020202020202020202020202020202020207365744D6F646528226E65776C696E657322293B0D0A2020';
wwv_flow_api.g_varchar2_table(964) := '20202020202020202020202020207D0D0A20202020202020202020202020202020656C736520696620286B6579436F6465203D3D20323729207B0D0A20202020202020202020202020202020202020202F2F2032373A206573636170650D0A2020202020';
wwv_flow_api.g_varchar2_table(965) := '2020202020202020202020202020207365744D6F6465282265736361706522293B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C73652069662028286B6579436F6465203C203136207C7C206B657943';
wwv_flow_api.g_varchar2_table(966) := '6F6465203E20323029202626206B6579436F646520213D20393129207B0D0A20202020202020202020202020202020202020202F2F2031362D3230206172652073686966742C206574632E0D0A20202020202020202020202020202020202020202F2F20';
wwv_flow_api.g_varchar2_table(967) := '39313A206C6566742077696E646F77206B65790D0A20202020202020202020202020202020202020202F2F2049207468696E6B2074686973206D696768742062652061206C6974746C65206D65737365642075702073696E636520746865726520617265';
wwv_flow_api.g_varchar2_table(968) := '0D0A20202020202020202020202020202020202020202F2F2061206C6F74206F66206E6F6E7072696E74696E67206B6579732061626F76652032302E0D0A20202020202020202020202020202020202020207365744D6F64652822747970696E6722293B';
wwv_flow_api.g_varchar2_table(969) := '0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A2020202020202020766172207365744576656E7448616E646C657273203D2066756E6374696F6E202829207B0D0A20202020';
wwv_flow_api.g_varchar2_table(970) := '20202020202020207574696C2E6164644576656E742870616E656C732E696E7075742C20226B65797072657373222C2066756E6374696F6E20286576656E7429207B0D0A202020202020202020202020202020202F2F206B6579436F64652038393A2079';
wwv_flow_api.g_varchar2_table(971) := '0D0A202020202020202020202020202020202F2F206B6579436F64652039303A207A0D0A2020202020202020202020202020202069662028286576656E742E6374726C4B6579207C7C206576656E742E6D6574614B65792920262620216576656E742E61';
wwv_flow_api.g_varchar2_table(972) := '6C744B657920262620286576656E742E6B6579436F6465203D3D203839207C7C206576656E742E6B6579436F6465203D3D2039302929207B0D0A20202020202020202020202020202020202020206576656E742E70726576656E7444656661756C742829';
wwv_flow_api.g_varchar2_table(973) := '3B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D293B0D0A0D0A2020202020202020202020207661722068616E646C655061737465203D2066756E6374696F6E202829207B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(974) := '2020696620287561536E69666665642E69734945207C7C2028696E70757453746174654F626A20262620696E70757453746174654F626A2E7465787420213D2070616E656C732E696E7075742E76616C75652929207B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(975) := '20202020202020206966202874696D6572203D3D20756E646566696E656429207B0D0A2020202020202020202020202020202020202020202020206D6F6465203D20227061737465223B0D0A202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(976) := '73617665537461746528293B0D0A20202020202020202020202020202020202020202020202072656672657368537461746528293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(977) := '2020202020202020207D3B0D0A0D0A2020202020202020202020207574696C2E6164644576656E742870616E656C732E696E7075742C20226B6579646F776E222C2068616E646C654374726C595A293B0D0A2020202020202020202020207574696C2E61';
wwv_flow_api.g_varchar2_table(978) := '64644576656E742870616E656C732E696E7075742C20226B6579646F776E222C2068616E646C654D6F64654368616E6765293B0D0A2020202020202020202020207574696C2E6164644576656E742870616E656C732E696E7075742C20226D6F75736564';
wwv_flow_api.g_varchar2_table(979) := '6F776E222C2066756E6374696F6E202829207B0D0A202020202020202020202020202020207365744D6F646528226D6F76696E6722293B0D0A2020202020202020202020207D293B0D0A0D0A20202020202020202020202070616E656C732E696E707574';
wwv_flow_api.g_varchar2_table(980) := '2E6F6E7061737465203D2068616E646C6550617374653B0D0A20202020202020202020202070616E656C732E696E7075742E6F6E64726F70203D2068616E646C6550617374653B0D0A20202020202020207D3B0D0A0D0A20202020202020207661722069';
wwv_flow_api.g_varchar2_table(981) := '6E6974203D2066756E6374696F6E202829207B0D0A2020202020202020202020207365744576656E7448616E646C65727328293B0D0A2020202020202020202020207265667265736853746174652874727565293B0D0A20202020202020202020202073';
wwv_flow_api.g_varchar2_table(982) := '617665537461746528293B0D0A20202020202020207D3B0D0A0D0A2020202020202020696E697428293B0D0A202020207D0D0A0D0A202020202F2F20656E64206F6620556E646F4D616E616765720D0A0D0A202020202F2F2054686520696E7075742074';
wwv_flow_api.g_varchar2_table(983) := '657874617265612073746174652F636F6E74656E74732E0D0A202020202F2F2054686973206973207573656420746F20696D706C656D656E7420756E646F2F7265646F2062792074686520756E646F206D616E616765722E0D0A2020202066756E637469';
wwv_flow_api.g_varchar2_table(984) := '6F6E20546578746172656153746174652870616E656C732C206973496E697469616C537461746529207B0D0A0D0A20202020202020202F2F20416C69617365730D0A20202020202020207661722073746174654F626A203D20746869733B0D0A20202020';
wwv_flow_api.g_varchar2_table(985) := '2020202076617220696E70757441726561203D2070616E656C732E696E7075743B0D0A2020202020202020746869732E696E6974203D2066756E6374696F6E202829207B0D0A20202020202020202020202069662028217574696C2E697356697369626C';
wwv_flow_api.g_varchar2_table(986) := '6528696E707574417265612929207B0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A20202020202020202020202069662028216973496E697469616C537461746520262620646F632E61637469';
wwv_flow_api.g_varchar2_table(987) := '7665456C656D656E7420262620646F632E616374697665456C656D656E7420213D3D20696E7075744172656129207B202F2F20746869732068617070656E73207768656E2074616262696E67206F7574206F662074686520696E70757420626F780D0A20';
wwv_flow_api.g_varchar2_table(988) := '20202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020746869732E736574496E7075744172656153656C656374696F6E5374617274456E6428293B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(989) := '20202020746869732E7363726F6C6C546F70203D20696E707574417265612E7363726F6C6C546F703B0D0A2020202020202020202020206966202821746869732E7465787420262620696E707574417265612E73656C656374696F6E5374617274207C7C';
wwv_flow_api.g_varchar2_table(990) := '20696E707574417265612E73656C656374696F6E5374617274203D3D3D203029207B0D0A20202020202020202020202020202020746869732E74657874203D20696E707574417265612E76616C75653B0D0A2020202020202020202020207D0D0A0D0A20';
wwv_flow_api.g_varchar2_table(991) := '202020202020207D0D0A0D0A20202020202020202F2F2053657473207468652073656C6563746564207465787420696E2074686520696E70757420626F7820616674657220776527766520706572666F726D656420616E0D0A20202020202020202F2F20';
wwv_flow_api.g_varchar2_table(992) := '6F7065726174696F6E2E0D0A2020202020202020746869732E736574496E7075744172656153656C656374696F6E203D2066756E6374696F6E202829207B0D0A0D0A20202020202020202020202069662028217574696C2E697356697369626C6528696E';
wwv_flow_api.g_varchar2_table(993) := '707574417265612929207B0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A0D0A20202020202020202020202069662028696E707574417265612E73656C656374696F6E537461727420213D3D20';
wwv_flow_api.g_varchar2_table(994) := '756E646566696E656420262620217561536E69666665642E69734F7065726129207B0D0A0D0A20202020202020202020202020202020696E707574417265612E666F63757328293B0D0A20202020202020202020202020202020696E707574417265612E';
wwv_flow_api.g_varchar2_table(995) := '73656C656374696F6E5374617274203D2073746174654F626A2E73746172743B0D0A20202020202020202020202020202020696E707574417265612E73656C656374696F6E456E64203D2073746174654F626A2E656E643B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(996) := '202020202020696E707574417265612E7363726F6C6C546F70203D2073746174654F626A2E7363726F6C6C546F703B0D0A2020202020202020202020207D0D0A202020202020202020202020656C73652069662028646F632E73656C656374696F6E2920';
wwv_flow_api.g_varchar2_table(997) := '7B0D0A0D0A2020202020202020202020202020202069662028646F632E616374697665456C656D656E7420262620646F632E616374697665456C656D656E7420213D3D20696E7075744172656129207B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(998) := '202072657475726E3B0D0A202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020696E707574417265612E666F63757328293B0D0A202020202020202020202020202020207661722072616E6765203D20696E7075';
wwv_flow_api.g_varchar2_table(999) := '74417265612E6372656174655465787452616E676528293B0D0A2020202020202020202020202020202072616E67652E6D6F766553746172742822636861726163746572222C202D696E707574417265612E76616C75652E6C656E677468293B0D0A2020';
wwv_flow_api.g_varchar2_table(1000) := '202020202020202020202020202072616E67652E6D6F7665456E642822636861726163746572222C202D696E707574417265612E76616C75652E6C656E677468293B0D0A2020202020202020202020202020202072616E67652E6D6F7665456E64282263';
wwv_flow_api.g_varchar2_table(1001) := '6861726163746572222C2073746174654F626A2E656E64293B0D0A2020202020202020202020202020202072616E67652E6D6F766553746172742822636861726163746572222C2073746174654F626A2E7374617274293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1002) := '20202020202072616E67652E73656C65637428293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A2020202020202020746869732E736574496E7075744172656153656C656374696F6E5374617274456E64203D2066756E';
wwv_flow_api.g_varchar2_table(1003) := '6374696F6E202829207B0D0A0D0A202020202020202020202020696620282170616E656C732E696543616368656452616E67652026262028696E707574417265612E73656C656374696F6E5374617274207C7C20696E707574417265612E73656C656374';
wwv_flow_api.g_varchar2_table(1004) := '696F6E5374617274203D3D3D20302929207B0D0A0D0A2020202020202020202020202020202073746174654F626A2E7374617274203D20696E707574417265612E73656C656374696F6E53746172743B0D0A202020202020202020202020202020207374';
wwv_flow_api.g_varchar2_table(1005) := '6174654F626A2E656E64203D20696E707574417265612E73656C656374696F6E456E643B0D0A2020202020202020202020207D0D0A202020202020202020202020656C73652069662028646F632E73656C656374696F6E29207B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(1006) := '2020202020202020202073746174654F626A2E74657874203D207574696C2E666978456F6C436861727328696E707574417265612E76616C7565293B0D0A0D0A202020202020202020202020202020202F2F204945206C6F736573207468652073656C65';
wwv_flow_api.g_varchar2_table(1007) := '6374696F6E20696E20746865207465787461726561207768656E20627574746F6E73206172650D0A202020202020202020202020202020202F2F20636C69636B65642E20204F6E204945207765206361636865207468652073656C656374696F6E2E2048';
wwv_flow_api.g_varchar2_table(1008) := '6572652C20696620736F6D657468696E67206973206361636865642C0D0A202020202020202020202020202020202F2F2077652074616B652069742E0D0A202020202020202020202020202020207661722072616E6765203D2070616E656C732E696543';
wwv_flow_api.g_varchar2_table(1009) := '616368656452616E6765207C7C20646F632E73656C656374696F6E2E63726561746552616E676528293B0D0A0D0A2020202020202020202020202020202076617220666978656452616E6765203D207574696C2E666978456F6C43686172732872616E67';
wwv_flow_api.g_varchar2_table(1010) := '652E74657874293B0D0A20202020202020202020202020202020766172206D61726B6572203D20225C783037223B0D0A20202020202020202020202020202020766172206D61726B656452616E6765203D206D61726B6572202B20666978656452616E67';
wwv_flow_api.g_varchar2_table(1011) := '65202B206D61726B65723B0D0A2020202020202020202020202020202072616E67652E74657874203D206D61726B656452616E67653B0D0A2020202020202020202020202020202076617220696E70757454657874203D207574696C2E666978456F6C43';
wwv_flow_api.g_varchar2_table(1012) := '6861727328696E707574417265612E76616C7565293B0D0A0D0A2020202020202020202020202020202072616E67652E6D6F766553746172742822636861726163746572222C202D6D61726B656452616E67652E6C656E677468293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1013) := '2020202020202020202072616E67652E74657874203D20666978656452616E67653B0D0A0D0A2020202020202020202020202020202073746174654F626A2E7374617274203D20696E707574546578742E696E6465784F66286D61726B6572293B0D0A20';
wwv_flow_api.g_varchar2_table(1014) := '20202020202020202020202020202073746174654F626A2E656E64203D20696E707574546578742E6C617374496E6465784F66286D61726B657229202D206D61726B65722E6C656E6774683B0D0A0D0A2020202020202020202020202020202076617220';
wwv_flow_api.g_varchar2_table(1015) := '6C656E203D2073746174654F626A2E746578742E6C656E677468202D207574696C2E666978456F6C436861727328696E707574417265612E76616C7565292E6C656E6774683B0D0A0D0A20202020202020202020202020202020696620286C656E29207B';
wwv_flow_api.g_varchar2_table(1016) := '0D0A202020202020202020202020202020202020202072616E67652E6D6F766553746172742822636861726163746572222C202D666978656452616E67652E6C656E677468293B0D0A20202020202020202020202020202020202020207768696C652028';
wwv_flow_api.g_varchar2_table(1017) := '6C656E2D2D29207B0D0A202020202020202020202020202020202020202020202020666978656452616E6765202B3D20225C6E223B0D0A20202020202020202020202020202020202020202020202073746174654F626A2E656E64202B3D20313B0D0A20';
wwv_flow_api.g_varchar2_table(1018) := '202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202072616E67652E74657874203D20666978656452616E67653B0D0A202020202020202020202020202020207D0D0A0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1019) := '20202020206966202870616E656C732E696543616368656452616E6765290D0A202020202020202020202020202020202020202073746174654F626A2E7363726F6C6C546F70203D2070616E656C732E69654361636865645363726F6C6C546F703B202F';
wwv_flow_api.g_varchar2_table(1020) := '2F20746869732069732073657420616C6F6E6773696465207769746820696543616368656452616E67650D0A0D0A2020202020202020202020202020202070616E656C732E696543616368656452616E6765203D206E756C6C3B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(1021) := '20202020202020202020746869732E736574496E7075744172656153656C656374696F6E28293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F20526573746F7265207468697320737461746520';
wwv_flow_api.g_varchar2_table(1022) := '696E746F2074686520696E70757420617265612E0D0A2020202020202020746869732E726573746F7265203D2066756E6374696F6E202829207B0D0A0D0A2020202020202020202020206966202873746174654F626A2E7465787420213D20756E646566';
wwv_flow_api.g_varchar2_table(1023) := '696E65642026262073746174654F626A2E7465787420213D20696E707574417265612E76616C756529207B0D0A20202020202020202020202020202020696E707574417265612E76616C7565203D2073746174654F626A2E746578743B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1024) := '202020202020207D0D0A202020202020202020202020746869732E736574496E7075744172656153656C656374696F6E28293B0D0A202020202020202020202020696E707574417265612E7363726F6C6C546F70203D2073746174654F626A2E7363726F';
wwv_flow_api.g_varchar2_table(1025) := '6C6C546F703B0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F2047657473206120636F6C6C656374696F6E206F662048544D4C206368756E6B732066726F6D2074686520696E707475742074657874617265612E0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1026) := '20746869732E6765744368756E6B73203D2066756E6374696F6E202829207B0D0A0D0A202020202020202020202020766172206368756E6B203D206E6577204368756E6B7328293B0D0A2020202020202020202020206368756E6B2E6265666F7265203D';
wwv_flow_api.g_varchar2_table(1027) := '207574696C2E666978456F6C43686172732873746174654F626A2E746578742E737562737472696E6728302C2073746174654F626A2E737461727429293B0D0A2020202020202020202020206368756E6B2E7374617274546167203D2022223B0D0A2020';
wwv_flow_api.g_varchar2_table(1028) := '202020202020202020206368756E6B2E73656C656374696F6E203D207574696C2E666978456F6C43686172732873746174654F626A2E746578742E737562737472696E672873746174654F626A2E73746172742C2073746174654F626A2E656E6429293B';
wwv_flow_api.g_varchar2_table(1029) := '0D0A2020202020202020202020206368756E6B2E656E64546167203D2022223B0D0A2020202020202020202020206368756E6B2E6166746572203D207574696C2E666978456F6C43686172732873746174654F626A2E746578742E737562737472696E67';
wwv_flow_api.g_varchar2_table(1030) := '2873746174654F626A2E656E6429293B0D0A2020202020202020202020206368756E6B2E7363726F6C6C546F70203D2073746174654F626A2E7363726F6C6C546F703B0D0A0D0A20202020202020202020202072657475726E206368756E6B3B0D0A2020';
wwv_flow_api.g_varchar2_table(1031) := '2020202020207D3B0D0A0D0A20202020202020202F2F20536574732074686520546578746172656153746174652070726F7065727469657320676976656E2061206368756E6B206F66206D61726B646F776E2E0D0A2020202020202020746869732E7365';
wwv_flow_api.g_varchar2_table(1032) := '744368756E6B73203D2066756E6374696F6E20286368756E6B29207B0D0A0D0A2020202020202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F7265202B206368756E6B2E73746172745461673B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1033) := '2020206368756E6B2E6166746572203D206368756E6B2E656E64546167202B206368756E6B2E61667465723B0D0A0D0A202020202020202020202020746869732E7374617274203D206368756E6B2E6265666F72652E6C656E6774683B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1034) := '20202020202020746869732E656E64203D206368756E6B2E6265666F72652E6C656E677468202B206368756E6B2E73656C656374696F6E2E6C656E6774683B0D0A202020202020202020202020746869732E74657874203D206368756E6B2E6265666F72';
wwv_flow_api.g_varchar2_table(1035) := '65202B206368756E6B2E73656C656374696F6E202B206368756E6B2E61667465723B0D0A202020202020202020202020746869732E7363726F6C6C546F70203D206368756E6B2E7363726F6C6C546F703B0D0A20202020202020207D3B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1036) := '202020746869732E696E697428293B0D0A202020207D3B0D0A0D0A2020202066756E6374696F6E20507265766965774D616E6167657228636F6E7665727465722C2070616E656C732C20707265766965775265667265736843616C6C6261636B29207B0D';
wwv_flow_api.g_varchar2_table(1037) := '0A0D0A2020202020202020766172206D616E616765724F626A203D20746869733B0D0A20202020202020207661722074696D656F75743B0D0A202020202020202076617220656C617073656454696D653B0D0A2020202020202020766172206F6C64496E';
wwv_flow_api.g_varchar2_table(1038) := '707574546578743B0D0A2020202020202020766172206D617844656C6179203D20333030303B0D0A202020202020202076617220737461727454797065203D202264656C61796564223B202F2F20546865206F74686572206C6567616C2076616C756520';
wwv_flow_api.g_varchar2_table(1039) := '697320226D616E75616C220D0A0D0A20202020202020202F2F2041646473206576656E74206C697374656E65727320746F20656C656D656E74730D0A20202020202020207661722073657475704576656E7473203D2066756E6374696F6E2028696E7075';
wwv_flow_api.g_varchar2_table(1040) := '74456C656D2C206C697374656E657229207B0D0A0D0A2020202020202020202020207574696C2E6164644576656E7428696E707574456C656D2C2022696E707574222C206C697374656E6572293B0D0A202020202020202020202020696E707574456C65';
wwv_flow_api.g_varchar2_table(1041) := '6D2E6F6E7061737465203D206C697374656E65723B0D0A202020202020202020202020696E707574456C656D2E6F6E64726F70203D206C697374656E65723B0D0A0D0A2020202020202020202020207574696C2E6164644576656E7428696E707574456C';
wwv_flow_api.g_varchar2_table(1042) := '656D2C20226B65797072657373222C206C697374656E6572293B0D0A2020202020202020202020207574696C2E6164644576656E7428696E707574456C656D2C20226B6579646F776E222C206C697374656E6572293B0D0A20202020202020207D3B0D0A';
wwv_flow_api.g_varchar2_table(1043) := '0D0A202020202020202076617220676574446F635363726F6C6C546F70203D2066756E6374696F6E202829207B0D0A0D0A20202020202020202020202076617220726573756C74203D20303B0D0A0D0A2020202020202020202020206966202877696E64';
wwv_flow_api.g_varchar2_table(1044) := '6F772E696E6E657248656967687429207B0D0A20202020202020202020202020202020726573756C74203D2077696E646F772E70616765594F66667365743B0D0A2020202020202020202020207D0D0A202020202020202020202020656C73650D0A2020';
wwv_flow_api.g_varchar2_table(1045) := '2020202020202020202069662028646F632E646F63756D656E74456C656D656E7420262620646F632E646F63756D656E74456C656D656E742E7363726F6C6C546F7029207B0D0A20202020202020202020202020202020726573756C74203D20646F632E';
wwv_flow_api.g_varchar2_table(1046) := '646F63756D656E74456C656D656E742E7363726F6C6C546F703B0D0A2020202020202020202020207D0D0A202020202020202020202020656C73650D0A20202020202020202020202069662028646F632E626F647929207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1047) := '202020202020726573756C74203D20646F632E626F64792E7363726F6C6C546F703B0D0A2020202020202020202020207D0D0A0D0A20202020202020202020202072657475726E20726573756C743B0D0A20202020202020207D3B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(1048) := '202020766172206D616B655072657669657748746D6C203D2066756E6374696F6E202829207B0D0A0D0A2020202020202020202020202F2F204966207468657265206973206E6F207265676973746572656420707265766965772070616E656C0D0A2020';
wwv_flow_api.g_varchar2_table(1049) := '202020202020202020202F2F207468657265206973206E6F7468696E6720746F20646F2E0D0A202020202020202020202020696620282170616E656C732E70726576696577290D0A2020202020202020202020202020202072657475726E3B0D0A0D0A0D';
wwv_flow_api.g_varchar2_table(1050) := '0A2020202020202020202020207661722074657874203D2070616E656C732E696E7075742E76616C75653B0D0A20202020202020202020202069662028746578742026262074657874203D3D206F6C64496E7075745465787429207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1051) := '2020202020202020202072657475726E3B202F2F20496E7075742074657874206861736E2774206368616E6765642E0D0A2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1052) := '6F6C64496E70757454657874203D20746578743B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020766172207072657654696D65203D206E6577204461746528292E67657454696D6528293B0D0A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1053) := '20202074657874203D20636F6E7665727465722E6D616B6548746D6C2874657874293B0D0A0D0A2020202020202020202020202F2F2043616C63756C617465207468652070726F63657373696E672074696D65206F66207468652048544D4C2063726561';
wwv_flow_api.g_varchar2_table(1054) := '74696F6E2E0D0A2020202020202020202020202F2F20497427732075736564206173207468652064656C61792074696D6520696E20746865206576656E74206C697374656E65722E0D0A202020202020202020202020766172206375727254696D65203D';
wwv_flow_api.g_varchar2_table(1055) := '206E6577204461746528292E67657454696D6528293B0D0A202020202020202020202020656C617073656454696D65203D206375727254696D65202D207072657654696D653B0D0A0D0A202020202020202020202020707573685072657669657748746D';
wwv_flow_api.g_varchar2_table(1056) := '6C2874657874293B0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F2073657454696D656F757420697320616C726561647920757365642E20205573656420617320616E206576656E74206C697374656E65722E0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1057) := '766172206170706C7954696D656F7574203D2066756E6374696F6E202829207B0D0A0D0A2020202020202020202020206966202874696D656F757429207B0D0A20202020202020202020202020202020636C65617254696D656F75742874696D656F7574';
wwv_flow_api.g_varchar2_table(1058) := '293B0D0A2020202020202020202020202020202074696D656F7574203D20756E646566696E65643B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020206966202873746172745479706520213D3D20226D616E75616C2229207B';
wwv_flow_api.g_varchar2_table(1059) := '0D0A0D0A202020202020202020202020202020207661722064656C6179203D20303B0D0A0D0A2020202020202020202020202020202069662028737461727454797065203D3D3D202264656C617965642229207B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1060) := '20202020202064656C6179203D20656C617073656454696D653B0D0A202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020206966202864656C6179203E206D617844656C617929207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1061) := '2020202020202020202064656C6179203D206D617844656C61793B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202074696D656F7574203D2073657454696D656F7574286D616B655072657669657748746D6C';
wwv_flow_api.g_varchar2_table(1062) := '2C2064656C6179293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A2020202020202020766172206765745363616C65466163746F72203D2066756E6374696F6E202870616E656C29207B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1063) := '206966202870616E656C2E7363726F6C6C486569676874203C3D2070616E656C2E636C69656E7448656967687429207B0D0A2020202020202020202020202020202072657475726E20313B0D0A2020202020202020202020207D0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1064) := '2020202072657475726E2070616E656C2E7363726F6C6C546F70202F202870616E656C2E7363726F6C6C486569676874202D2070616E656C2E636C69656E74486569676874293B0D0A20202020202020207D3B0D0A0D0A20202020202020207661722073';
wwv_flow_api.g_varchar2_table(1065) := '657450616E656C5363726F6C6C546F7073203D2066756E6374696F6E202829207B0D0A2020202020202020202020206966202870616E656C732E7072657669657729207B0D0A2020202020202020202020202020202070616E656C732E70726576696577';
wwv_flow_api.g_varchar2_table(1066) := '2E7363726F6C6C546F70203D202870616E656C732E707265766965772E7363726F6C6C486569676874202D2070616E656C732E707265766965772E636C69656E7448656967687429202A206765745363616C65466163746F722870616E656C732E707265';
wwv_flow_api.g_varchar2_table(1067) := '76696577293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A2020202020202020746869732E72656672657368203D2066756E6374696F6E202872657175697265735265667265736829207B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1068) := '202020206966202872657175697265735265667265736829207B0D0A202020202020202020202020202020206F6C64496E70757454657874203D2022223B0D0A202020202020202020202020202020206D616B655072657669657748746D6C28293B0D0A';
wwv_flow_api.g_varchar2_table(1069) := '2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A202020202020202020202020202020206170706C7954696D656F757428293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1070) := '2020202020746869732E70726F63657373696E6754696D65203D2066756E6374696F6E202829207B0D0A20202020202020202020202072657475726E20656C617073656454696D653B0D0A20202020202020207D3B0D0A0D0A2020202020202020766172';
wwv_flow_api.g_varchar2_table(1071) := '206973466972737454696D6546696C6C6564203D20747275653B0D0A0D0A20202020202020202F2F20494520646F65736E2774206C657420796F752075736520696E6E657248544D4C2069662074686520656C656D656E7420697320636F6E7461696E65';
wwv_flow_api.g_varchar2_table(1072) := '6420736F6D65776865726520696E2061207461626C650D0A20202020202020202F2F2028776869636820697320746865206361736520666F7220696E6C696E652065646974696E6729202D2D20696E207468617420636173652C20646574616368207468';
wwv_flow_api.g_varchar2_table(1073) := '6520656C656D656E742C20736574207468650D0A20202020202020202F2F2076616C75652C20616E642072656174746163682E205965732C2074686174202A69732A207269646963756C6F75732E0D0A2020202020202020766172206965536166655072';
wwv_flow_api.g_varchar2_table(1074) := '6576696577536574203D2066756E6374696F6E20287465787429207B0D0A2020202020202020202020207661722070726576696577203D2070616E656C732E707265766965773B0D0A20202020202020202020202076617220706172656E74203D207072';
wwv_flow_api.g_varchar2_table(1075) := '65766965772E706172656E744E6F64653B0D0A202020202020202020202020766172207369626C696E67203D20707265766965772E6E6578745369626C696E673B0D0A202020202020202020202020706172656E742E72656D6F76654368696C64287072';
wwv_flow_api.g_varchar2_table(1076) := '6576696577293B0D0A202020202020202020202020707265766965772E696E6E657248544D4C203D20746578743B0D0A20202020202020202020202069662028217369626C696E67290D0A20202020202020202020202020202020706172656E742E6170';
wwv_flow_api.g_varchar2_table(1077) := '70656E644368696C642870726576696577293B0D0A202020202020202020202020656C73650D0A20202020202020202020202020202020706172656E742E696E736572744265666F726528707265766965772C207369626C696E67293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1078) := '2020207D0D0A0D0A2020202020202020766172206E6F6E5375636B7942726F7773657250726576696577536574203D2066756E6374696F6E20287465787429207B0D0A20202020202020202020202070616E656C732E707265766965772E696E6E657248';
wwv_flow_api.g_varchar2_table(1079) := '544D4C203D20746578743B0D0A20202020202020207D0D0A0D0A202020202020202076617220707265766965775365747465723B0D0A0D0A20202020202020207661722070726576696577536574203D2066756E6374696F6E20287465787429207B0D0A';
wwv_flow_api.g_varchar2_table(1080) := '2020202020202020202020206966202870726576696577536574746572290D0A2020202020202020202020202020202072657475726E20707265766965775365747465722874657874293B0D0A0D0A202020202020202020202020747279207B0D0A2020';
wwv_flow_api.g_varchar2_table(1081) := '20202020202020202020202020206E6F6E5375636B7942726F77736572507265766965775365742874657874293B0D0A2020202020202020202020202020202070726576696577536574746572203D206E6F6E5375636B7942726F777365725072657669';
wwv_flow_api.g_varchar2_table(1082) := '65775365743B0D0A2020202020202020202020207D20636174636820286529207B0D0A2020202020202020202020202020202070726576696577536574746572203D20696553616665507265766965775365743B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1083) := '2020707265766965775365747465722874657874293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A202020202020202076617220707573685072657669657748746D6C203D2066756E6374696F6E20287465787429207B';
wwv_flow_api.g_varchar2_table(1084) := '0D0A0D0A20202020202020202020202076617220656D707479546F70203D20706F736974696F6E2E676574546F702870616E656C732E696E70757429202D20676574446F635363726F6C6C546F7028293B0D0A0D0A202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(1085) := '2870616E656C732E7072657669657729207B0D0A20202020202020202020202020202020707265766965775365742874657874293B0D0A20202020202020202020202020202020707265766965775265667265736843616C6C6261636B28293B0D0A2020';
wwv_flow_api.g_varchar2_table(1086) := '202020202020202020207D0D0A0D0A20202020202020202020202073657450616E656C5363726F6C6C546F707328293B0D0A0D0A202020202020202020202020696620286973466972737454696D6546696C6C656429207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1087) := '2020202020206973466972737454696D6546696C6C6564203D2066616C73653B0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020207661722066756C6C546F7020';
wwv_flow_api.g_varchar2_table(1088) := '3D20706F736974696F6E2E676574546F702870616E656C732E696E70757429202D20676574446F635363726F6C6C546F7028293B0D0A0D0A202020202020202020202020696620287561536E69666665642E6973494529207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1089) := '2020202020202073657454696D656F75742866756E6374696F6E202829207B0D0A202020202020202020202020202020202020202077696E646F772E7363726F6C6C427928302C2066756C6C546F70202D20656D707479546F70293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1090) := '202020202020202020207D2C2030293B0D0A2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A2020202020202020202020202020202077696E646F772E7363726F6C6C427928302C2066756C6C546F70202D20656D';
wwv_flow_api.g_varchar2_table(1091) := '707479546F70293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A202020202020202076617220696E6974203D2066756E6374696F6E202829207B0D0A0D0A20202020202020202020202073657475704576656E74732870';
wwv_flow_api.g_varchar2_table(1092) := '616E656C732E696E7075742C206170706C7954696D656F7574293B0D0A2020202020202020202020206D616B655072657669657748746D6C28293B0D0A0D0A2020202020202020202020206966202870616E656C732E7072657669657729207B0D0A2020';
wwv_flow_api.g_varchar2_table(1093) := '202020202020202020202020202070616E656C732E707265766965772E7363726F6C6C546F70203D20303B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A2020202020202020696E697428293B0D0A202020207D3B0D0A0D';
wwv_flow_api.g_varchar2_table(1094) := '0A202020202F2F204372656174657320746865206261636B67726F756E6420626568696E64207468652068797065726C696E6B207465787420656E74727920626F782E0D0A202020202F2F20416E6420646F776E6C6F6164206469616C6F670D0A202020';
wwv_flow_api.g_varchar2_table(1095) := '202F2F204D6F7374206F66207468697320686173206265656E206D6F76656420746F20435353206275742074686520646976206372656174696F6E20616E640D0A202020202F2F2062726F777365722D7370656369666963206861636B732072656D6169';
wwv_flow_api.g_varchar2_table(1096) := '6E20686572652E0D0A2020202075692E6372656174654261636B67726F756E64203D2066756E6374696F6E202829207B0D0A0D0A2020202020202020766172206261636B67726F756E64203D20646F632E637265617465456C656D656E74282264697622';
wwv_flow_api.g_varchar2_table(1097) := '292C0D0A2020202020202020202020207374796C65203D206261636B67726F756E642E7374796C653B0D0A0D0A20202020202020206261636B67726F756E642E636C6173734E616D65203D2022776D642D70726F6D70742D6261636B67726F756E64223B';
wwv_flow_api.g_varchar2_table(1098) := '0D0A0D0A20202020202020207374796C652E706F736974696F6E203D20226162736F6C757465223B0D0A20202020202020207374796C652E746F70203D202230223B0D0A0D0A20202020202020207374796C652E7A496E646578203D202231303030223B';
wwv_flow_api.g_varchar2_table(1099) := '0D0A0D0A2020202020202020696620287561536E69666665642E6973494529207B0D0A2020202020202020202020207374796C652E66696C746572203D2022616C706861286F7061636974793D353029223B0D0A20202020202020207D0D0A2020202020';
wwv_flow_api.g_varchar2_table(1100) := '202020656C7365207B0D0A2020202020202020202020207374796C652E6F706163697479203D2022302E35223B0D0A20202020202020207D0D0A0D0A2020202020202020766172207061676553697A65203D20706F736974696F6E2E6765745061676553';
wwv_flow_api.g_varchar2_table(1101) := '697A6528293B0D0A20202020202020207374796C652E686569676874203D207061676553697A655B315D202B20227078223B0D0A0D0A2020202020202020696620287561536E69666665642E6973494529207B0D0A202020202020202020202020737479';
wwv_flow_api.g_varchar2_table(1102) := '6C652E6C656674203D20646F632E646F63756D656E74456C656D656E742E7363726F6C6C4C6566743B0D0A2020202020202020202020207374796C652E7769647468203D20646F632E646F63756D656E74456C656D656E742E636C69656E745769647468';
wwv_flow_api.g_varchar2_table(1103) := '3B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A2020202020202020202020207374796C652E6C656674203D202230223B0D0A2020202020202020202020207374796C652E7769647468203D202231303025223B0D0A20202020';
wwv_flow_api.g_varchar2_table(1104) := '202020207D0D0A0D0A2020202020202020646F632E626F64792E617070656E644368696C64286261636B67726F756E64293B0D0A202020202020202072657475726E206261636B67726F756E643B0D0A202020207D3B0D0A0D0A202020202F2F20546869';
wwv_flow_api.g_varchar2_table(1105) := '732073696D756C617465732061206D6F64616C206469616C6F6720626F7820616E642061736B7320666F72207468652055524C207768656E20796F750D0A202020202F2F20636C69636B207468652068797065726C696E6B206F7220696D616765206275';
wwv_flow_api.g_varchar2_table(1106) := '74746F6E732E0D0A202020202F2F0D0A202020202F2F20746578743A205468652068746D6C20666F722074686520696E70757420626F782E0D0A202020202F2F2064656661756C74496E707574546578743A205468652064656661756C742076616C7565';
wwv_flow_api.g_varchar2_table(1107) := '2074686174206170706561727320696E2074686520696E70757420626F782E0D0A202020202F2F2063616C6C6261636B3A205468652066756E6374696F6E207768696368206973206578656375746564207768656E207468652070726F6D707420697320';
wwv_flow_api.g_varchar2_table(1108) := '6469736D69737365642C2065697468657220766961204F4B206F722043616E63656C2E0D0A202020202F2F202020202020497420726563656976657320612073696E676C6520617267756D656E743B206569746865722074686520656E74657265642074';
wwv_flow_api.g_varchar2_table(1109) := '65787420286966204F4B207761732063686F73656E29206F72206E756C6C202869662043616E63656C0D0A202020202F2F2020202020207761732063686F73656E292E0D0A2020202075692E70726F6D7074203D2066756E6374696F6E2028746578742C';
wwv_flow_api.g_varchar2_table(1110) := '2064656661756C74496E707574546578742C2063616C6C6261636B29207B0D0A0D0A20202020202020202F2F205468657365207661726961626C6573206E65656420746F206265206465636C617265642061742074686973206C6576656C2073696E6365';
wwv_flow_api.g_varchar2_table(1111) := '20746865792061726520757365640D0A20202020202020202F2F20696E206D756C7469706C652066756E6374696F6E732E0D0A2020202020202020766172206469616C6F673B2020202020202020202F2F20546865206469616C6F6720626F782E0D0A20';
wwv_flow_api.g_varchar2_table(1112) := '2020202020202076617220696E7075743B2020202020202020202F2F20546865207465787420626F7820776865726520796F7520656E746572207468652068797065726C696E6B2E0D0A0D0A0D0A20202020202020206966202864656661756C74496E70';
wwv_flow_api.g_varchar2_table(1113) := '757454657874203D3D3D20756E646566696E656429207B0D0A20202020202020202020202064656661756C74496E70757454657874203D2022223B0D0A20202020202020207D0D0A0D0A20202020202020202F2F20557365642061732061206B6579646F';
wwv_flow_api.g_varchar2_table(1114) := '776E206576656E742068616E646C65722E20457363206469736D6973736573207468652070726F6D70742E0D0A20202020202020202F2F204B657920636F6465203237206973204553432E0D0A202020202020202076617220636865636B457363617065';
wwv_flow_api.g_varchar2_table(1115) := '203D2066756E6374696F6E20286B657929207B0D0A20202020202020202020202076617220636F6465203D20286B65792E63686172436F6465207C7C206B65792E6B6579436F6465293B0D0A20202020202020202020202069662028636F6465203D3D3D';
wwv_flow_api.g_varchar2_table(1116) := '20323729207B0D0A20202020202020202020202020202020696620286B65792E73746F7050726F7061676174696F6E29206B65792E73746F7050726F7061676174696F6E28293B0D0A20202020202020202020202020202020636C6F7365287472756529';
wwv_flow_api.g_varchar2_table(1117) := '3B0D0A2020202020202020202020202020202072657475726E2066616C73653B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F204469736D6973736573207468652068797065726C696E6B20696E';
wwv_flow_api.g_varchar2_table(1118) := '70757420626F782E0D0A20202020202020202F2F20697343616E63656C206973207472756520696620776520646F6E277420636172652061626F75742074686520696E70757420746578742E0D0A20202020202020202F2F20697343616E63656C206973';
wwv_flow_api.g_varchar2_table(1119) := '2066616C73652069662077652061726520676F696E6720746F206B6565702074686520746578742E0D0A202020202020202076617220636C6F7365203D2066756E6374696F6E2028697343616E63656C29207B0D0A202020202020202020202020757469';
wwv_flow_api.g_varchar2_table(1120) := '6C2E72656D6F76654576656E7428646F632E626F64792C20226B65797570222C20636865636B457363617065293B0D0A2020202020202020202020207661722074657874203D20696E7075742E76616C75653B0D0A0D0A20202020202020202020202069';
wwv_flow_api.g_varchar2_table(1121) := '662028697343616E63656C29207B0D0A2020202020202020202020202020202074657874203D206E756C6C3B0D0A2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A202020202020202020202020202020202F2F20';
wwv_flow_api.g_varchar2_table(1122) := '466978657320636F6D6D6F6E2070617374696E67206572726F72732E0D0A2020202020202020202020202020202074657874203D20746578742E7265706C616365282F5E687474703A5C2F5C2F2868747470733F7C667470293A5C2F5C2F2F2C20272431';
wwv_flow_api.g_varchar2_table(1123) := '3A2F2F27293B0D0A2020202020202020202020202020202069662028212F5E283F3A68747470733F7C667470293A5C2F5C2F2F2E74657374287465787429290D0A202020202020202020202020202020202020202074657874203D2027687474703A2F2F';
wwv_flow_api.g_varchar2_table(1124) := '27202B20746578743B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020206469616C6F672E706172656E744E6F64652E72656D6F76654368696C64286469616C6F67293B0D0A0D0A20202020202020202020202063616C6C6261';
wwv_flow_api.g_varchar2_table(1125) := '636B2874657874293B0D0A20202020202020202020202072657475726E2066616C73653B0D0A20202020202020207D3B0D0A0D0A0D0A0D0A20202020202020202F2F2043726561746520746865207465787420696E70757420626F7820666F726D2F7769';
wwv_flow_api.g_varchar2_table(1126) := '6E646F772E0D0A2020202020202020766172206372656174654469616C6F67203D2066756E6374696F6E202829207B0D0A0D0A2020202020202020202020202F2F20546865206D61696E206469616C6F6720626F782E0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1127) := '6469616C6F67203D20646F632E637265617465456C656D656E74282264697622293B0D0A2020202020202020202020206469616C6F672E636C6173734E616D65203D2022776D642D70726F6D70742D6469616C6F67223B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1128) := '206469616C6F672E7374796C652E70616464696E67203D2022313070783B223B0D0A2020202020202020202020206469616C6F672E7374796C652E706F736974696F6E203D20226669786564223B0D0A2020202020202020202020206469616C6F672E73';
wwv_flow_api.g_varchar2_table(1129) := '74796C652E7769647468203D20223430307078223B0D0A2020202020202020202020206469616C6F672E7374796C652E7A496E646578203D202231303031223B0D0A0D0A2020202020202020202020202F2F20546865206469616C6F6720746578742E0D';
wwv_flow_api.g_varchar2_table(1130) := '0A202020202020202020202020766172207175657374696F6E203D20646F632E637265617465456C656D656E74282264697622293B0D0A2020202020202020202020207175657374696F6E2E696E6E657248544D4C203D20746578743B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1131) := '202020202020207175657374696F6E2E7374796C652E70616464696E67203D2022357078223B0D0A2020202020202020202020206469616C6F672E617070656E644368696C64287175657374696F6E293B0D0A0D0A2020202020202020202020202F2F20';
wwv_flow_api.g_varchar2_table(1132) := '5468652077656220666F726D20636F6E7461696E657220666F7220746865207465787420626F7820616E6420627574746F6E732E0D0A20202020202020202020202076617220666F726D203D20646F632E637265617465456C656D656E742822666F726D';
wwv_flow_api.g_varchar2_table(1133) := '22292C0D0A202020202020202020202020202020207374796C65203D20666F726D2E7374796C653B0D0A202020202020202020202020666F726D2E6F6E7375626D6974203D2066756E6374696F6E202829207B2072657475726E20636C6F73652866616C';
wwv_flow_api.g_varchar2_table(1134) := '7365293B207D3B0D0A2020202020202020202020207374796C652E70616464696E67203D202230223B0D0A2020202020202020202020207374796C652E6D617267696E203D202230223B0D0A2020202020202020202020207374796C652E637373466C6F';
wwv_flow_api.g_varchar2_table(1135) := '6174203D20226C656674223B0D0A2020202020202020202020207374796C652E7769647468203D202231303025223B0D0A2020202020202020202020207374796C652E74657874416C69676E203D202263656E746572223B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1136) := '20207374796C652E706F736974696F6E203D202272656C6174697665223B0D0A2020202020202020202020206469616C6F672E617070656E644368696C6428666F726D293B0D0A0D0A2020202020202020202020202F2F2054686520696E707574207465';
wwv_flow_api.g_varchar2_table(1137) := '787420626F780D0A202020202020202020202020696E707574203D20646F632E637265617465456C656D656E742822696E70757422293B0D0A202020202020202020202020696E7075742E74797065203D202274657874223B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1138) := '202020696E7075742E76616C7565203D2064656661756C74496E707574546578743B0D0A2020202020202020202020207374796C65203D20696E7075742E7374796C653B0D0A2020202020202020202020207374796C652E646973706C6179203D202262';
wwv_flow_api.g_varchar2_table(1139) := '6C6F636B223B0D0A2020202020202020202020207374796C652E7769647468203D2022383025223B0D0A2020202020202020202020207374796C652E6D617267696E4C656674203D207374796C652E6D617267696E5269676874203D20226175746F223B';
wwv_flow_api.g_varchar2_table(1140) := '0D0A202020202020202020202020666F726D2E617070656E644368696C6428696E707574293B0D0A0D0A2020202020202020202020202F2F20546865206F6B20627574746F6E0D0A202020202020202020202020766172206F6B427574746F6E203D2064';
wwv_flow_api.g_varchar2_table(1141) := '6F632E637265617465456C656D656E742822696E70757422293B0D0A2020202020202020202020206F6B427574746F6E2E74797065203D2022627574746F6E223B0D0A2020202020202020202020206F6B427574746F6E2E6F6E636C69636B203D206675';
wwv_flow_api.g_varchar2_table(1142) := '6E6374696F6E202829207B2072657475726E20636C6F73652866616C7365293B207D3B0D0A2020202020202020202020206F6B427574746F6E2E76616C7565203D20224F4B223B0D0A2020202020202020202020207374796C65203D206F6B427574746F';
wwv_flow_api.g_varchar2_table(1143) := '6E2E7374796C653B0D0A2020202020202020202020207374796C652E6D617267696E203D202231307078223B0D0A2020202020202020202020207374796C652E646973706C6179203D2022696E6C696E65223B0D0A202020202020202020202020737479';
wwv_flow_api.g_varchar2_table(1144) := '6C652E7769647468203D202237656D223B0D0A0D0A0D0A2020202020202020202020202F2F205468652063616E63656C20627574746F6E0D0A2020202020202020202020207661722063616E63656C427574746F6E203D20646F632E637265617465456C';
wwv_flow_api.g_varchar2_table(1145) := '656D656E742822696E70757422293B0D0A20202020202020202020202063616E63656C427574746F6E2E74797065203D2022627574746F6E223B0D0A20202020202020202020202063616E63656C427574746F6E2E6F6E636C69636B203D2066756E6374';
wwv_flow_api.g_varchar2_table(1146) := '696F6E202829207B2072657475726E20636C6F73652874727565293B207D3B0D0A20202020202020202020202063616E63656C427574746F6E2E76616C7565203D202243616E63656C223B0D0A2020202020202020202020207374796C65203D2063616E';
wwv_flow_api.g_varchar2_table(1147) := '63656C427574746F6E2E7374796C653B0D0A2020202020202020202020207374796C652E6D617267696E203D202231307078223B0D0A2020202020202020202020207374796C652E646973706C6179203D2022696E6C696E65223B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1148) := '20202020207374796C652E7769647468203D202237656D223B0D0A0D0A202020202020202020202020666F726D2E617070656E644368696C64286F6B427574746F6E293B0D0A202020202020202020202020666F726D2E617070656E644368696C642863';
wwv_flow_api.g_varchar2_table(1149) := '616E63656C427574746F6E293B0D0A0D0A2020202020202020202020207574696C2E6164644576656E7428646F632E626F64792C20226B65797570222C20636865636B457363617065293B0D0A2020202020202020202020206469616C6F672E7374796C';
wwv_flow_api.g_varchar2_table(1150) := '652E746F70203D2022353025223B0D0A2020202020202020202020206469616C6F672E7374796C652E6C656674203D2022353025223B0D0A2020202020202020202020206469616C6F672E7374796C652E646973706C6179203D2022626C6F636B223B0D';
wwv_flow_api.g_varchar2_table(1151) := '0A202020202020202020202020696620287561536E69666665642E697349455F356F723629207B0D0A202020202020202020202020202020206469616C6F672E7374796C652E706F736974696F6E203D20226162736F6C757465223B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1152) := '202020202020202020206469616C6F672E7374796C652E746F70203D20646F632E646F63756D656E74456C656D656E742E7363726F6C6C546F70202B20323030202B20227078223B0D0A202020202020202020202020202020206469616C6F672E737479';
wwv_flow_api.g_varchar2_table(1153) := '6C652E6C656674203D2022353025223B0D0A2020202020202020202020207D0D0A202020202020202020202020646F632E626F64792E617070656E644368696C64286469616C6F67293B0D0A0D0A2020202020202020202020202F2F2054686973206861';
wwv_flow_api.g_varchar2_table(1154) := '7320746F20626520646F6E6520414654455220616464696E6720746865206469616C6F6720746F2074686520666F726D20696620796F750D0A2020202020202020202020202F2F2077616E7420697420746F2062652063656E74657265642E0D0A202020';
wwv_flow_api.g_varchar2_table(1155) := '2020202020202020206469616C6F672E7374796C652E6D617267696E546F70203D202D28706F736974696F6E2E676574486569676874286469616C6F6729202F203229202B20227078223B0D0A2020202020202020202020206469616C6F672E7374796C';
wwv_flow_api.g_varchar2_table(1156) := '652E6D617267696E4C656674203D202D28706F736974696F6E2E6765745769647468286469616C6F6729202F203229202B20227078223B0D0A0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F20576879206973207468697320696E2061';
wwv_flow_api.g_varchar2_table(1157) := '207A65726F2D6C656E6774682074696D656F75743F0D0A20202020202020202F2F20497320697420776F726B696E672061726F756E6420612062726F77736572206275673F0D0A202020202020202073657454696D656F75742866756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(1158) := '29207B0D0A0D0A2020202020202020202020206372656174654469616C6F6728293B0D0A0D0A20202020202020202020202076617220646566546578744C656E203D2064656661756C74496E707574546578742E6C656E6774683B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1159) := '202020202069662028696E7075742E73656C656374696F6E537461727420213D3D20756E646566696E656429207B0D0A20202020202020202020202020202020696E7075742E73656C656374696F6E5374617274203D20303B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1160) := '20202020202020696E7075742E73656C656374696F6E456E64203D20646566546578744C656E3B0D0A2020202020202020202020207D0D0A202020202020202020202020656C73652069662028696E7075742E6372656174655465787452616E67652920';
wwv_flow_api.g_varchar2_table(1161) := '7B0D0A202020202020202020202020202020207661722072616E6765203D20696E7075742E6372656174655465787452616E676528293B0D0A2020202020202020202020202020202072616E67652E636F6C6C617073652866616C7365293B0D0A202020';
wwv_flow_api.g_varchar2_table(1162) := '2020202020202020202020202072616E67652E6D6F766553746172742822636861726163746572222C202D646566546578744C656E293B0D0A2020202020202020202020202020202072616E67652E6D6F7665456E642822636861726163746572222C20';
wwv_flow_api.g_varchar2_table(1163) := '646566546578744C656E293B0D0A2020202020202020202020202020202072616E67652E73656C65637428293B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020696E7075742E666F63757328293B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1164) := '7D2C2030293B0D0A202020207D3B0D0A0D0A2020202066756E6374696F6E2055494D616E6167657228706F73746669782C2070616E656C732C20756E646F4D616E616765722C20707265766965774D616E616765722C20636F6D6D616E644D616E616765';
wwv_flow_api.g_varchar2_table(1165) := '722C2068656C704F7074696F6E732C20676574537472696E6729207B0D0A0D0A202020202020202076617220696E707574426F78203D2070616E656C732E696E7075742C0D0A202020202020202020202020627574746F6E73203D207B7D3B202F2F2062';
wwv_flow_api.g_varchar2_table(1166) := '7574746F6E732E756E646F2C20627574746F6E732E6C696E6B2C206574632E205468652061637475616C20444F4D20656C656D656E74732E0D0A0D0A20202020202020206D616B6553707269746564427574746F6E526F7728293B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(1167) := '202020766172206B65794576656E74203D20226B6579646F776E223B0D0A2020202020202020696620287561536E69666665642E69734F7065726129207B0D0A2020202020202020202020206B65794576656E74203D20226B65797072657373223B0D0A';
wwv_flow_api.g_varchar2_table(1168) := '20202020202020207D0D0A0D0A20202020202020207574696C2E6164644576656E7428696E707574426F782C206B65794576656E742C2066756E6374696F6E20286B657929207B0D0A0D0A2020202020202020202020202F2F20436865636B20746F2073';
wwv_flow_api.g_varchar2_table(1169) := '65652069662077652068617665206120627574746F6E206B657920616E642C20696620736F2065786563757465207468652063616C6C6261636B2E0D0A20202020202020202020202069662028286B65792E6374726C4B6579207C7C206B65792E6D6574';
wwv_flow_api.g_varchar2_table(1170) := '614B65792920262620216B65792E616C744B657920262620216B65792E73686966744B657929207B0D0A0D0A20202020202020202020202020202020766172206B6579436F6465203D206B65792E63686172436F6465207C7C206B65792E6B6579436F64';
wwv_flow_api.g_varchar2_table(1171) := '653B0D0A20202020202020202020202020202020766172206B6579436F6465537472203D20537472696E672E66726F6D43686172436F6465286B6579436F6465292E746F4C6F7765724361736528293B0D0A0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1172) := '73776974636820286B6579436F646553747229207B0D0A202020202020202020202020202020202020202063617365202262223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E626F6C64293B';
wwv_flow_api.g_varchar2_table(1173) := '0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A202020202020202020202020202020202020202063617365202269223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574';
wwv_flow_api.g_varchar2_table(1174) := '746F6E732E6974616C6963293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A20202020202020202020202020202020202020206361736520226C223A0D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1175) := '2020646F436C69636B28627574746F6E732E6C696E6B293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A202020202020202020202020202020202020202063617365202271223A0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1176) := '20202020202020202020202020646F436C69636B28627574746F6E732E71756F7465293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A20202020202020202020202020202020202020206361736520226B223A0D';
wwv_flow_api.g_varchar2_table(1177) := '0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E636F6465293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1178) := '2063617365202267223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E696D616765293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1179) := '202020202020202020202020206361736520226F223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E6F6C697374293B0D0A202020202020202020202020202020202020202020202020627265';
wwv_flow_api.g_varchar2_table(1180) := '616B3B0D0A202020202020202020202020202020202020202063617365202275223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E756C697374293B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1181) := '202020202020202020627265616B3B0D0A202020202020202020202020202020202020202063617365202268223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E68656164696E67293B0D0A20';
wwv_flow_api.g_varchar2_table(1182) := '2020202020202020202020202020202020202020202020627265616B3B0D0A202020202020202020202020202020202020202063617365202272223A0D0A202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E';
wwv_flow_api.g_varchar2_table(1183) := '732E6872293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A202020202020202020202020202020202020202063617365202279223A0D0A202020202020202020202020202020202020202020202020646F436C69';
wwv_flow_api.g_varchar2_table(1184) := '636B28627574746F6E732E7265646F293B0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A20202020202020202020202020202020202020206361736520227A223A0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1185) := '202020202020696620286B65792E73686966744B657929207B0D0A20202020202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E7265646F293B0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1186) := '2020207D0D0A202020202020202020202020202020202020202020202020656C7365207B0D0A20202020202020202020202020202020202020202020202020202020646F436C69636B28627574746F6E732E756E646F293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1187) := '20202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020627265616B3B0D0A202020202020202020202020202020202020202064656661756C743A0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1188) := '20202072657475726E3B0D0A202020202020202020202020202020207D0D0A0D0A0D0A20202020202020202020202020202020696620286B65792E70726576656E7444656661756C7429207B0D0A20202020202020202020202020202020202020206B65';
wwv_flow_api.g_varchar2_table(1189) := '792E70726576656E7444656661756C7428293B0D0A202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020206966202877696E646F772E6576656E7429207B0D0A202020202020202020202020202020202020202077';
wwv_flow_api.g_varchar2_table(1190) := '696E646F772E6576656E742E72657475726E56616C7565203D2066616C73653B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020207D293B0D0A0D0A20202020202020202F2F204175746F2D69';
wwv_flow_api.g_varchar2_table(1191) := '6E64656E74206F6E2073686966742D656E7465720D0A20202020202020207574696C2E6164644576656E7428696E707574426F782C20226B65797570222C2066756E6374696F6E20286B657929207B0D0A202020202020202020202020696620286B6579';
wwv_flow_api.g_varchar2_table(1192) := '2E73686966744B657920262620216B65792E6374726C4B657920262620216B65792E6D6574614B657929207B0D0A20202020202020202020202020202020766172206B6579436F6465203D206B65792E63686172436F6465207C7C206B65792E6B657943';
wwv_flow_api.g_varchar2_table(1193) := '6F64653B0D0A202020202020202020202020202020202F2F2043686172616374657220313320697320456E7465720D0A20202020202020202020202020202020696620286B6579436F6465203D3D3D20313329207B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1194) := '202020202020207661722066616B65427574746F6E203D207B7D3B0D0A202020202020202020202020202020202020202066616B65427574746F6E2E746578744F70203D2062696E64436F6D6D616E642822646F4175746F696E64656E7422293B0D0A20';
wwv_flow_api.g_varchar2_table(1195) := '20202020202020202020202020202020202020646F436C69636B2866616B65427574746F6E293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020207D293B0D0A0D0A20202020202020202F2F';
wwv_flow_api.g_varchar2_table(1196) := '207370656369616C2068616E646C6572206265636175736520494520636C656172732074686520636F6E74657874206F66207468652074657874626F78206F6E204553430D0A2020202020202020696620287561536E69666665642E6973494529207B0D';
wwv_flow_api.g_varchar2_table(1197) := '0A2020202020202020202020207574696C2E6164644576656E7428696E707574426F782C20226B6579646F776E222C2066756E6374696F6E20286B657929207B0D0A2020202020202020202020202020202076617220636F6465203D206B65792E6B6579';
wwv_flow_api.g_varchar2_table(1198) := '436F64653B0D0A2020202020202020202020202020202069662028636F6465203D3D3D20323729207B0D0A202020202020202020202020202020202020202072657475726E2066616C73653B0D0A202020202020202020202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(1199) := '2020202020202020207D293B0D0A20202020202020207D0D0A0D0A0D0A20202020202020202F2F20506572666F726D2074686520627574746F6E277320616374696F6E2E0D0A202020202020202066756E6374696F6E20646F436C69636B28627574746F';
wwv_flow_api.g_varchar2_table(1200) := '6E29207B0D0A0D0A202020202020202020202020696E707574426F782E666F63757328293B0D0A0D0A20202020202020202020202069662028627574746F6E2E746578744F7029207B0D0A0D0A2020202020202020202020202020202069662028756E64';
wwv_flow_api.g_varchar2_table(1201) := '6F4D616E6167657229207B0D0A2020202020202020202020202020202020202020756E646F4D616E616765722E736574436F6D6D616E644D6F646528293B0D0A202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1202) := '20766172207374617465203D206E657720546578746172656153746174652870616E656C73293B0D0A0D0A202020202020202020202020202020206966202821737461746529207B0D0A202020202020202020202020202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(1203) := '3B0D0A202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020766172206368756E6B73203D2073746174652E6765744368756E6B7328293B0D0A0D0A202020202020202020202020202020202F2F20536F6D652063';
wwv_flow_api.g_varchar2_table(1204) := '6F6D6D616E6473206C61756E6368206120226D6F64616C222070726F6D7074206469616C6F672E20204A6176617363726970740D0A202020202020202020202020202020202F2F2063616E2774207265616C6C79206D616B652061206D6F64616C206469';
wwv_flow_api.g_varchar2_table(1205) := '616C6F6720626F7820616E642074686520574D4420636F64650D0A202020202020202020202020202020202F2F2077696C6C20636F6E74696E756520746F2065786563757465207768696C6520746865206469616C6F6720697320646973706C61796564';
wwv_flow_api.g_varchar2_table(1206) := '2E0D0A202020202020202020202020202020202F2F20546869732070726576656E747320746865206469616C6F67207061747465726E2049276D207573656420746F20616E64206D65616E730D0A202020202020202020202020202020202F2F20492063';
wwv_flow_api.g_varchar2_table(1207) := '616E277420646F20736F6D657468696E67206C696B6520746869733A0D0A202020202020202020202020202020202F2F0D0A202020202020202020202020202020202F2F20766172206C696E6B203D204372656174654C696E6B4469616C6F6728293B0D';
wwv_flow_api.g_varchar2_table(1208) := '0A202020202020202020202020202020202F2F206D616B654D61726B646F776E4C696E6B286C696E6B293B0D0A202020202020202020202020202020202F2F0D0A202020202020202020202020202020202F2F20496E7374656164206F66207468697320';
wwv_flow_api.g_varchar2_table(1209) := '7374726169676874666F7277617264206D6574686F64206F662068616E646C696E6720610D0A202020202020202020202020202020202F2F206469616C6F672049206861766520746F207061737320616E7920636F646520776869636820776F756C6420';
wwv_flow_api.g_varchar2_table(1210) := '657865637574650D0A202020202020202020202020202020202F2F20616674657220746865206469616C6F67206973206469736D69737365642028652E672E206C696E6B206372656174696F6E290D0A202020202020202020202020202020202F2F2069';
wwv_flow_api.g_varchar2_table(1211) := '6E20612066756E6374696F6E20706172616D657465722E0D0A202020202020202020202020202020202F2F0D0A202020202020202020202020202020202F2F2059657320746869732069732061776B7761726420616E642049207468696E6B2069742073';
wwv_flow_api.g_varchar2_table(1212) := '75636B732C2062757420746865726527730D0A202020202020202020202020202020202F2F206E6F207265616C20776F726B61726F756E642E20204F6E6C792074686520696D61676520616E64206C696E6B20636F64650D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1213) := '20202020202F2F20637265617465206469616C6F677320616E642072657175697265207468652066756E6374696F6E20706F696E746572732E0D0A20202020202020202020202020202020766172206669787570496E70757441726561203D2066756E63';
wwv_flow_api.g_varchar2_table(1214) := '74696F6E202829207B0D0A0D0A2020202020202020202020202020202020202020696E707574426F782E666F63757328293B0D0A0D0A2020202020202020202020202020202020202020696620286368756E6B7329207B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1215) := '2020202020202020202020202073746174652E7365744368756E6B73286368756E6B73293B0D0A20202020202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020202020202073746174652E726573746F726528293B';
wwv_flow_api.g_varchar2_table(1216) := '0D0A2020202020202020202020202020202020202020707265766965774D616E616765722E7265667265736828293B0D0A202020202020202020202020202020207D3B0D0A0D0A20202020202020202020202020202020766172206E6F436C65616E7570';
wwv_flow_api.g_varchar2_table(1217) := '203D20627574746F6E2E746578744F70286368756E6B732C206669787570496E70757441726561293B0D0A0D0A2020202020202020202020202020202069662028216E6F436C65616E757029207B0D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1218) := '6669787570496E7075744172656128293B0D0A202020202020202020202020202020207D0D0A0D0A2020202020202020202020207D0D0A0D0A20202020202020202020202069662028627574746F6E2E6578656375746529207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1219) := '2020202020202020627574746F6E2E6578656375746528756E646F4D616E61676572293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A202020202020202066756E6374696F6E207365747570427574746F6E2862757474';
wwv_flow_api.g_varchar2_table(1220) := '6F6E2C206973456E61626C656429207B0D0A0D0A202020202020202020202020766172206E6F726D616C595368696674203D2022307078223B0D0A2020202020202020202020207661722064697361626C6564595368696674203D20222D32307078223B';
wwv_flow_api.g_varchar2_table(1221) := '0D0A20202020202020202020202076617220686967686C69676874595368696674203D20222D34307078223B0D0A20202020202020202020202076617220696D616765203D20627574746F6E2E676574456C656D656E747342795461674E616D65282273';
wwv_flow_api.g_varchar2_table(1222) := '70616E22295B305D3B0D0A202020202020202020202020696620286973456E61626C656429207B0D0A20202020202020202020202020202020696D6167652E7374796C652E6261636B67726F756E64506F736974696F6E203D20627574746F6E2E585368';
wwv_flow_api.g_varchar2_table(1223) := '696674202B20222022202B206E6F726D616C5953686966743B0D0A20202020202020202020202020202020627574746F6E2E6F6E6D6F7573656F766572203D2066756E6374696F6E202829207B0D0A202020202020202020202020202020202020202069';
wwv_flow_api.g_varchar2_table(1224) := '6D6167652E7374796C652E6261636B67726F756E64506F736974696F6E203D20746869732E585368696674202B20222022202B20686967686C696768745953686966743B0D0A202020202020202020202020202020207D3B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1225) := '2020202020202020627574746F6E2E6F6E6D6F7573656F7574203D2066756E6374696F6E202829207B0D0A2020202020202020202020202020202020202020696D6167652E7374796C652E6261636B67726F756E64506F736974696F6E203D2074686973';
wwv_flow_api.g_varchar2_table(1226) := '2E585368696674202B20222022202B206E6F726D616C5953686966743B0D0A202020202020202020202020202020207D3B0D0A0D0A202020202020202020202020202020202F2F20494520747269657320746F2073656C65637420746865206261636B67';
wwv_flow_api.g_varchar2_table(1227) := '726F756E6420696D6167652022627574746F6E2220746578742028697427730D0A202020202020202020202020202020202F2F20696D706C656D656E74656420696E2061206C697374206974656D2920736F207765206861766520746F20636163686520';
wwv_flow_api.g_varchar2_table(1228) := '7468652073656C656374696F6E0D0A202020202020202020202020202020202F2F206F6E206D6F757365646F776E2E0D0A20202020202020202020202020202020696620287561536E69666665642E6973494529207B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1229) := '2020202020202020627574746F6E2E6F6E6D6F757365646F776E203D2066756E6374696F6E202829207B0D0A20202020202020202020202020202020202020202020202069662028646F632E616374697665456C656D656E7420262620646F632E616374';
wwv_flow_api.g_varchar2_table(1230) := '697665456C656D656E7420213D3D2070616E656C732E696E70757429207B202F2F207765277265206E6F74206576656E20696E2074686520696E70757420626F782C20736F2074686572652773206E6F2073656C656374696F6E0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1231) := '202020202020202020202020202020202020202072657475726E3B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202070616E656C732E696543616368656452616E6765';
wwv_flow_api.g_varchar2_table(1232) := '203D20646F63756D656E742E73656C656374696F6E2E63726561746552616E676528293B0D0A20202020202020202020202020202020202020202020202070616E656C732E69654361636865645363726F6C6C546F70203D2070616E656C732E696E7075';
wwv_flow_api.g_varchar2_table(1233) := '742E7363726F6C6C546F703B0D0A20202020202020202020202020202020202020207D3B0D0A202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020206966202821627574746F6E2E697348656C7029207B0D0A2020';
wwv_flow_api.g_varchar2_table(1234) := '202020202020202020202020202020202020627574746F6E2E6F6E636C69636B203D2066756E6374696F6E202829207B0D0A20202020202020202020202020202020202020202020202069662028746869732E6F6E6D6F7573656F757429207B0D0A2020';
wwv_flow_api.g_varchar2_table(1235) := '2020202020202020202020202020202020202020202020202020746869732E6F6E6D6F7573656F757428293B0D0A2020202020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020646F43';
wwv_flow_api.g_varchar2_table(1236) := '6C69636B2874686973293B0D0A20202020202020202020202020202020202020202020202072657475726E2066616C73653B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A202020202020';
wwv_flow_api.g_varchar2_table(1237) := '2020202020207D0D0A202020202020202020202020656C7365207B0D0A20202020202020202020202020202020696D6167652E7374796C652E6261636B67726F756E64506F736974696F6E203D20627574746F6E2E585368696674202B20222022202B20';
wwv_flow_api.g_varchar2_table(1238) := '64697361626C65645953686966743B0D0A20202020202020202020202020202020627574746F6E2E6F6E6D6F7573656F766572203D20627574746F6E2E6F6E6D6F7573656F7574203D20627574746F6E2E6F6E636C69636B203D2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(1239) := '2829207B207D3B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E2062696E64436F6D6D616E64286D6574686F6429207B0D0A20202020202020202020202069662028747970656F6620';
wwv_flow_api.g_varchar2_table(1240) := '6D6574686F64203D3D3D2022737472696E6722290D0A202020202020202020202020202020206D6574686F64203D20636F6D6D616E644D616E616765725B6D6574686F645D3B0D0A20202020202020202020202072657475726E2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(1241) := '2829207B206D6574686F642E6170706C7928636F6D6D616E644D616E616765722C20617267756D656E7473293B207D0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E206D616B6553707269746564427574746F6E526F7728';
wwv_flow_api.g_varchar2_table(1242) := '29207B0D0A0D0A20202020202020202020202076617220627574746F6E426172203D2070616E656C732E627574746F6E4261723B0D0A0D0A202020202020202020202020766172206E6F726D616C595368696674203D2022307078223B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1243) := '202020202020207661722064697361626C6564595368696674203D20222D32307078223B0D0A20202020202020202020202076617220686967686C69676874595368696674203D20222D34307078223B0D0A0D0A20202020202020202020202076617220';
wwv_flow_api.g_varchar2_table(1244) := '627574746F6E526F77203D20646F63756D656E742E637265617465456C656D656E742822756C22293B0D0A202020202020202020202020627574746F6E526F772E6964203D2022776D642D627574746F6E2D726F7722202B20706F73746669783B0D0A20';
wwv_flow_api.g_varchar2_table(1245) := '2020202020202020202020627574746F6E526F772E636C6173734E616D65203D2027776D642D627574746F6E2D726F77273B0D0A202020202020202020202020627574746F6E526F77203D20627574746F6E4261722E617070656E644368696C64286275';
wwv_flow_api.g_varchar2_table(1246) := '74746F6E526F77293B0D0A2020202020202020202020207661722078506F736974696F6E203D20303B0D0A202020202020202020202020766172206D616B65427574746F6E203D2066756E6374696F6E202869642C207469746C652C205853686966742C';
wwv_flow_api.g_varchar2_table(1247) := '20746578744F7029207B0D0A2020202020202020202020202020202076617220627574746F6E203D20646F63756D656E742E637265617465456C656D656E7428226C6922293B0D0A20202020202020202020202020202020627574746F6E2E636C617373';
wwv_flow_api.g_varchar2_table(1248) := '4E616D65203D2022776D642D627574746F6E223B0D0A20202020202020202020202020202020627574746F6E2E7374796C652E6C656674203D2078506F736974696F6E202B20227078223B0D0A2020202020202020202020202020202078506F73697469';
wwv_flow_api.g_varchar2_table(1249) := '6F6E202B3D2032353B0D0A2020202020202020202020202020202076617220627574746F6E496D616765203D20646F63756D656E742E637265617465456C656D656E7428227370616E22293B0D0A20202020202020202020202020202020627574746F6E';
wwv_flow_api.g_varchar2_table(1250) := '2E6964203D206964202B20706F73746669783B0D0A20202020202020202020202020202020627574746F6E2E617070656E644368696C6428627574746F6E496D616765293B0D0A20202020202020202020202020202020627574746F6E2E7469746C6520';
wwv_flow_api.g_varchar2_table(1251) := '3D207469746C653B0D0A20202020202020202020202020202020627574746F6E2E585368696674203D205853686966743B0D0A2020202020202020202020202020202069662028746578744F70290D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1252) := '627574746F6E2E746578744F70203D20746578744F703B0D0A202020202020202020202020202020207365747570427574746F6E28627574746F6E2C2074727565293B0D0A20202020202020202020202020202020627574746F6E526F772E617070656E';
wwv_flow_api.g_varchar2_table(1253) := '644368696C6428627574746F6E293B0D0A2020202020202020202020202020202072657475726E20627574746F6E3B0D0A2020202020202020202020207D3B0D0A202020202020202020202020766172206D616B65537061636572203D2066756E637469';
wwv_flow_api.g_varchar2_table(1254) := '6F6E20286E756D29207B0D0A2020202020202020202020202020202076617220737061636572203D20646F63756D656E742E637265617465456C656D656E7428226C6922293B0D0A202020202020202020202020202020207370616365722E636C617373';
wwv_flow_api.g_varchar2_table(1255) := '4E616D65203D2022776D642D73706163657220776D642D73706163657222202B206E756D3B0D0A202020202020202020202020202020207370616365722E6964203D2022776D642D73706163657222202B206E756D202B20706F73746669783B0D0A2020';
wwv_flow_api.g_varchar2_table(1256) := '2020202020202020202020202020627574746F6E526F772E617070656E644368696C6428737061636572293B0D0A2020202020202020202020202020202078506F736974696F6E202B3D2032353B0D0A2020202020202020202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1257) := '202020202020202020627574746F6E732E626F6C64203D206D616B65427574746F6E2822776D642D626F6C642D627574746F6E222C20676574537472696E672822626F6C6422292C2022307078222C2062696E64436F6D6D616E642822646F426F6C6422';
wwv_flow_api.g_varchar2_table(1258) := '29293B0D0A202020202020202020202020627574746F6E732E6974616C6963203D206D616B65427574746F6E2822776D642D6974616C69632D627574746F6E222C20676574537472696E6728226974616C696322292C20222D32307078222C2062696E64';
wwv_flow_api.g_varchar2_table(1259) := '436F6D6D616E642822646F4974616C69632229293B0D0A2020202020202020202020206D616B655370616365722831293B0D0A202020202020202020202020627574746F6E732E6C696E6B203D206D616B65427574746F6E2822776D642D6C696E6B2D62';
wwv_flow_api.g_varchar2_table(1260) := '7574746F6E222C20676574537472696E6728226C696E6B22292C20222D34307078222C2062696E64436F6D6D616E642866756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1261) := '72657475726E20746869732E646F4C696E6B4F72496D616765286368756E6B2C20706F737450726F63657373696E672C2066616C7365293B0D0A2020202020202020202020207D29293B0D0A202020202020202020202020627574746F6E732E71756F74';
wwv_flow_api.g_varchar2_table(1262) := '65203D206D616B65427574746F6E2822776D642D71756F74652D627574746F6E222C20676574537472696E67282271756F746522292C20222D36307078222C2062696E64436F6D6D616E642822646F426C6F636B71756F74652229293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1263) := '20202020202020627574746F6E732E636F6465203D206D616B65427574746F6E2822776D642D636F64652D627574746F6E222C20676574537472696E672822636F646522292C20222D38307078222C2062696E64436F6D6D616E642822646F436F646522';
wwv_flow_api.g_varchar2_table(1264) := '29293B0D0A202020202020202020202020627574746F6E732E696D616765203D206D616B65427574746F6E2822776D642D696D6167652D627574746F6E222C20676574537472696E672822696D61676522292C20222D3130307078222C2062696E64436F';
wwv_flow_api.g_varchar2_table(1265) := '6D6D616E642866756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A2020202020202020202020202020202072657475726E20746869732E646F4C696E6B4F72496D616765286368756E6B2C20706F737450726F6365';
wwv_flow_api.g_varchar2_table(1266) := '7373696E672C2074727565293B0D0A2020202020202020202020207D29293B0D0A2020202020202020202020206D616B655370616365722832293B0D0A202020202020202020202020627574746F6E732E6F6C697374203D206D616B65427574746F6E28';
wwv_flow_api.g_varchar2_table(1267) := '22776D642D6F6C6973742D627574746F6E222C20676574537472696E6728226F6C69737422292C20222D3132307078222C2062696E64436F6D6D616E642866756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A2020';
wwv_flow_api.g_varchar2_table(1268) := '2020202020202020202020202020746869732E646F4C697374286368756E6B2C20706F737450726F63657373696E672C2074727565293B0D0A2020202020202020202020207D29293B0D0A202020202020202020202020627574746F6E732E756C697374';
wwv_flow_api.g_varchar2_table(1269) := '203D206D616B65427574746F6E2822776D642D756C6973742D627574746F6E222C20676574537472696E672822756C69737422292C20222D3134307078222C2062696E64436F6D6D616E642866756E6374696F6E20286368756E6B2C20706F737450726F';
wwv_flow_api.g_varchar2_table(1270) := '63657373696E6729207B0D0A20202020202020202020202020202020746869732E646F4C697374286368756E6B2C20706F737450726F63657373696E672C2066616C7365293B0D0A2020202020202020202020207D29293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1271) := '2020627574746F6E732E68656164696E67203D206D616B65427574746F6E2822776D642D68656164696E672D627574746F6E222C20676574537472696E67282268656164696E6722292C20222D3136307078222C2062696E64436F6D6D616E642822646F';
wwv_flow_api.g_varchar2_table(1272) := '48656164696E672229293B0D0A202020202020202020202020627574746F6E732E6872203D206D616B65427574746F6E2822776D642D68722D627574746F6E222C20676574537472696E672822687222292C20222D3138307078222C2062696E64436F6D';
wwv_flow_api.g_varchar2_table(1273) := '6D616E642822646F486F72697A6F6E74616C52756C652229293B0D0A2020202020202020202020206D616B655370616365722833293B0D0A202020202020202020202020627574746F6E732E756E646F203D206D616B65427574746F6E2822776D642D75';
wwv_flow_api.g_varchar2_table(1274) := '6E646F2D627574746F6E222C20676574537472696E672822756E646F22292C20222D3230307078222C206E756C6C293B0D0A202020202020202020202020627574746F6E732E756E646F2E65786563757465203D2066756E6374696F6E20286D616E6167';
wwv_flow_api.g_varchar2_table(1275) := '657229207B20696620286D616E6167657229206D616E616765722E756E646F28293B207D3B0D0A0D0A202020202020202020202020766172207265646F5469746C65203D202F77696E2F2E74657374286E61762E706C6174666F726D2E746F4C6F776572';
wwv_flow_api.g_varchar2_table(1276) := '43617365282929203F0D0A20202020202020202020202020202020676574537472696E6728227265646F2229203A0D0A20202020202020202020202020202020676574537472696E6728227265646F6D616322293B202F2F206D616320616E64206F7468';
wwv_flow_api.g_varchar2_table(1277) := '6572206E6F6E2D57696E646F777320706C6174666F726D730D0A0D0A202020202020202020202020627574746F6E732E7265646F203D206D616B65427574746F6E2822776D642D7265646F2D627574746F6E222C207265646F5469746C652C20222D3232';
wwv_flow_api.g_varchar2_table(1278) := '307078222C206E756C6C293B0D0A202020202020202020202020627574746F6E732E7265646F2E65786563757465203D2066756E6374696F6E20286D616E6167657229207B20696620286D616E6167657229206D616E616765722E7265646F28293B207D';
wwv_flow_api.g_varchar2_table(1279) := '3B0D0A0D0A2020202020202020202020206966202868656C704F7074696F6E7329207B0D0A202020202020202020202020202020207661722068656C70427574746F6E203D20646F63756D656E742E637265617465456C656D656E7428226C6922293B0D';
wwv_flow_api.g_varchar2_table(1280) := '0A202020202020202020202020202020207661722068656C70427574746F6E496D616765203D20646F63756D656E742E637265617465456C656D656E7428227370616E22293B0D0A2020202020202020202020202020202068656C70427574746F6E2E61';
wwv_flow_api.g_varchar2_table(1281) := '7070656E644368696C642868656C70427574746F6E496D616765293B0D0A2020202020202020202020202020202068656C70427574746F6E2E636C6173734E616D65203D2022776D642D627574746F6E20776D642D68656C702D627574746F6E223B0D0A';
wwv_flow_api.g_varchar2_table(1282) := '2020202020202020202020202020202068656C70427574746F6E2E6964203D2022776D642D68656C702D627574746F6E22202B20706F73746669783B0D0A2020202020202020202020202020202068656C70427574746F6E2E585368696674203D20222D';
wwv_flow_api.g_varchar2_table(1283) := '3234307078223B0D0A2020202020202020202020202020202068656C70427574746F6E2E697348656C70203D20747275653B0D0A2020202020202020202020202020202068656C70427574746F6E2E7374796C652E7269676874203D2022307078223B0D';
wwv_flow_api.g_varchar2_table(1284) := '0A2020202020202020202020202020202068656C70427574746F6E2E7469746C65203D20676574537472696E67282268656C7022293B0D0A2020202020202020202020202020202068656C70427574746F6E2E6F6E636C69636B203D2068656C704F7074';
wwv_flow_api.g_varchar2_table(1285) := '696F6E732E68616E646C65723B0D0A0D0A202020202020202020202020202020207365747570427574746F6E2868656C70427574746F6E2C2074727565293B0D0A20202020202020202020202020202020627574746F6E526F772E617070656E64436869';
wwv_flow_api.g_varchar2_table(1286) := '6C642868656C70427574746F6E293B0D0A20202020202020202020202020202020627574746F6E732E68656C70203D2068656C70427574746F6E3B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020736574556E646F526564';
wwv_flow_api.g_varchar2_table(1287) := '6F427574746F6E53746174657328293B0D0A20202020202020207D0D0A0D0A202020202020202066756E6374696F6E20736574556E646F5265646F427574746F6E5374617465732829207B0D0A20202020202020202020202069662028756E646F4D616E';
wwv_flow_api.g_varchar2_table(1288) := '6167657229207B0D0A202020202020202020202020202020207365747570427574746F6E28627574746F6E732E756E646F2C20756E646F4D616E616765722E63616E556E646F2829293B0D0A202020202020202020202020202020207365747570427574';
wwv_flow_api.g_varchar2_table(1289) := '746F6E28627574746F6E732E7265646F2C20756E646F4D616E616765722E63616E5265646F2829293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A2020202020202020746869732E736574556E646F5265646F42757474';
wwv_flow_api.g_varchar2_table(1290) := '6F6E537461746573203D20736574556E646F5265646F427574746F6E5374617465733B0D0A0D0A202020207D0D0A0D0A2020202066756E6374696F6E20436F6D6D616E644D616E6167657228706C7567696E486F6F6B732C20676574537472696E672C20';
wwv_flow_api.g_varchar2_table(1291) := '636F6E76657274657229207B0D0A2020202020202020746869732E686F6F6B73203D20706C7567696E486F6F6B733B0D0A2020202020202020746869732E676574537472696E67203D20676574537472696E673B0D0A2020202020202020746869732E63';
wwv_flow_api.g_varchar2_table(1292) := '6F6E766572746572203D20636F6E7665727465723B0D0A202020207D0D0A0D0A2020202076617220636F6D6D616E6450726F746F203D20436F6D6D616E644D616E616765722E70726F746F747970653B0D0A0D0A202020202F2F20546865206D61726B64';
wwv_flow_api.g_varchar2_table(1293) := '6F776E2073796D626F6C73202D203420737061636573203D20636F64652C203E203D20626C6F636B71756F74652C206574632E0D0A20202020636F6D6D616E6450726F746F2E7072656669786573203D2022283F3A5C5C737B342C7D7C5C5C732A3E7C5C';
wwv_flow_api.g_varchar2_table(1294) := '5C732A2D5C5C732B7C5C5C732A5C5C642B5C5C2E7C3D7C5C5C2B7C2D7C5F7C5C5C2A7C237C5C5C732A5C5C5B5B5E5C6E5D5D2B5C5C5D3A29223B0D0A0D0A202020202F2F2052656D6F7665206D61726B646F776E2073796D626F6C732066726F6D207468';
wwv_flow_api.g_varchar2_table(1295) := '65206368756E6B2073656C656374696F6E2E0D0A20202020636F6D6D616E6450726F746F2E756E77726170203D2066756E6374696F6E20286368756E6B29207B0D0A202020202020202076617220747874203D206E65772072652822285B5E5C5C6E5D29';
wwv_flow_api.g_varchar2_table(1296) := '5C5C6E283F21285C5C6E7C22202B20746869732E7072656669786573202B20222929222C20226722293B0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365287478742C2022';
wwv_flow_api.g_varchar2_table(1297) := '243120243222293B0D0A202020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E77726170203D2066756E6374696F6E20286368756E6B2C206C656E29207B0D0A2020202020202020746869732E756E77726170286368756E6B293B0D0A2020';
wwv_flow_api.g_varchar2_table(1298) := '202020202020766172207265676578203D206E65772072652822282E7B312C22202B206C656E202B20227D2928202B7C245C5C6E3F29222C2022676D22292C0D0A20202020202020202020202074686174203D20746869733B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1299) := '206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C6163652872656765782C2066756E6374696F6E20286C696E652C206D61726B656429207B0D0A202020202020202020202020696620286E657720726528';
wwv_flow_api.g_varchar2_table(1300) := '225E22202B20746861742E70726566697865732C202222292E74657374286C696E652929207B0D0A2020202020202020202020202020202072657475726E206C696E653B0D0A2020202020202020202020207D0D0A202020202020202020202020726574';
wwv_flow_api.g_varchar2_table(1301) := '75726E206D61726B6564202B20225C6E223B0D0A20202020202020207D293B0D0A0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5C732B242F2C202222293B0D0A20';
wwv_flow_api.g_varchar2_table(1302) := '2020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E646F426F6C64203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A202020202020202072657475726E20746869732E646F426F7249286368';
wwv_flow_api.g_varchar2_table(1303) := '756E6B2C20706F737450726F63657373696E672C20322C20746869732E676574537472696E672822626F6C646578616D706C652229293B0D0A202020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E646F4974616C6963203D2066756E6374';
wwv_flow_api.g_varchar2_table(1304) := '696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A202020202020202072657475726E20746869732E646F426F7249286368756E6B2C20706F737450726F63657373696E672C20312C20746869732E676574537472696E672822';
wwv_flow_api.g_varchar2_table(1305) := '6974616C69636578616D706C652229293B0D0A202020207D3B0D0A0D0A202020202F2F206368756E6B3A205468652073656C656374656420726567696F6E20746861742077696C6C20626520656E636C6F7365642077697468202A2F2A2A0D0A20202020';
wwv_flow_api.g_varchar2_table(1306) := '2F2F206E53746172733A203120666F72206974616C6963732C203220666F7220626F6C640D0A202020202F2F20696E73657274546578743A20496620796F75206A75737420636C69636B2074686520627574746F6E20776974686F757420686967686C69';
wwv_flow_api.g_varchar2_table(1307) := '676874696E6720746578742C2074686973206765747320696E7365727465640D0A20202020636F6D6D616E6450726F746F2E646F426F7249203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E672C206E53746172732C20';
wwv_flow_api.g_varchar2_table(1308) := '696E736572745465787429207B0D0A0D0A20202020202020202F2F2047657420726964206F66207768697465737061636520616E64206669787570206E65776C696E65732E0D0A20202020202020206368756E6B2E7472696D5768697465737061636528';
wwv_flow_api.g_varchar2_table(1309) := '293B0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5C6E7B322C7D2F672C20225C6E22293B0D0A0D0A20202020202020202F2F204C6F6F6B20666F72207374617273';
wwv_flow_api.g_varchar2_table(1310) := '206265666F726520616E642061667465722E2020497320746865206368756E6B20616C7265616479206D61726B65642075703F0D0A20202020202020202F2F206E6F74652074686174207468657365207265676578206D6174636865732063616E6E6F74';
wwv_flow_api.g_varchar2_table(1311) := '206661696C0D0A20202020202020207661722073746172734265666F7265203D202F285C2A2A24292F2E65786563286368756E6B2E6265666F7265295B305D3B0D0A20202020202020207661722073746172734166746572203D202F285E5C2A2A292F2E';
wwv_flow_api.g_varchar2_table(1312) := '65786563286368756E6B2E6166746572295B305D3B0D0A0D0A202020202020202076617220707265765374617273203D204D6174682E6D696E2873746172734265666F72652E6C656E6774682C20737461727341667465722E6C656E677468293B0D0A0D';
wwv_flow_api.g_varchar2_table(1313) := '0A20202020202020202F2F2052656D6F7665207374617273206966207765206861766520746F2073696E63652074686520627574746F6E2061637473206173206120746F67676C652E0D0A20202020202020206966202828707265765374617273203E3D';
wwv_flow_api.g_varchar2_table(1314) := '206E537461727329202626202870726576537461727320213D2032207C7C206E537461727320213D20312929207B0D0A2020202020202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C6163652872652822';
wwv_flow_api.g_varchar2_table(1315) := '5B2A5D7B22202B206E5374617273202B20227D24222C202222292C202222293B0D0A2020202020202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C61636528726528225E5B2A5D7B22202B206E537461727320';
wwv_flow_api.g_varchar2_table(1316) := '2B20227D222C202222292C202222293B0D0A20202020202020207D0D0A2020202020202020656C73652069662028216368756E6B2E73656C656374696F6E202626207374617273416674657229207B0D0A2020202020202020202020202F2F2049742773';
wwv_flow_api.g_varchar2_table(1317) := '206E6F74207265616C6C7920636C65617220776879207468697320636F6465206973206E65636573736172792E20204974206A757374206D6F7665730D0A2020202020202020202020202F2F20736F6D6520617262697472617279207374756666206172';
wwv_flow_api.g_varchar2_table(1318) := '6F756E642E0D0A2020202020202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C616365282F5E285B2A5F5D2A292F2C202222293B0D0A2020202020202020202020206368756E6B2E6265666F7265203D206368';
wwv_flow_api.g_varchar2_table(1319) := '756E6B2E6265666F72652E7265706C616365282F285C733F29242F2C202222293B0D0A2020202020202020202020207661722077686974657370616365203D2072652E24313B0D0A2020202020202020202020206368756E6B2E6265666F7265203D2063';
wwv_flow_api.g_varchar2_table(1320) := '68756E6B2E6265666F7265202B2073746172734166746572202B20776869746573706163653B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A0D0A2020202020202020202020202F2F20496E206D6F73742063617365732C2069';
wwv_flow_api.g_varchar2_table(1321) := '6620796F7520646F6E2774206861766520616E792073656C6563746564207465787420616E6420636C69636B2074686520627574746F6E0D0A2020202020202020202020202F2F20796F75276C6C2067657420612073656C65637465642C206D61726B65';
wwv_flow_api.g_varchar2_table(1322) := '6420757020726567696F6E2077697468207468652064656661756C74207465787420696E7365727465642E0D0A20202020202020202020202069662028216368756E6B2E73656C656374696F6E20262620217374617273416674657229207B0D0A202020';
wwv_flow_api.g_varchar2_table(1323) := '202020202020202020202020206368756E6B2E73656C656374696F6E203D20696E73657274546578743B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020202F2F20416464207468652074727565206D61726B75702E0D0A2020';
wwv_flow_api.g_varchar2_table(1324) := '20202020202020202020766172206D61726B7570203D206E5374617273203C3D2031203F20222A22203A20222A2A223B202F2F2073686F756C646E2774207468652074657374206265203D203F0D0A2020202020202020202020206368756E6B2E626566';
wwv_flow_api.g_varchar2_table(1325) := '6F7265203D206368756E6B2E6265666F7265202B206D61726B75703B0D0A2020202020202020202020206368756E6B2E6166746572203D206D61726B7570202B206368756E6B2E61667465723B0D0A20202020202020207D0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1326) := '72657475726E3B0D0A202020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E73747269704C696E6B44656673203D2066756E6374696F6E2028746578742C2064656673546F41646429207B0D0A0D0A202020202020202074657874203D2074';
wwv_flow_api.g_varchar2_table(1327) := '6578742E7265706C616365282F5E5B205D7B302C337D5C5B285C642B295C5D3A5B205C745D2A5C6E3F5B205C745D2A3C3F285C532B3F293E3F5B205C745D2A5C6E3F5B205C745D2A283F3A285C6E2A295B22285D282E2B3F295B22295D5B205C745D2A29';
wwv_flow_api.g_varchar2_table(1328) := '3F283F3A5C6E2B7C24292F676D2C0D0A20202020202020202020202066756E6374696F6E2028746F74616C4D617463682C2069642C206C696E6B2C206E65776C696E65732C207469746C6529207B0D0A2020202020202020202020202020202064656673';
wwv_flow_api.g_varchar2_table(1329) := '546F4164645B69645D203D20746F74616C4D617463682E7265706C616365282F5C732A242F2C202222293B0D0A20202020202020202020202020202020696620286E65776C696E657329207B0D0A20202020202020202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(1330) := '20537472697020746865207469746C6520616E642072657475726E20746861742073657061726174656C792E0D0A202020202020202020202020202020202020202064656673546F4164645B69645D203D20746F74616C4D617463682E7265706C616365';
wwv_flow_api.g_varchar2_table(1331) := '282F5B22285D282E2B3F295B22295D242F2C202222293B0D0A202020202020202020202020202020202020202072657475726E206E65776C696E6573202B207469746C653B0D0A202020202020202020202020202020207D0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1332) := '20202020202072657475726E2022223B0D0A2020202020202020202020207D293B0D0A0D0A202020202020202072657475726E20746578743B0D0A202020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E6164644C696E6B446566203D2066';
wwv_flow_api.g_varchar2_table(1333) := '756E6374696F6E20286368756E6B2C206C696E6B44656629207B0D0A0D0A2020202020202020766172207265664E756D626572203D20303B202F2F205468652063757272656E74207265666572656E6365206E756D6265720D0A20202020202020207661';
wwv_flow_api.g_varchar2_table(1334) := '722064656673546F416464203D207B7D3B202F2F0D0A20202020202020202F2F2053746172742077697468206120636C65616E20736C6174652062792072656D6F76696E6720616C6C2070726576696F7573206C696E6B20646566696E6974696F6E732E';
wwv_flow_api.g_varchar2_table(1335) := '0D0A20202020202020206368756E6B2E6265666F7265203D20746869732E73747269704C696E6B44656673286368756E6B2E6265666F72652C2064656673546F416464293B0D0A20202020202020206368756E6B2E73656C656374696F6E203D20746869';
wwv_flow_api.g_varchar2_table(1336) := '732E73747269704C696E6B44656673286368756E6B2E73656C656374696F6E2C2064656673546F416464293B0D0A20202020202020206368756E6B2E6166746572203D20746869732E73747269704C696E6B44656673286368756E6B2E61667465722C20';
wwv_flow_api.g_varchar2_table(1337) := '64656673546F416464293B0D0A0D0A20202020202020207661722064656673203D2022223B0D0A2020202020202020766172207265676578203D202F285C5B2928283F3A5C5B5B5E5C5D5D2A5C5D7C5B5E5C5B5C5D5D292A29285C5D5B205D3F283F3A5C';
wwv_flow_api.g_varchar2_table(1338) := '6E5B205D2A293F5C5B29285C642B29285C5D292F673B0D0A0D0A20202020202020202F2F205468652061626F76652072656765782C207573656420746F20757064617465205B666F6F5D5B31335D207265666572656E6365732061667465722072656E75';
wwv_flow_api.g_varchar2_table(1339) := '6D626572696E672C0D0A20202020202020202F2F206973206D75636820746F6F206C69626572616C3B2069742063616E206361746368207468696E6773207468617420617265206E6F742061637475616C6C79207061727365640D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1340) := '2F2F206173207265666572656E63657320286E6F7461626C793A20636F6465292E204974277320696D706F737369626C6520746F206B6E6F77207768696368206D617463686573206172650D0A20202020202020202F2F207265616C207265666572656E';
wwv_flow_api.g_varchar2_table(1341) := '63657320776974686F757420706572666F726D696E672061206D61726B646F776E20636F6E76657273696F6E2C20736F2074686174277320776861740D0A20202020202020202F2F20776520646F2E20416C6C206D61746368657320617265207265706C';
wwv_flow_api.g_varchar2_table(1342) := '616365642077697468206120756E69717565207265666572656E6365206E756D6265722C2077686963682069730D0A20202020202020202F2F20676976656E206120756E69717565206C696E6B2E2054686520756E697175696669657220696E20626F74';
wwv_flow_api.g_varchar2_table(1343) := '682063617365732069732074686520636861726163746572206F66667365740D0A20202020202020202F2F206F6620746865206D6174636820696E736964652074686520736F7572636520737472696E672E20546865206D6F6469666965642076657273';
wwv_flow_api.g_varchar2_table(1344) := '696F6E206973207468656E2073656E740D0A20202020202020202F2F207468726F75676820746865204D61726B646F776E2072656E64657265722E2042656361757365206C696E6B207265666572656E6365206172652073747269707065642064757269';
wwv_flow_api.g_varchar2_table(1345) := '6E670D0A20202020202020202F2F2072656E646572696E672C2074686520756E69717565206C696E6B2069732070726573656E7420696E207468652072656E64657265642076657273696F6E20696620616E64206F6E6C790D0A20202020202020202F2F';
wwv_flow_api.g_varchar2_table(1346) := '20696620746865206D6174636820617420697473206F66667365742077617320696E20666163742072656E64657265642061732061206C696E6B206F7220696D6167652E0D0A202020202020202076617220636F6D706C657465203D206368756E6B2E62';
wwv_flow_api.g_varchar2_table(1347) := '65666F7265202B206368756E6B2E73656C656374696F6E202B206368756E6B2E61667465723B0D0A20202020202020207661722072656E6465726564203D20746869732E636F6E7665727465722E6D616B6548746D6C28636F6D706C657465293B0D0A20';
wwv_flow_api.g_varchar2_table(1348) := '2020202020202076617220746573746C696E6B203D2022687474703A2F2F746869732D69732D612D7265616C2D6C696E6B2E62697A2F223B0D0A0D0A20202020202020202F2F204966206F75722066616B65206C696E6B206170706561727320696E2074';
wwv_flow_api.g_varchar2_table(1349) := '68652072656E64657265642076657273696F6E202A6265666F72652A20776520686176652061646465642069742C0D0A20202020202020202F2F20746869732070726F6261626C79206D65616E7320796F752772652061204D65746120537461636B2045';
wwv_flow_api.g_varchar2_table(1350) := '786368616E676520757365722077686F2069732064656C696265726174656C790D0A20202020202020202F2F20747279696E6720746F20627265616B207468697320666561747572652E20596F752063616E207374696C6C20627265616B207468697320';
wwv_flow_api.g_varchar2_table(1351) := '776F726B61726F756E6420696620796F750D0A20202020202020202F2F20617474616368206120706C7567696E20746F2074686520636F6E766572746572207468617420736F6D6574696D65732028212920696E73657274732074686973206C696E6B2E';
wwv_flow_api.g_varchar2_table(1352) := '20496E0D0A20202020202020202F2F207468617420636173652C20636F6E736964657220796F757273656C6620756E737570706F727465642E0D0A20202020202020207768696C65202872656E64657265642E696E6465784F6628746573746C696E6B29';
wwv_flow_api.g_varchar2_table(1353) := '20213D202D31290D0A202020202020202020202020746573746C696E6B202B3D20226E6963657472792F223B0D0A0D0A20202020202020207661722066616B6564656673203D20225C6E5C6E223B0D0A0D0A20202020202020202F2F2074686520726567';
wwv_flow_api.g_varchar2_table(1354) := '657820697320746573746564206F6E207468652028757020746F29207468726565206368756E6B732073657061726174656C792C20616E64206F6E20737562737472696E67732C0D0A20202020202020202F2F20736F20696E206F7264657220746F2068';
wwv_flow_api.g_varchar2_table(1355) := '6176652074686520636F7272656374206F66667365747320746F20636865636B20616761696E7374206F6B6179546F4D6F6469667928292C2077650D0A20202020202020202F2F206861766520746F206B65657020747261636B206F6620686F77206D61';
wwv_flow_api.g_varchar2_table(1356) := '6E7920636861726163746572732061726520696E20746865206F726967696E616C20736F75726365206265666F72650D0A20202020202020202F2F2074686520737562737472696E672074686174207765277265206C6F6F6B696E672061742E204E6F74';
wwv_flow_api.g_varchar2_table(1357) := '65207468617420646F4C696E6B4F72496D61676520616C69676E73207468652073656C656374696F6E0D0A20202020202020202F2F206F6E20706F74656E7469616C20627261636B6574732C20736F2074686572652073686F756C64206265206E6F206D';
wwv_flow_api.g_varchar2_table(1358) := '616A6F7220627265616B6167652066726F6D20746865206368756E6B0D0A20202020202020202F2F2073657061726174696F6E2E0D0A202020202020202076617220736B69707065644368617273203D20303B0D0A0D0A20202020202020207661722075';
wwv_flow_api.g_varchar2_table(1359) := '6E6971756966696564203D20636F6D706C6574652E7265706C6163652872656765782C2066756E6374696F6E20756E6971756966792877686F6C654D617463682C206265666F72652C20696E6E65722C206166746572496E6E65722C2069642C20656E64';
wwv_flow_api.g_varchar2_table(1360) := '2C206F666673657429207B0D0A202020202020202020202020736B69707065644368617273202B3D206F66667365743B0D0A20202020202020202020202066616B6564656673202B3D2022205B22202B20736B69707065644368617273202B20225D3A20';
wwv_flow_api.g_varchar2_table(1361) := '22202B20746573746C696E6B202B20736B69707065644368617273202B20222F756E69636F726E5C6E223B0D0A202020202020202020202020736B69707065644368617273202B3D206265666F72652E6C656E6774683B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1362) := '20696E6E6572203D20696E6E65722E7265706C6163652872656765782C20756E697175696679293B0D0A202020202020202020202020736B69707065644368617273202D3D206265666F72652E6C656E6774683B0D0A2020202020202020202020207661';
wwv_flow_api.g_varchar2_table(1363) := '7220726573756C74203D206265666F7265202B20696E6E6572202B206166746572496E6E6572202B20736B69707065644368617273202B20656E643B0D0A202020202020202020202020736B69707065644368617273202D3D206F66667365743B0D0A20';
wwv_flow_api.g_varchar2_table(1364) := '202020202020202020202072657475726E20726573756C743B0D0A20202020202020207D293B0D0A0D0A202020202020202072656E6465726564203D20746869732E636F6E7665727465722E6D616B6548746D6C28756E6971756966696564202B206661';
wwv_flow_api.g_varchar2_table(1365) := '6B6564656673293B0D0A0D0A2020202020202020766172206F6B6179546F4D6F64696679203D2066756E6374696F6E286F666673657429207B0D0A20202020202020202020202072657475726E2072656E64657265642E696E6465784F6628746573746C';
wwv_flow_api.g_varchar2_table(1366) := '696E6B202B206F6666736574202B20222F756E69636F726E222920213D3D202D313B0D0A20202020202020207D0D0A0D0A2020202020202020766172206164644465664E756D626572203D2066756E6374696F6E202864656629207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1367) := '2020202020207265664E756D6265722B2B3B0D0A202020202020202020202020646566203D206465662E7265706C616365282F5E5B205D7B302C337D5C5B285C642B295C5D3A2F2C202220205B22202B207265664E756D626572202B20225D3A22293B0D';
wwv_flow_api.g_varchar2_table(1368) := '0A20202020202020202020202064656673202B3D20225C6E22202B206465663B0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F206E6F746520746861740D0A20202020202020202F2F2061292074686520726563757273697665206361';
wwv_flow_api.g_varchar2_table(1369) := '6C6C20746F206765744C696E6B2063616E6E6F7420676F20696E66696E6974652C206265636175736520627920646566696E6974696F6E0D0A20202020202020202F2F202020206F662072656765782C20696E6E657220697320616C7761797320612070';
wwv_flow_api.g_varchar2_table(1370) := '726F70657220737562737472696E67206F662077686F6C654D617463682C20616E640D0A20202020202020202F2F206229206D6F7265207468616E206F6E65206C6576656C206F66206E657374696E67206973206E65697468657220737570706F727465';
wwv_flow_api.g_varchar2_table(1371) := '64206279207468652072656765780D0A20202020202020202F2F202020206E6F72206D616B696E672061206C6F74206F662073656E73652028746865206F6E6C7920757365206361736520666F72206E657374696E672069732061206C696E6B65642069';
wwv_flow_api.g_varchar2_table(1372) := '6D616765290D0A2020202020202020766172206765744C696E6B203D2066756E6374696F6E202877686F6C654D617463682C206265666F72652C20696E6E65722C206166746572496E6E65722C2069642C20656E642C206F666673657429207B0D0A2020';
wwv_flow_api.g_varchar2_table(1373) := '2020202020202020202069662028216F6B6179546F4D6F6469667928736B69707065644368617273202B206F666673657429290D0A2020202020202020202020202020202072657475726E2077686F6C654D617463683B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1374) := '20736B69707065644368617273202B3D206F6666736574202B206265666F72652E6C656E6774683B0D0A202020202020202020202020696E6E6572203D20696E6E65722E7265706C6163652872656765782C206765744C696E6B293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1375) := '202020202020736B69707065644368617273202D3D206F6666736574202B206265666F72652E6C656E6774683B0D0A2020202020202020202020206966202864656673546F4164645B69645D29207B0D0A20202020202020202020202020202020616464';
wwv_flow_api.g_varchar2_table(1376) := '4465664E756D6265722864656673546F4164645B69645D293B0D0A2020202020202020202020202020202072657475726E206265666F7265202B20696E6E6572202B206166746572496E6E6572202B207265664E756D626572202B20656E643B0D0A2020';
wwv_flow_api.g_varchar2_table(1377) := '202020202020202020207D0D0A20202020202020202020202072657475726E2077686F6C654D617463683B0D0A20202020202020207D3B0D0A0D0A2020202020202020766172206C656E203D206368756E6B2E6265666F72652E6C656E6774683B0D0A20';
wwv_flow_api.g_varchar2_table(1378) := '202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C6163652872656765782C206765744C696E6B293B0D0A2020202020202020736B69707065644368617273202B3D206C656E3B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1379) := '206C656E203D206368756E6B2E73656C656374696F6E2E6C656E6774683B0D0A2020202020202020696620286C696E6B44656629207B0D0A2020202020202020202020206164644465664E756D626572286C696E6B446566293B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1380) := '7D0D0A2020202020202020656C7365207B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C6163652872656765782C206765744C696E6B293B0D0A20202020202020207D';
wwv_flow_api.g_varchar2_table(1381) := '0D0A2020202020202020736B69707065644368617273202B3D206C656E3B0D0A0D0A2020202020202020766172207265664F7574203D207265664E756D6265723B0D0A0D0A20202020202020206368756E6B2E6166746572203D206368756E6B2E616674';
wwv_flow_api.g_varchar2_table(1382) := '65722E7265706C6163652872656765782C206765744C696E6B293B0D0A0D0A2020202020202020696620286368756E6B2E616674657229207B0D0A2020202020202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E726570';
wwv_flow_api.g_varchar2_table(1383) := '6C616365282F5C6E2A242F2C202222293B0D0A20202020202020207D0D0A202020202020202069662028216368756E6B2E616674657229207B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C6563';
wwv_flow_api.g_varchar2_table(1384) := '74696F6E2E7265706C616365282F5C6E2A242F2C202222293B0D0A20202020202020207D0D0A0D0A20202020202020206368756E6B2E6166746572202B3D20225C6E5C6E22202B20646566733B0D0A0D0A202020202020202072657475726E207265664F';
wwv_flow_api.g_varchar2_table(1385) := '75743B0D0A202020207D3B0D0A0D0A202020202F2F2074616B657320746865206C696E6520617320656E746572656420696E746F2074686520616464206C696E6B2F617320696D616765206469616C6F6720616E64206D616B65730D0A202020202F2F20';
wwv_flow_api.g_varchar2_table(1386) := '73757265207468652055524C20616E6420746865206F7074696E616C207469746C652061726520226E696365222E0D0A2020202066756E6374696F6E2070726F7065726C79456E636F646564286C696E6B64656629207B0D0A2020202020202020726574';
wwv_flow_api.g_varchar2_table(1387) := '75726E206C696E6B6465662E7265706C616365282F5E5C732A282E2A3F29283F3A5C732B22282E2B2922293F5C732A242F2C2066756E6374696F6E202877686F6C656D617463682C206C696E6B2C207469746C6529207B0D0A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1388) := '20202076617220696E5175657279537472696E67203D2066616C73653B0D0A0D0A2020202020202020202020202F2F20486176696E6720605B5E5C775C642D2E2F5D6020696E207468657265206973206A75737420612073686F72746375742074686174';
wwv_flow_api.g_varchar2_table(1389) := '206C65747320757320736B69700D0A2020202020202020202020202F2F20746865206D6F737420636F6D6D6F6E206368617261637465727320696E2055524C732E205265706C6163696E672074686174206974207769746820602E6020776F756C64206E';
wwv_flow_api.g_varchar2_table(1390) := '6F74206368616E67650D0A2020202020202020202020202F2F2074686520726573756C742C206265636175736520656E636F64655552492072657475726E732074686F7365206368617261637465727320756E6368616E6765642C206275742069740D0A';
wwv_flow_api.g_varchar2_table(1391) := '2020202020202020202020202F2F20776F756C64206D65616E206C6F7473206F6620756E6E6563657373617279207265706C6163656D656E742063616C6C732E20486176696E6720605B6020616E6420605D6020696E20746861740D0A20202020202020';
wwv_flow_api.g_varchar2_table(1392) := '20202020202F2F2073656374696F6E2061732077656C6C206D65616E7320776520646F202A6E6F742A20656E6F6364652073717561726520627261636B6574732E2054686573652063686172616374657273206172650D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1393) := '2F2F206120737472616E676520626561737420696E2055524C732C2062757420696620616E797468696E672C2074686973206361757365732055524C7320746F206265206D6F7265207265616461626C652C0D0A2020202020202020202020202F2F2061';
wwv_flow_api.g_varchar2_table(1394) := '6E64207765206C6561766520697420746F207468652062726F7773657220746F206D616B6520737572652074686174207468657365206C696E6B73206172652068616E646C656420776974686F75740D0A2020202020202020202020202F2F2070726F62';
wwv_flow_api.g_varchar2_table(1395) := '6C656D732E0D0A2020202020202020202020206C696E6B203D206C696E6B2E7265706C616365282F25283F3A5B5C64612D66412D465D7B327D297C5C3F7C5C2B7C5B5E5C775C642D2E2F5B5C5D5D2F672C2066756E6374696F6E20286D6174636829207B';
wwv_flow_api.g_varchar2_table(1396) := '0D0A202020202020202020202020202020202F2F2056616C69642070657263656E7420656E636F64696E672E20436F756C64206A7573742072657475726E2069742061732069732C2062757420776520666F6C6C6F7720524643333938360D0A20202020';
wwv_flow_api.g_varchar2_table(1397) := '2020202020202020202020202F2F2053656374696F6E20322E3120776869636820736179732022466F7220636F6E73697374656E63792C205552492070726F64756365727320616E64206E6F726D616C697A6572730D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1398) := '2020202F2F2073686F756C6420757365207570706572636173652068657861646563696D616C2064696769747320666F7220616C6C2070657263656E742D656E636F64696E67732E220D0A202020202020202020202020202020202F2F204E6F74652074';
wwv_flow_api.g_varchar2_table(1399) := '68617420776520616C736F2068616E646C652028696C6C6567616C29207374616E642D616C6F6E652070657263656E7420636861726163746572732062790D0A202020202020202020202020202020202F2F207265706C6163696E67207468656D207769';
wwv_flow_api.g_varchar2_table(1400) := '74682022253235220D0A20202020202020202020202020202020696620286D617463682E6C656E677468203D3D3D2033202626206D617463682E636861724174283029203D3D2022252229207B0D0A202020202020202020202020202020202020202072';
wwv_flow_api.g_varchar2_table(1401) := '657475726E206D617463682E746F55707065724361736528293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202073776974636820286D6174636829207B0D0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1402) := '206361736520223F223A0D0A202020202020202020202020202020202020202020202020696E5175657279537472696E67203D20747275653B0D0A20202020202020202020202020202020202020202020202072657475726E20223F223B0D0A20202020';
wwv_flow_api.g_varchar2_table(1403) := '2020202020202020202020202020202020202020627265616B3B0D0A0D0A20202020202020202020202020202020202020202F2F20496E2074686520717565727920737472696E672C206120706C757320616E6420612073706163652061726520696465';
wwv_flow_api.g_varchar2_table(1404) := '6E746963616C202D2D206E6F726D616C697A652E0D0A20202020202020202020202020202020202020202F2F204E6F74207374726963746C79206E65636573736172792C20627574206964656E746963616C206265686176696F7220746F207468652070';
wwv_flow_api.g_varchar2_table(1405) := '726576696F75732076657273696F6E0D0A20202020202020202020202020202020202020202F2F206F6620746869732066756E6374696F6E2E0D0A20202020202020202020202020202020202020206361736520222B223A0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1406) := '202020202020202020202020202069662028696E5175657279537472696E67290D0A2020202020202020202020202020202020202020202020202020202072657475726E2022253230223B0D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1407) := '20627265616B3B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202072657475726E20656E636F6465555249286D61746368293B0D0A2020202020202020202020207D290D0A0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1408) := '696620287469746C6529207B0D0A202020202020202020202020202020207469746C65203D207469746C652E7472696D203F207469746C652E7472696D2829203A207469746C652E7265706C616365282F5E5C732A2F2C202222292E7265706C61636528';
wwv_flow_api.g_varchar2_table(1409) := '2F5C732A242F2C202222293B0D0A202020202020202020202020202020207469746C65203D207469746C652E7265706C616365282F222F672C202271756F743B22292E7265706C616365282F5C282F672C2022262334303B22292E7265706C616365282F';
wwv_flow_api.g_varchar2_table(1410) := '5C292F672C2022262334313B22292E7265706C616365282F3C2F672C2022266C743B22292E7265706C616365282F3E2F672C20222667743B22293B0D0A2020202020202020202020207D0D0A20202020202020202020202072657475726E207469746C65';
wwv_flow_api.g_varchar2_table(1411) := '203F206C696E6B202B2027202227202B207469746C65202B20272227203A206C696E6B3B0D0A20202020202020207D293B0D0A202020207D0D0A0D0A20202020636F6D6D616E6450726F746F2E646F4C696E6B4F72496D616765203D2066756E6374696F';
wwv_flow_api.g_varchar2_table(1412) := '6E20286368756E6B2C20706F737450726F63657373696E672C206973496D61676529207B0D0A0D0A20202020202020206368756E6B2E7472696D5768697465737061636528293B0D0A20202020202020206368756E6B2E66696E6454616773282F5C732A';
wwv_flow_api.g_varchar2_table(1413) := '213F5C5B2F2C202F5C5D5B205D3F283F3A5C6E5B205D2A293F285C5B2E2A3F5C5D293F2F293B0D0A2020202020202020766172206261636B67726F756E643B0D0A0D0A2020202020202020696620286368756E6B2E656E645461672E6C656E677468203E';
wwv_flow_api.g_varchar2_table(1414) := '2031202626206368756E6B2E73746172745461672E6C656E677468203E203029207B0D0A0D0A2020202020202020202020206368756E6B2E7374617274546167203D206368756E6B2E73746172745461672E7265706C616365282F213F5C5B2F2C202222';
wwv_flow_api.g_varchar2_table(1415) := '293B0D0A2020202020202020202020206368756E6B2E656E64546167203D2022223B0D0A202020202020202020202020746869732E6164644C696E6B446566286368756E6B2C206E756C6C293B0D0A0D0A20202020202020207D0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1416) := '656C7365207B0D0A0D0A2020202020202020202020202F2F205765277265206D6F76696E6720737461727420616E6420656E6420746167206261636B20696E746F207468652073656C656374696F6E2C2073696E63652028617320776527726520696E20';
wwv_flow_api.g_varchar2_table(1417) := '74686520656C736520626C6F636B29207765277265206E6F740D0A2020202020202020202020202F2F202A72656D6F76696E672A2061206C696E6B2C20627574202A616464696E672A206F6E652C20736F2077686174657665722066696E645461677328';
wwv_flow_api.g_varchar2_table(1418) := '2920666F756E64206973206E6F77206261636B20746F206265696E672070617274206F66207468650D0A2020202020202020202020202F2F206C696E6B20746578742E206C696E6B456E746572656443616C6C6261636B2074616B65732063617265206F';
wwv_flow_api.g_varchar2_table(1419) := '66206573636170696E6720616E7920627261636B6574732E0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E7374617274546167202B206368756E6B2E73656C656374696F6E202B206368756E6B2E656E64';
wwv_flow_api.g_varchar2_table(1420) := '5461673B0D0A2020202020202020202020206368756E6B2E7374617274546167203D206368756E6B2E656E64546167203D2022223B0D0A0D0A202020202020202020202020696620282F5C6E5C6E2F2E74657374286368756E6B2E73656C656374696F6E';
wwv_flow_api.g_varchar2_table(1421) := '2929207B0D0A20202020202020202020202020202020746869732E6164644C696E6B446566286368756E6B2C206E756C6C293B0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1422) := '20202020207661722074686174203D20746869733B0D0A2020202020202020202020202F2F205468652066756E6374696F6E20746F206265206578656375746564207768656E20796F7520656E7465722061206C696E6B20616E64207072657373204F4B';
wwv_flow_api.g_varchar2_table(1423) := '206F722043616E63656C2E0D0A2020202020202020202020202F2F204D61726B7320757020746865206C696E6B20616E64206164647320746865207265662E0D0A202020202020202020202020766172206C696E6B456E746572656443616C6C6261636B';
wwv_flow_api.g_varchar2_table(1424) := '203D2066756E6374696F6E20286C696E6B29207B0D0A0D0A202020202020202020202020202020206261636B67726F756E642E706172656E744E6F64652E72656D6F76654368696C64286261636B67726F756E64293B0D0A0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1425) := '202020202020696620286C696E6B20213D3D206E756C6C29207B0D0A20202020202020202020202020202020202020202F2F2028202020202020202020202020202020202020202020202020202024310D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1426) := '20202F2F20202020205B5E5C5C5D202020202020202020202020202020202020616E797468696E6720746861742773206E6F742061206261636B736C6173680D0A20202020202020202020202020202020202020202F2F2020202020283F3A5C5C5C5C29';
wwv_flow_api.g_varchar2_table(1427) := '2A2020202020202020202020202020616E206576656E206E756D62657220287468697320696E636C75646573207A65726F29206F66206261636B736C61736865730D0A20202020202020202020202020202020202020202F2F20290D0A20202020202020';
wwv_flow_api.g_varchar2_table(1428) := '202020202020202020202020202F2F20283F3D202020202020202020202020202020202020202020202020666F6C6C6F7765642062790D0A20202020202020202020202020202020202020202F2F20202020205B5B5C5D5D202020202020202020202020';
wwv_flow_api.g_varchar2_table(1429) := '202020202020616E206F70656E696E67206F7220636C6F73696E6720627261636B65740D0A20202020202020202020202020202020202020202F2F20290D0A20202020202020202020202020202020202020202F2F0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1430) := '202020202020202F2F20496E206F7468657220776F7264732C2061206E6F6E2D6573636170656420627261636B65742E205468657365206861766520746F2062652065736361706564206E6F7720746F206D616B65207375726520746865790D0A202020';
wwv_flow_api.g_varchar2_table(1431) := '20202020202020202020202020202020202F2F20646F6E277420636F756E742061732074686520656E64206F6620746865206C696E6B206F722073696D696C61722E0D0A20202020202020202020202020202020202020202F2F204E6F74652074686174';
wwv_flow_api.g_varchar2_table(1432) := '207468652061637475616C20627261636B65742068617320746F2062652061206C6F6F6B61686561642C20626563617573652028696E2063617365206F6620746F2073756273657175656E7420627261636B657473292C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1433) := '2020202020202020202F2F2074686520627261636B657420696E206F6E65206D61746368206D61792062652074686520226E6F742061206261636B736C617368222063686172616374657220696E20746865206E657874206D617463682C20736F206974';
wwv_flow_api.g_varchar2_table(1434) := '0D0A20202020202020202020202020202020202020202F2F2073686F756C64206E6F7420626520636F6E73756D656420627920746865206669727374206D617463682E0D0A20202020202020202020202020202020202020202F2F205468652022707265';
wwv_flow_api.g_varchar2_table(1435) := '70656E64206120737061636520616E642066696E616C6C792072656D6F766520697422207374657073206D616B65732073757265207468657265206973206120226E6F742061206261636B736C61736822206174207468650D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1436) := '202020202020202020202F2F207374617274206F662074686520737472696E672C20736F207468697320616C736F20776F726B73206966207468652073656C656374696F6E20626567696E732077697468206120627261636B65742E2057652063616E6E';
wwv_flow_api.g_varchar2_table(1437) := '6F7420736F6C76650D0A20202020202020202020202020202020202020202F2F207468697320627920616E63686F72696E672077697468205E2C206265636175736520696E2074686520636173652074686174207468652073656C656374696F6E207374';
wwv_flow_api.g_varchar2_table(1438) := '6172747320776974682074776F20627261636B6574732C20746869730D0A20202020202020202020202020202020202020202F2F20776F756C64206D65616E2061207A65726F2D7769647468206D61746368206174207468652073746172742E2053696E';
wwv_flow_api.g_varchar2_table(1439) := '6365207A65726F2D7769647468206D61746368657320616476616E63652074686520737472696E6720706F736974696F6E2C0D0A20202020202020202020202020202020202020202F2F2074686520666972737420627261636B657420636F756C642074';
wwv_flow_api.g_varchar2_table(1440) := '68656E206E6F74206163742061732074686520226E6F742061206261636B736C6173682220666F7220746865207365636F6E642E0D0A20202020202020202020202020202020202020206368756E6B2E73656C656374696F6E203D2028222022202B2063';
wwv_flow_api.g_varchar2_table(1441) := '68756E6B2E73656C656374696F6E292E7265706C616365282F285B5E5C5C5D283F3A5C5C5C5C292A29283F3D5B5B5C5D5D292F672C202224315C5C22292E7375627374722831293B0D0A0D0A202020202020202020202020202020202020202076617220';
wwv_flow_api.g_varchar2_table(1442) := '6C696E6B446566203D2022205B3939395D3A2022202B2070726F7065726C79456E636F646564286C696E6B293B0D0A0D0A2020202020202020202020202020202020202020766172206E756D203D20746861742E6164644C696E6B446566286368756E6B';
wwv_flow_api.g_varchar2_table(1443) := '2C206C696E6B446566293B0D0A20202020202020202020202020202020202020206368756E6B2E7374617274546167203D206973496D616765203F2022215B22203A20225B223B0D0A20202020202020202020202020202020202020206368756E6B2E65';
wwv_flow_api.g_varchar2_table(1444) := '6E64546167203D20225D5B22202B206E756D202B20225D223B0D0A0D0A202020202020202020202020202020202020202069662028216368756E6B2E73656C656374696F6E29207B0D0A2020202020202020202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(1445) := '20286973496D61676529207B0D0A202020202020202020202020202020202020202020202020202020206368756E6B2E73656C656374696F6E203D20746861742E676574537472696E672822696D6167656465736372697074696F6E22293B0D0A202020';
wwv_flow_api.g_varchar2_table(1446) := '2020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020656C7365207B0D0A202020202020202020202020202020202020202020202020202020206368756E6B2E73656C656374696F6E20';
wwv_flow_api.g_varchar2_table(1447) := '3D20746861742E676574537472696E6728226C696E6B6465736372697074696F6E22293B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1448) := '202020207D0D0A20202020202020202020202020202020706F737450726F63657373696E6728293B0D0A2020202020202020202020207D3B0D0A0D0A2020202020202020202020206261636B67726F756E64203D2075692E6372656174654261636B6772';
wwv_flow_api.g_varchar2_table(1449) := '6F756E6428293B0D0A0D0A202020202020202020202020696620286973496D61676529207B0D0A202020202020202020202020202020206966202821746869732E686F6F6B732E696E73657274496D6167654469616C6F67286C696E6B456E7465726564';
wwv_flow_api.g_varchar2_table(1450) := '43616C6C6261636B29290D0A202020202020202020202020202020202020202075692E70726F6D707428746869732E676574537472696E672822696D6167656469616C6F6722292C20696D61676544656661756C74546578742C206C696E6B456E746572';
wwv_flow_api.g_varchar2_table(1451) := '656443616C6C6261636B293B0D0A2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A2020202020202020202020202020202075692E70726F6D707428746869732E676574537472696E6728226C696E6B6469616C6F';
wwv_flow_api.g_varchar2_table(1452) := '6722292C206C696E6B44656661756C74546578742C206C696E6B456E746572656443616C6C6261636B293B0D0A2020202020202020202020207D0D0A20202020202020202020202072657475726E20747275653B0D0A20202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(1453) := '207D3B0D0A0D0A202020202F2F205768656E206D616B696E672061206C6973742C2068697474696E672073686966742D656E7465722077696C6C2070757420796F757220637572736F72206F6E20746865206E657874206C696E650D0A202020202F2F20';
wwv_flow_api.g_varchar2_table(1454) := '6174207468652063757272656E7420696E64656E74206C6576656C2E0D0A20202020636F6D6D616E6450726F746F2E646F4175746F696E64656E74203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1455) := '202020202020202076617220636F6D6D616E644D6772203D20746869732C0D0A20202020202020202020202066616B6553656C656374696F6E203D2066616C73653B0D0A0D0A20202020202020206368756E6B2E6265666F7265203D206368756E6B2E62';
wwv_flow_api.g_varchar2_table(1456) := '65666F72652E7265706C616365282F285C6E7C5E295B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2A5C6E242F2C20225C6E5C6E22293B0D0A20202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F7265';
wwv_flow_api.g_varchar2_table(1457) := '2E7265706C616365282F285C6E7C5E295B205D7B302C337D3E5B205C745D2A5C6E242F2C20225C6E5C6E22293B0D0A20202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C616365282F285C6E7C5E295B20';
wwv_flow_api.g_varchar2_table(1458) := '5C745D2B5C6E242F2C20225C6E5C6E22293B0D0A0D0A20202020202020202F2F2054686572652773206E6F2073656C656374696F6E2C20656E642074686520637572736F72207761736E27742061742074686520656E64206F6620746865206C696E653A';
wwv_flow_api.g_varchar2_table(1459) := '0D0A20202020202020202F2F2054686520757365722077616E747320746F2073706C6974207468652063757272656E74206C697374206974656D202F20636F6465206C696E65202F20626C6F636B71756F7465206C696E650D0A20202020202020202F2F';
wwv_flow_api.g_varchar2_table(1460) := '2028666F7220746865206C617474657220697420646F65736E2774207265616C6C79206D61747465722920696E2074776F2E2054656D706F726172696C792073656C656374207468650D0A20202020202020202F2F202872657374206F66207468652920';
wwv_flow_api.g_varchar2_table(1461) := '6C696E6520746F206163686965766520746869732E0D0A202020202020202069662028216368756E6B2E73656C656374696F6E20262620212F5E5B205C745D2A283F3A5C6E7C24292F2E74657374286368756E6B2E61667465722929207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1462) := '20202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C616365282F5E5B5E5C6E5D2A2F2C2066756E6374696F6E202877686F6C654D6174636829207B0D0A202020202020202020202020202020206368756E6B2E';
wwv_flow_api.g_varchar2_table(1463) := '73656C656374696F6E203D2077686F6C654D617463683B0D0A2020202020202020202020202020202072657475726E2022223B0D0A2020202020202020202020207D293B0D0A20202020202020202020202066616B6553656C656374696F6E203D207472';
wwv_flow_api.g_varchar2_table(1464) := '75653B0D0A20202020202020207D0D0A0D0A2020202020202020696620282F285C6E7C5E295B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2E2A5C6E242F2E74657374286368756E6B2E6265666F72652929207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1465) := '2020202020202069662028636F6D6D616E644D67722E646F4C69737429207B0D0A20202020202020202020202020202020636F6D6D616E644D67722E646F4C697374286368756E6B293B0D0A2020202020202020202020207D0D0A20202020202020207D';
wwv_flow_api.g_varchar2_table(1466) := '0D0A2020202020202020696620282F285C6E7C5E295B205D7B302C337D3E5B205C745D2B2E2A5C6E242F2E74657374286368756E6B2E6265666F72652929207B0D0A20202020202020202020202069662028636F6D6D616E644D67722E646F426C6F636B';
wwv_flow_api.g_varchar2_table(1467) := '71756F746529207B0D0A20202020202020202020202020202020636F6D6D616E644D67722E646F426C6F636B71756F7465286368756E6B293B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A2020202020202020696620282F285C';
wwv_flow_api.g_varchar2_table(1468) := '6E7C5E29285C747C5B205D7B342C7D292E2A5C6E242F2E74657374286368756E6B2E6265666F72652929207B0D0A20202020202020202020202069662028636F6D6D616E644D67722E646F436F646529207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1469) := '636F6D6D616E644D67722E646F436F6465286368756E6B293B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A0D0A20202020202020206966202866616B6553656C656374696F6E29207B0D0A202020202020202020202020636875';
wwv_flow_api.g_varchar2_table(1470) := '6E6B2E6166746572203D206368756E6B2E73656C656374696F6E202B206368756E6B2E61667465723B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D2022223B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1471) := '202020636F6D6D616E6450726F746F2E646F426C6F636B71756F7465203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B';
wwv_flow_api.g_varchar2_table(1472) := '2E73656C656374696F6E2E7265706C616365282F5E285C6E2A29285B5E5C725D2B3F29285C6E2A29242F2C0D0A20202020202020202020202066756E6374696F6E2028746F74616C4D617463682C206E65776C696E65734265666F72652C20746578742C';
wwv_flow_api.g_varchar2_table(1473) := '206E65776C696E6573416674657229207B0D0A202020202020202020202020202020206368756E6B2E6265666F7265202B3D206E65776C696E65734265666F72653B0D0A202020202020202020202020202020206368756E6B2E6166746572203D206E65';
wwv_flow_api.g_varchar2_table(1474) := '776C696E65734166746572202B206368756E6B2E61667465723B0D0A2020202020202020202020202020202072657475726E20746578743B0D0A2020202020202020202020207D293B0D0A0D0A20202020202020206368756E6B2E6265666F7265203D20';
wwv_flow_api.g_varchar2_table(1475) := '6368756E6B2E6265666F72652E7265706C616365282F283E5B205C745D2A29242F2C0D0A20202020202020202020202066756E6374696F6E2028746F74616C4D617463682C20626C616E6B4C696E6529207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1476) := '6368756E6B2E73656C656374696F6E203D20626C616E6B4C696E65202B206368756E6B2E73656C656374696F6E3B0D0A2020202020202020202020202020202072657475726E2022223B0D0A2020202020202020202020207D293B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(1477) := '2020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5E285C737C3E292B242F2C202222293B0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C65';
wwv_flow_api.g_varchar2_table(1478) := '6374696F6E207C7C20746869732E676574537472696E67282271756F74656578616D706C6522293B0D0A0D0A20202020202020202F2F20546865206F726967696E616C20636F64652075736573206120726567756C61722065787072657373696F6E2074';
wwv_flow_api.g_varchar2_table(1479) := '6F2066696E64206F757420686F77206D756368206F66207468650D0A20202020202020202F2F2074657874202A6469726563746C79206265666F72652A207468652073656C656374696F6E20616C726561647920776173206120626C6F636B71756F7465';
wwv_flow_api.g_varchar2_table(1480) := '3A0D0A0D0A20202020202020202F2A0D0A202020202020202020696620286368756E6B2E6265666F726529207B0D0A2020202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C616365282F5C6E3F242F2C20';
wwv_flow_api.g_varchar2_table(1481) := '225C6E22293B0D0A2020202020202020207D0D0A2020202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C616365282F2828285C6E7C5E29285C6E5B205C745D2A292A3E282E2B5C6E292A2E2A292B285C6E';
wwv_flow_api.g_varchar2_table(1482) := '5B205C745D2A292A24292F2C0D0A20202020202020202066756E6374696F6E2028746F74616C4D6174636829207B0D0A2020202020202020206368756E6B2E7374617274546167203D20746F74616C4D617463683B0D0A20202020202020202072657475';
wwv_flow_api.g_varchar2_table(1483) := '726E2022223B0D0A2020202020202020207D293B0D0A2020202020202020202A2F0D0A0D0A20202020202020202F2F205468697320636F6D657320646F776E20746F3A0D0A20202020202020202F2F20476F206261636B7761726473206173206D616E79';
wwv_flow_api.g_varchar2_table(1484) := '206C696E6573206120706F737369626C652C207375636820746861742065616368206C696E650D0A20202020202020202F2F2020612920737461727473207769746820223E222C206F720D0A20202020202020202F2F2020622920697320616C6D6F7374';
wwv_flow_api.g_varchar2_table(1485) := '20656D7074792C2065786365707420666F7220776869746573706163652C206F720D0A20202020202020202F2F202063292069732070726563656564656420627920616E20756E62726F6B656E20636861696E206F66206E6F6E2D656D707479206C696E';
wwv_flow_api.g_varchar2_table(1486) := '65730D0A20202020202020202F2F20202020206C656164696E6720757020746F2061206C696E65207468617420737461727473207769746820223E2220616E64206174206C65617374206F6E65206D6F7265206368617261637465720D0A202020202020';
wwv_flow_api.g_varchar2_table(1487) := '20202F2F20616E6420696E206164646974696F6E0D0A20202020202020202F2F20206429206174206C65617374206F6E65206C696E652066756C66696C6C732061290D0A20202020202020202F2F0D0A20202020202020202F2F2053696E636520746869';
wwv_flow_api.g_varchar2_table(1488) := '7320697320657373656E7469616C6C792061206261636B77617264732D6D6F76696E672072656765782C2069742773207375736365707469626C6520746F0D0A20202020202020202F2F206361747374726F70686963206261636B747261636B696E6720';
wwv_flow_api.g_varchar2_table(1489) := '616E642063616E206361757365207468652062726F7773657220746F2068616E673B0D0A20202020202020202F2F2073656520652E672E20687474703A2F2F6D6574612E737461636B65786368616E67652E636F6D2F7175657374696F6E732F39383037';
wwv_flow_api.g_varchar2_table(1490) := '2E0D0A20202020202020202F2F0D0A20202020202020202F2F2048656E6365207765207265706C61636564207468697320627920612073696D706C65207374617465206D616368696E652074686174206A75737420676F6573207468726F756768207468';
wwv_flow_api.g_varchar2_table(1491) := '650D0A20202020202020202F2F206C696E657320616E6420636865636B7320666F722061292C2062292C20616E642063292E0D0A0D0A2020202020202020766172206D61746368203D2022222C0D0A2020202020202020202020206C6566744F76657220';
wwv_flow_api.g_varchar2_table(1492) := '3D2022222C0D0A2020202020202020202020206C696E653B0D0A2020202020202020696620286368756E6B2E6265666F726529207B0D0A202020202020202020202020766172206C696E6573203D206368756E6B2E6265666F72652E7265706C61636528';
wwv_flow_api.g_varchar2_table(1493) := '2F5C6E242F2C202222292E73706C697428225C6E22293B0D0A20202020202020202020202076617220696E436861696E203D2066616C73653B0D0A202020202020202020202020666F7220287661722069203D20303B2069203C206C696E65732E6C656E';
wwv_flow_api.g_varchar2_table(1494) := '6774683B20692B2B29207B0D0A2020202020202020202020202020202076617220676F6F64203D2066616C73653B0D0A202020202020202020202020202020206C696E65203D206C696E65735B695D3B0D0A20202020202020202020202020202020696E';
wwv_flow_api.g_varchar2_table(1495) := '436861696E203D20696E436861696E202626206C696E652E6C656E677468203E20303B202F2F20632920616E79206E6F6E2D656D707479206C696E6520636F6E74696E7565732074686520636861696E0D0A202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(1496) := '20282F5E3E2F2E74657374286C696E652929207B202020202020202020202020202020202F2F2061290D0A2020202020202020202020202020202020202020676F6F64203D20747275653B0D0A2020202020202020202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(1497) := '2821696E436861696E202626206C696E652E6C656E677468203E20312920202F2F20632920616E79206C696E65207468617420737461727473207769746820223E2220616E6420686173206174206C65617374206F6E65206D6F72652063686172616374';
wwv_flow_api.g_varchar2_table(1498) := '6572207374617274732074686520636861696E0D0A202020202020202020202020202020202020202020202020696E436861696E203D20747275653B0D0A202020202020202020202020202020207D20656C736520696620282F5E5B205C745D2A242F2E';
wwv_flow_api.g_varchar2_table(1499) := '74657374286C696E652929207B2020202F2F2062290D0A2020202020202020202020202020202020202020676F6F64203D20747275653B0D0A202020202020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1500) := '202020676F6F64203D20696E436861696E3B202020202020202020202020202020202020202F2F20632920746865206C696E65206973206E6F7420656D70747920616E6420646F6573206E6F74207374617274207769746820223E222C20736F20697420';
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table(1501) := '6D61746368657320696620616E64206F6E6C7920696620776527726520696E2074686520636861696E0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202069662028676F6F6429207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1502) := '20202020202020202020206D61746368202B3D206C696E65202B20225C6E223B0D0A202020202020202020202020202020207D20656C7365207B0D0A20202020202020202020202020202020202020206C6566744F766572202B3D206D61746368202B20';
wwv_flow_api.g_varchar2_table(1503) := '6C696E653B0D0A20202020202020202020202020202020202020206D61746368203D20225C6E223B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020202020202069662028212F285E7C5C6E29';
wwv_flow_api.g_varchar2_table(1504) := '3E2F2E74657374286D617463682929207B202020202020202020202020202F2F2064290D0A202020202020202020202020202020206C6566744F766572202B3D206D617463683B0D0A202020202020202020202020202020206D61746368203D2022223B';
wwv_flow_api.g_varchar2_table(1505) := '0D0A2020202020202020202020207D0D0A20202020202020207D0D0A0D0A20202020202020206368756E6B2E7374617274546167203D206D617463683B0D0A20202020202020206368756E6B2E6265666F7265203D206C6566744F7665723B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1506) := '202020202020202F2F20656E64206F66206368616E67650D0A0D0A2020202020202020696620286368756E6B2E616674657229207B0D0A2020202020202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C616365';
wwv_flow_api.g_varchar2_table(1507) := '282F5E5C6E3F2F2C20225C6E22293B0D0A20202020202020207D0D0A0D0A20202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C616365282F5E2828285C6E7C5E29285C6E5B205C745D2A292A3E282E2B5C6E29';
wwv_flow_api.g_varchar2_table(1508) := '2A2E2A292B285C6E5B205C745D2A292A292F2C0D0A20202020202020202020202066756E6374696F6E2028746F74616C4D6174636829207B0D0A202020202020202020202020202020206368756E6B2E656E64546167203D20746F74616C4D617463683B';
wwv_flow_api.g_varchar2_table(1509) := '0D0A2020202020202020202020202020202072657475726E2022223B0D0A2020202020202020202020207D0D0A2020202020202020293B0D0A0D0A2020202020202020766172207265706C616365426C616E6B73496E54616773203D2066756E6374696F';
wwv_flow_api.g_varchar2_table(1510) := '6E2028757365427261636B657429207B0D0A0D0A202020202020202020202020766172207265706C6163656D656E74203D20757365427261636B6574203F20223E2022203A2022223B0D0A0D0A202020202020202020202020696620286368756E6B2E73';
wwv_flow_api.g_varchar2_table(1511) := '7461727454616729207B0D0A202020202020202020202020202020206368756E6B2E7374617274546167203D206368756E6B2E73746172745461672E7265706C616365282F5C6E28283E7C5C73292A295C6E242F2C0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1512) := '2020202020202066756E6374696F6E2028746F74616C4D617463682C206D61726B646F776E29207B0D0A20202020202020202020202020202020202020202020202072657475726E20225C6E22202B206D61726B646F776E2E7265706C616365282F5E5B';
wwv_flow_api.g_varchar2_table(1513) := '205D7B302C337D3E3F5B205C745D2A242F676D2C207265706C6163656D656E7429202B20225C6E223B0D0A20202020202020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A2020202020202020202020206966202863';
wwv_flow_api.g_varchar2_table(1514) := '68756E6B2E656E6454616729207B0D0A202020202020202020202020202020206368756E6B2E656E64546167203D206368756E6B2E656E645461672E7265706C616365282F5E5C6E28283E7C5C73292A295C6E2F2C0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1515) := '2020202020202066756E6374696F6E2028746F74616C4D617463682C206D61726B646F776E29207B0D0A20202020202020202020202020202020202020202020202072657475726E20225C6E22202B206D61726B646F776E2E7265706C616365282F5E5B';
wwv_flow_api.g_varchar2_table(1516) := '205D7B302C337D3E3F5B205C745D2A242F676D2C207265706C6163656D656E7429202B20225C6E223B0D0A20202020202020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A20202020202020207D3B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1517) := '2020202020696620282F5E283F215B205D7B302C337D3E292F6D2E74657374286368756E6B2E73656C656374696F6E2929207B0D0A202020202020202020202020746869732E77726170286368756E6B2C2053455454494E47532E6C696E654C656E6774';
wwv_flow_api.g_varchar2_table(1518) := '68202D2032293B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5E2F676D2C20223E2022293B0D0A2020202020202020202020207265706C616365426C61';
wwv_flow_api.g_varchar2_table(1519) := '6E6B73496E546167732874727565293B0D0A2020202020202020202020206368756E6B2E736B69704C696E657328293B0D0A20202020202020207D20656C7365207B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368';
wwv_flow_api.g_varchar2_table(1520) := '756E6B2E73656C656374696F6E2E7265706C616365282F5E5B205D7B302C337D3E203F2F676D2C202222293B0D0A202020202020202020202020746869732E756E77726170286368756E6B293B0D0A2020202020202020202020207265706C616365426C';
wwv_flow_api.g_varchar2_table(1521) := '616E6B73496E546167732866616C7365293B0D0A0D0A20202020202020202020202069662028212F5E285C6E7C5E295B205D7B302C337D3E2F2E74657374286368756E6B2E73656C656374696F6E29202626206368756E6B2E737461727454616729207B';
wwv_flow_api.g_varchar2_table(1522) := '0D0A202020202020202020202020202020206368756E6B2E7374617274546167203D206368756E6B2E73746172745461672E7265706C616365282F5C6E7B302C327D242F2C20225C6E5C6E22293B0D0A2020202020202020202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1523) := '20202020202020202069662028212F285C6E7C5E295B205D7B302C337D3E2E2A242F2E74657374286368756E6B2E73656C656374696F6E29202626206368756E6B2E656E6454616729207B0D0A202020202020202020202020202020206368756E6B2E65';
wwv_flow_api.g_varchar2_table(1524) := '6E64546167203D206368756E6B2E656E645461672E7265706C616365282F5E5C6E7B302C327D2F2C20225C6E5C6E22293B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A0D0A20202020202020206368756E6B2E73656C65637469';
wwv_flow_api.g_varchar2_table(1525) := '6F6E203D20746869732E686F6F6B732E706F7374426C6F636B71756F74654372656174696F6E286368756E6B2E73656C656374696F6E293B0D0A0D0A202020202020202069662028212F5C6E2F2E74657374286368756E6B2E73656C656374696F6E2929';
wwv_flow_api.g_varchar2_table(1526) := '207B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5E283E202A292F2C0D0A2020202020202020202020202020202066756E6374696F6E202877686F6C65';
wwv_flow_api.g_varchar2_table(1527) := '4D617463682C20626C616E6B7329207B0D0A20202020202020202020202020202020202020206368756E6B2E7374617274546167202B3D20626C616E6B733B0D0A202020202020202020202020202020202020202072657475726E2022223B0D0A202020';
wwv_flow_api.g_varchar2_table(1528) := '202020202020202020202020207D293B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E646F436F6465203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D';
wwv_flow_api.g_varchar2_table(1529) := '0A0D0A202020202020202076617220686173546578744265666F7265203D202F5C535B205D2A242F2E74657374286368756E6B2E6265666F7265293B0D0A202020202020202076617220686173546578744166746572203D202F5E5B205D2A5C532F2E74';
wwv_flow_api.g_varchar2_table(1530) := '657374286368756E6B2E6166746572293B0D0A0D0A20202020202020202F2F205573652027666F757220737061636527206D61726B646F776E206966207468652073656C656374696F6E206973206F6E20697473206F776E0D0A20202020202020202F2F';
wwv_flow_api.g_varchar2_table(1531) := '206C696E65206F72206973206D756C74696C696E652E0D0A20202020202020206966202828216861735465787441667465722026262021686173546578744265666F726529207C7C202F5C6E2F2E74657374286368756E6B2E73656C656374696F6E2929';
wwv_flow_api.g_varchar2_table(1532) := '207B0D0A0D0A2020202020202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C616365282F5B205D7B347D242F2C0D0A2020202020202020202020202020202066756E6374696F6E2028746F74616C4D6174';
wwv_flow_api.g_varchar2_table(1533) := '636829207B0D0A20202020202020202020202020202020202020206368756E6B2E73656C656374696F6E203D20746F74616C4D61746368202B206368756E6B2E73656C656374696F6E3B0D0A202020202020202020202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(1534) := '726E2022223B0D0A202020202020202020202020202020207D293B0D0A0D0A202020202020202020202020766172206E4C696E65734261636B203D20313B0D0A202020202020202020202020766172206E4C696E6573466F7277617264203D20313B0D0A';
wwv_flow_api.g_varchar2_table(1535) := '0D0A202020202020202020202020696620282F285C6E7C5E29285C747C5B205D7B342C7D292E2A5C6E242F2E74657374286368756E6B2E6265666F72652929207B0D0A202020202020202020202020202020206E4C696E65734261636B203D20303B0D0A';
wwv_flow_api.g_varchar2_table(1536) := '2020202020202020202020207D0D0A202020202020202020202020696620282F5E5C6E285C747C5B205D7B342C7D292F2E74657374286368756E6B2E61667465722929207B0D0A202020202020202020202020202020206E4C696E6573466F7277617264';
wwv_flow_api.g_varchar2_table(1537) := '203D20303B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020206368756E6B2E736B69704C696E6573286E4C696E65734261636B2C206E4C696E6573466F7277617264293B0D0A0D0A2020202020202020202020206966202821';
wwv_flow_api.g_varchar2_table(1538) := '6368756E6B2E73656C656374696F6E29207B0D0A202020202020202020202020202020206368756E6B2E7374617274546167203D202220202020223B0D0A202020202020202020202020202020206368756E6B2E73656C656374696F6E203D2074686973';
wwv_flow_api.g_varchar2_table(1539) := '2E676574537472696E672822636F64656578616D706C6522293B0D0A2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A20202020202020202020202020202020696620282F5E5B205D7B302C337D5C532F6D2E7465';
wwv_flow_api.g_varchar2_table(1540) := '7374286368756E6B2E73656C656374696F6E2929207B0D0A2020202020202020202020202020202020202020696620282F5C6E2F2E74657374286368756E6B2E73656C656374696F6E29290D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1541) := '206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5E2F676D2C20222020202022293B0D0A2020202020202020202020202020202020202020656C7365202F2F2069662069742773206E6F7420';
wwv_flow_api.g_varchar2_table(1542) := '6D756C74696C696E652C20646F206E6F742073656C6563742074686520666F7572206164646564207370616365733B2074686973206973206D6F726520636F6E73697374656E7420776974682074686520646F4C697374206265686176696F720D0A2020';
wwv_flow_api.g_varchar2_table(1543) := '202020202020202020202020202020202020202020206368756E6B2E6265666F7265202B3D202220202020223B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C7365207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1544) := '202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5E283F3A5B205D7B347D7C5B205D7B302C337D5C74292F676D2C202222293B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1545) := '20207D0D0A2020202020202020202020207D0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A2020202020202020202020202F2F20557365206261636B7469636B732028602920746F2064656C696D69742074686520636F646520';
wwv_flow_api.g_varchar2_table(1546) := '626C6F636B2E0D0A0D0A2020202020202020202020206368756E6B2E7472696D5768697465737061636528293B0D0A2020202020202020202020206368756E6B2E66696E6454616773282F602F2C202F602F293B0D0A0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1547) := '69662028216368756E6B2E737461727454616720262620216368756E6B2E656E6454616729207B0D0A202020202020202020202020202020206368756E6B2E7374617274546167203D206368756E6B2E656E64546167203D202260223B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1548) := '202020202020202020202069662028216368756E6B2E73656C656374696F6E29207B0D0A20202020202020202020202020202020202020206368756E6B2E73656C656374696F6E203D20746869732E676574537472696E672822636F64656578616D706C';
wwv_flow_api.g_varchar2_table(1549) := '6522293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A202020202020202020202020656C736520696620286368756E6B2E656E6454616720262620216368756E6B2E737461727454616729207B0D0A202020';
wwv_flow_api.g_varchar2_table(1550) := '202020202020202020202020206368756E6B2E6265666F7265202B3D206368756E6B2E656E645461673B0D0A202020202020202020202020202020206368756E6B2E656E64546167203D2022223B0D0A2020202020202020202020207D0D0A2020202020';
wwv_flow_api.g_varchar2_table(1551) := '20202020202020656C7365207B0D0A202020202020202020202020202020206368756E6B2E7374617274546167203D206368756E6B2E656E64546167203D2022223B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A202020207D3B';
wwv_flow_api.g_varchar2_table(1552) := '0D0A0D0A20202020636F6D6D616E6450726F746F2E646F4C697374203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E672C2069734E756D62657265644C69737429207B0D0A0D0A20202020202020202F2F205468657365';
wwv_flow_api.g_varchar2_table(1553) := '20617265206964656E746963616C2065786365707420617420746865207665727920626567696E6E696E6720616E6420656E642E0D0A20202020202020202F2F2053686F756C642070726F6261626C79207573652074686520726567657820657874656E';
wwv_flow_api.g_varchar2_table(1554) := '73696F6E2066756E6374696F6E20746F206D616B65207468697320636C65617265722E0D0A20202020202020207661722070726576696F75734974656D735265676578203D202F285C6E7C5E2928285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D';
wwv_flow_api.g_varchar2_table(1555) := '295B205C745D2B2E2A29285C6E2E2B7C5C6E7B322C7D285B2A2B2D5D2E2A7C5C642B5B2E5D295B205C745D2B2E2A7C5C6E7B322C7D5B205C745D2B5C532E2A292A295C6E2A242F3B0D0A2020202020202020766172206E6578744974656D735265676578';
wwv_flow_api.g_varchar2_table(1556) := '203D202F5E5C6E2A28285B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D295B205C745D2B2E2A29285C6E2E2B7C5C6E7B322C7D285B2A2B2D5D2E2A7C5C642B5B2E5D295B205C745D2B2E2A7C5C6E7B322C7D5B205C745D2B5C532E2A292A295C6E2A';
wwv_flow_api.g_varchar2_table(1557) := '2F3B0D0A0D0A20202020202020202F2F205468652064656661756C742062756C6C65742069732061206461736820627574206F74686572732061726520706F737369626C652E0D0A20202020202020202F2F205468697320686173206E6F7468696E6720';
wwv_flow_api.g_varchar2_table(1558) := '746F20646F20776974682074686520706172746963756C61722048544D4C2062756C6C65742C0D0A20202020202020202F2F2069742773206A7573742061206D61726B646F776E2062756C6C65742E0D0A20202020202020207661722062756C6C657420';
wwv_flow_api.g_varchar2_table(1559) := '3D20222D223B0D0A0D0A20202020202020202F2F20546865206E756D62657220696E2061206E756D6265726564206C6973742E0D0A2020202020202020766172206E756D203D20313B0D0A0D0A20202020202020202F2F2047657420746865206974656D';
wwv_flow_api.g_varchar2_table(1560) := '20707265666978202D20652E672E202220312E202220666F722061206E756D6265726564206C6973742C2022202D202220666F7220612062756C6C65746564206C6973742E0D0A2020202020202020766172206765744974656D507265666978203D2066';
wwv_flow_api.g_varchar2_table(1561) := '756E6374696F6E202829207B0D0A202020202020202020202020766172207072656669783B0D0A2020202020202020202020206966202869734E756D62657265644C69737429207B0D0A20202020202020202020202020202020707265666978203D2022';
wwv_flow_api.g_varchar2_table(1562) := '2022202B206E756D202B20222E20223B0D0A202020202020202020202020202020206E756D2B2B3B0D0A2020202020202020202020207D0D0A202020202020202020202020656C7365207B0D0A2020202020202020202020202020202070726566697820';
wwv_flow_api.g_varchar2_table(1563) := '3D20222022202B2062756C6C6574202B202220223B0D0A2020202020202020202020207D0D0A20202020202020202020202072657475726E207072656669783B0D0A20202020202020207D3B0D0A0D0A20202020202020202F2F20466978657320746865';
wwv_flow_api.g_varchar2_table(1564) := '207072656669786573206F6620746865206F74686572206C697374206974656D732E0D0A20202020202020207661722067657450726566697865644974656D203D2066756E6374696F6E20286974656D5465787429207B0D0A0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1565) := '2020202F2F20546865206E756D626572696E6720666C616720697320756E736574207768656E2063616C6C6564206279206175746F696E64656E742E0D0A2020202020202020202020206966202869734E756D62657265644C697374203D3D3D20756E64';
wwv_flow_api.g_varchar2_table(1566) := '6566696E656429207B0D0A2020202020202020202020202020202069734E756D62657265644C697374203D202F5E5C732A5C642F2E74657374286974656D54657874293B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020202F';
wwv_flow_api.g_varchar2_table(1567) := '2F2052656E756D6265722F62756C6C657420746865206C69737420656C656D656E742E0D0A2020202020202020202020206974656D54657874203D206974656D546578742E7265706C616365282F5E5B205D7B302C337D285B2A2B2D5D7C5C642B5B2E5D';
wwv_flow_api.g_varchar2_table(1568) := '295C732F676D2C0D0A2020202020202020202020202020202066756E6374696F6E20285F29207B0D0A202020202020202020202020202020202020202072657475726E206765744974656D50726566697828293B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1569) := '20207D293B0D0A0D0A20202020202020202020202072657475726E206974656D546578743B0D0A20202020202020207D3B0D0A0D0A20202020202020206368756E6B2E66696E6454616773282F285C6E7C5E292A5B205D7B302C337D285B2A2B2D5D7C5C';
wwv_flow_api.g_varchar2_table(1570) := '642B5B2E5D295C732B2F2C206E756C6C293B0D0A0D0A2020202020202020696620286368756E6B2E6265666F726520262620212F5C6E242F2E74657374286368756E6B2E6265666F72652920262620212F5E5C6E2F2E74657374286368756E6B2E737461';
wwv_flow_api.g_varchar2_table(1571) := '72745461672929207B0D0A2020202020202020202020206368756E6B2E6265666F7265202B3D206368756E6B2E73746172745461673B0D0A2020202020202020202020206368756E6B2E7374617274546167203D2022223B0D0A20202020202020207D0D';
wwv_flow_api.g_varchar2_table(1572) := '0A0D0A2020202020202020696620286368756E6B2E737461727454616729207B0D0A0D0A20202020202020202020202076617220686173446967697473203D202F5C642B5B2E5D2F2E74657374286368756E6B2E7374617274546167293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1573) := '20202020202020206368756E6B2E7374617274546167203D2022223B0D0A2020202020202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5C6E5B205D7B347D2F672C20225C6E';
wwv_flow_api.g_varchar2_table(1574) := '22293B0D0A202020202020202020202020746869732E756E77726170286368756E6B293B0D0A2020202020202020202020206368756E6B2E736B69704C696E657328293B0D0A0D0A2020202020202020202020206966202868617344696769747329207B';
wwv_flow_api.g_varchar2_table(1575) := '0D0A202020202020202020202020202020202F2F204861766520746F2072656E756D626572207468652062756C6C657420706F696E747320696620746869732069732061206E756D6265726564206C6973742E0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1576) := '206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C616365286E6578744974656D7352656765782C2067657450726566697865644974656D293B0D0A2020202020202020202020207D0D0A202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(1577) := '2869734E756D62657265644C697374203D3D2068617344696769747329207B0D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020207D0D0A20202020202020207D0D0A0D0A2020202020202020766172206E4C';
wwv_flow_api.g_varchar2_table(1578) := '696E65735570203D20313B0D0A0D0A20202020202020206368756E6B2E6265666F7265203D206368756E6B2E6265666F72652E7265706C6163652870726576696F75734974656D7352656765782C0D0A20202020202020202020202066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1579) := '20286974656D5465787429207B0D0A20202020202020202020202020202020696620282F5E5C732A285B2A2B2D5D292F2E74657374286974656D546578742929207B0D0A202020202020202020202020202020202020202062756C6C6574203D2072652E';
wwv_flow_api.g_varchar2_table(1580) := '24313B0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020206E4C696E65735570203D202F5B5E5C6E5D5C6E5C6E5B5E5C6E5D2F2E74657374286974656D5465787429203F2031203A20303B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1581) := '20202020202020202072657475726E2067657450726566697865644974656D286974656D54657874293B0D0A2020202020202020202020207D293B0D0A0D0A202020202020202069662028216368756E6B2E73656C656374696F6E29207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1582) := '20202020202020206368756E6B2E73656C656374696F6E203D20746869732E676574537472696E6728226C6974656D22293B0D0A20202020202020207D0D0A0D0A202020202020202076617220707265666978203D206765744974656D50726566697828';
wwv_flow_api.g_varchar2_table(1583) := '293B0D0A0D0A2020202020202020766172206E4C696E6573446F776E203D20313B0D0A0D0A20202020202020206368756E6B2E6166746572203D206368756E6B2E61667465722E7265706C616365286E6578744974656D7352656765782C0D0A20202020';
wwv_flow_api.g_varchar2_table(1584) := '202020202020202066756E6374696F6E20286974656D5465787429207B0D0A202020202020202020202020202020206E4C696E6573446F776E203D202F5B5E5C6E5D5C6E5C6E5B5E5C6E5D2F2E74657374286974656D5465787429203F2031203A20303B';
wwv_flow_api.g_varchar2_table(1585) := '0D0A2020202020202020202020202020202072657475726E2067657450726566697865644974656D286974656D54657874293B0D0A2020202020202020202020207D293B0D0A0D0A20202020202020206368756E6B2E7472696D57686974657370616365';
wwv_flow_api.g_varchar2_table(1586) := '2874727565293B0D0A20202020202020206368756E6B2E736B69704C696E6573286E4C696E657355702C206E4C696E6573446F776E2C2074727565293B0D0A20202020202020206368756E6B2E7374617274546167203D207072656669783B0D0A202020';
wwv_flow_api.g_varchar2_table(1587) := '202020202076617220737061636573203D207072656669782E7265706C616365282F2E2F672C20222022293B0D0A2020202020202020746869732E77726170286368756E6B2C2053455454494E47532E6C696E654C656E677468202D207370616365732E';
wwv_flow_api.g_varchar2_table(1588) := '6C656E677468293B0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F5C6E2F672C20225C6E22202B20737061636573293B0D0A0D0A202020207D3B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1589) := '636F6D6D616E6450726F746F2E646F48656164696E67203D2066756E6374696F6E20286368756E6B2C20706F737450726F63657373696E6729207B0D0A0D0A20202020202020202F2F2052656D6F7665206C656164696E672F747261696C696E67207768';
wwv_flow_api.g_varchar2_table(1590) := '697465737061636520616E642072656475636520696E7465726E616C2073706163657320746F2073696E676C65207370616365732E0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E726570';
wwv_flow_api.g_varchar2_table(1591) := '6C616365282F5C732B2F672C20222022293B0D0A20202020202020206368756E6B2E73656C656374696F6E203D206368756E6B2E73656C656374696F6E2E7265706C616365282F285E5C732B7C5C732B24292F672C202222293B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(1592) := '20202F2F20496620776520636C69636B65642074686520627574746F6E2077697468206E6F2073656C656374656420746578742C207765206A7573740D0A20202020202020202F2F206D616B652061206C6576656C203220686173682068656164657220';
wwv_flow_api.g_varchar2_table(1593) := '61726F756E6420736F6D652064656661756C7420746578742E0D0A202020202020202069662028216368756E6B2E73656C656374696F6E29207B0D0A2020202020202020202020206368756E6B2E7374617274546167203D2022232320223B0D0A202020';
wwv_flow_api.g_varchar2_table(1594) := '2020202020202020206368756E6B2E73656C656374696F6E203D20746869732E676574537472696E67282268656164696E676578616D706C6522293B0D0A2020202020202020202020206368756E6B2E656E64546167203D2022202323223B0D0A202020';
wwv_flow_api.g_varchar2_table(1595) := '20202020202020202072657475726E3B0D0A20202020202020207D0D0A0D0A2020202020202020766172206865616465724C6576656C203D20303B20202020202F2F20546865206578697374696E6720686561646572206C6576656C206F662074686520';
wwv_flow_api.g_varchar2_table(1596) := '73656C656374656420746578742E0D0A0D0A20202020202020202F2F2052656D6F766520616E79206578697374696E6720686173682068656164696E67206D61726B646F776E20616E6420736176652074686520686561646572206C6576656C2E0D0A20';
wwv_flow_api.g_varchar2_table(1597) := '202020202020206368756E6B2E66696E6454616773282F232B5B205D2A2F2C202F5B205D2A232B2F293B0D0A2020202020202020696620282F232B2F2E74657374286368756E6B2E73746172745461672929207B0D0A2020202020202020202020206865';
wwv_flow_api.g_varchar2_table(1598) := '616465724C6576656C203D2072652E6C6173744D617463682E6C656E6774683B0D0A20202020202020207D0D0A20202020202020206368756E6B2E7374617274546167203D206368756E6B2E656E64546167203D2022223B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1599) := '2F2F2054727920746F20676574207468652063757272656E7420686561646572206C6576656C206279206C6F6F6B696E6720666F72202D20616E64203D20696E20746865206C696E650D0A20202020202020202F2F2062656C6F77207468652073656C65';
wwv_flow_api.g_varchar2_table(1600) := '6374696F6E2E0D0A20202020202020206368756E6B2E66696E6454616773286E756C6C2C202F5C733F282D2B7C3D2B292F293B0D0A2020202020202020696620282F3D2B2F2E74657374286368756E6B2E656E645461672929207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1601) := '20202020206865616465724C6576656C203D20313B0D0A20202020202020207D0D0A2020202020202020696620282F2D2B2F2E74657374286368756E6B2E656E645461672929207B0D0A2020202020202020202020206865616465724C6576656C203D20';
wwv_flow_api.g_varchar2_table(1602) := '323B0D0A20202020202020207D0D0A0D0A20202020202020202F2F20536B697020746F20746865206E657874206C696E6520736F2077652063616E206372656174652074686520686561646572206D61726B646F776E2E0D0A2020202020202020636875';
wwv_flow_api.g_varchar2_table(1603) := '6E6B2E7374617274546167203D206368756E6B2E656E64546167203D2022223B0D0A20202020202020206368756E6B2E736B69704C696E657328312C2031293B0D0A0D0A20202020202020202F2F205765206D616B652061206C6576656C203220686561';
wwv_flow_api.g_varchar2_table(1604) := '646572206966207468657265206973206E6F2063757272656E74206865616465722E0D0A20202020202020202F2F204966207468657265206973206120686561646572206C6576656C2C20776520737562737472616374206F6E652066726F6D20746865';
wwv_flow_api.g_varchar2_table(1605) := '20686561646572206C6576656C2E0D0A20202020202020202F2F204966206974277320616C72656164792061206C6576656C2031206865616465722C20697427732072656D6F7665642E0D0A2020202020202020766172206865616465724C6576656C54';
wwv_flow_api.g_varchar2_table(1606) := '6F437265617465203D206865616465724C6576656C203D3D2030203F2032203A206865616465724C6576656C202D20313B0D0A0D0A2020202020202020696620286865616465724C6576656C546F437265617465203E203029207B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(1607) := '202020202020202F2F2054686520627574746F6E206F6E6C792063726561746573206C6576656C203120616E64203220756E6465726C696E6520686561646572732E0D0A2020202020202020202020202F2F20576879206E6F7420686176652069742069';
wwv_flow_api.g_varchar2_table(1608) := '746572617465206F766572206861736820686561646572206C6576656C733F2020576F756C646E277420746861742062652065617369657220616E6420636C65616E65723F0D0A2020202020202020202020207661722068656164657243686172203D20';
wwv_flow_api.g_varchar2_table(1609) := '6865616465724C6576656C546F437265617465203E3D2032203F20222D22203A20223D223B0D0A202020202020202020202020766172206C656E203D206368756E6B2E73656C656374696F6E2E6C656E6774683B0D0A2020202020202020202020206966';
wwv_flow_api.g_varchar2_table(1610) := '20286C656E203E2053455454494E47532E6C696E654C656E67746829207B0D0A202020202020202020202020202020206C656E203D2053455454494E47532E6C696E654C656E6774683B0D0A2020202020202020202020207D0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1611) := '2020206368756E6B2E656E64546167203D20225C6E223B0D0A2020202020202020202020207768696C6520286C656E2D2D29207B0D0A202020202020202020202020202020206368756E6B2E656E64546167202B3D20686561646572436861723B0D0A20';
wwv_flow_api.g_varchar2_table(1612) := '20202020202020202020207D0D0A20202020202020207D0D0A202020207D3B0D0A0D0A20202020636F6D6D616E6450726F746F2E646F486F72697A6F6E74616C52756C65203D2066756E6374696F6E20286368756E6B2C20706F737450726F6365737369';
wwv_flow_api.g_varchar2_table(1613) := '6E6729207B0D0A20202020202020206368756E6B2E7374617274546167203D20222D2D2D2D2D2D2D2D2D2D5C6E223B0D0A20202020202020206368756E6B2E73656C656374696F6E203D2022223B0D0A20202020202020206368756E6B2E736B69704C69';
wwv_flow_api.g_varchar2_table(1614) := '6E657328322C20312C2074727565293B0D0A202020207D0D0A0D0A0D0A7D2928293B0D0A0D0A0D0A2F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(1615) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F20283329204150455820436F6E7665727465722F456469746F722046756E6374696F6E0D0A2F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(1616) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A2F2F20676C6F62616C206D61726B646F776E206F626A6563740D0A766172206D61726B646F776E203D207B7D3B0D0A6D61726B646F776E2E70';
wwv_flow_api.g_varchar2_table(1617) := '6C7567696E56657273696F6E203D2027312E302E30273B0D0A0D0A2F2F20696E697469616C697A65206F6E6520636F6E7665727465722066756E6374696F6E20666F7220616C6C20636F6E76657273696F6E730D0A6D61726B646F776E2E636F6E766572';
wwv_flow_api.g_varchar2_table(1618) := '746572203D206E6577204D61726B646F776E2E436F6E76657274657228293B0D0A0D0A2F2F20736F6D65206465627567207661726961626C65730D0A6D61726B646F776E2E72656E646572656448746D6C467261676D656E7473203D20303B0D0A6D6172';
wwv_flow_api.g_varchar2_table(1619) := '6B646F776E2E73756D52656E646572696E6754696D6548746D6C467261676D656E7473203D20303B0D0A6D61726B646F776E2E6176657261676552656E646572696E6754696D6548746D6C467261676D656E74203D20303B0D0A6D61726B646F776E2E63';
wwv_flow_api.g_varchar2_table(1620) := '726561746564456469746F7273203D20303B0D0A6D61726B646F776E2E73756D4372656174696F6E54696D65456469746F7273203D20303B0D0A6D61726B646F776E2E617665726167654372656174696F6E54696D65456469746F72203D20303B0D0A6D';
wwv_flow_api.g_varchar2_table(1621) := '61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E67203D20303B0D0A6966202821446174652E6E6F7729207B20446174652E6E6F77203D2066756E6374696F6E2829207B2072657475726E20';
wwv_flow_api.g_varchar2_table(1622) := '6E6577204461746528292E67657454696D6528293B207D207D0D0A0D0A2F2F20546865204150455820636F6E7665727465722066756E6374696F6E20666F722064796E616D696320616374696F6E732E0D0A2F2F205765207365617263682066726F6D20';
wwv_flow_api.g_varchar2_table(1623) := '7468652074726967676572696E6720656C656D656E7420646F776E776172647320666F722074686520636C617373206D61726B646F776E20616E640D0A2F2F20646570656E64696E67206F6E2074686520444F4D20656C656D656E742074797065207765';
wwv_flow_api.g_varchar2_table(1624) := '2063726561746520656469746F727320286F6E2074657874617265617329206F720D0A2F2F20776520636F6E76657274206D61726B646F776E20746F2048544D4C2028666F72207468652072657374206F6620656C656D656E7473292E20497420697320';
wwv_flow_api.g_varchar2_table(1625) := '757020746F207468650D0A2F2F20646576656C6F70657220746F20637265617465207468652072696768742064796E616D696320616374696F6E7320696E20612070616765202D206E6F742065766572797468696E670D0A2F2F206D616B65732073656E';
wwv_flow_api.g_varchar2_table(1626) := '73652E204120636F6D6D6F6E6C7920757365206361736520697320746F20637265617465206F6E652064796E616D696320616374696F6E206F6E207468650D0A2F2F2077686F6C6520646F63756D656E7420666F7220746865206576656E742070616765';
wwv_flow_api.g_varchar2_table(1627) := '206C6F61642E204164646974696F6E616C6C792064796E616D696320616374696F6E73206172650D0A2F2F206F6E6C792075736566756C206F6E20656C656D656E74732C2077686F20617265207265667265736865642062792061207061727469616C20';
wwv_flow_api.g_varchar2_table(1628) := '7061676520726566726573682C0D0A2F2F206E6F726D616C6C79207265706F727473206F6E2074686520617065782061667465722072656672657368206672616D65776F726B206576656E742E0D0A0D0A6D61726B646F776E2E6D616B6548746D6C4F72';
wwv_flow_api.g_varchar2_table(1629) := '437265617465456469746F7273203D2066756E6374696F6E2874726967676572696E67456C656D656E742C20646562756729207B0D0A2020202076617220737461727454696D652C2072756E54696D653B0D0A0D0A202020202F2F20636F6E7665727420';
wwv_flow_api.g_varchar2_table(1630) := '72656164206F6E6C79206974656D7320616E64206F74686572206D61726B646F776E20636F6E74656E74206C696B6520696E207265706F7274730D0A20202020737461727454696D65203D20446174652E6E6F7728293B0D0A202020206A517565727928';
wwv_flow_api.g_varchar2_table(1631) := '74726967676572696E67456C656D656E74292E66696E6428272E6D61726B646F776E27292E6E6F74282774657874617265612C696E7075742C2E776D642D7072657669657727292E656163682866756E6374696F6E202829207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1632) := '6D61726B646F776E2E72656E646572656448746D6C467261676D656E7473202B3D20313B0D0A20202020202020206A51756572792874686973292E68746D6C280D0A2020202020202020202020202F2F20415045582069732070726573657276696E6720';
wwv_flow_api.g_varchar2_table(1633) := '6E6577206C696E657320696E2072656164206F6E6C79206974656D73207769746820616E203C62723E207461672E0D0A2020202020202020202020202F2F205765206861766520746F20656C696D696E617465207468657365207461677320666F722061';
wwv_flow_api.g_varchar2_table(1634) := '20636F727265637420636F6E76657273696F6E20746F2048544D4C2E0D0A2020202020202020202020206D61726B646F776E2E636F6E7665727465722E6D616B6548746D6C28206A51756572792874686973292E68746D6C28292E7265706C616365282F';
wwv_flow_api.g_varchar2_table(1635) := '3C62723E2F672C20275C6E272920290D0A2020202020202020293B0D0A202020207D293B0D0A202020202F2F2073756D2075702072756E2074696D650D0A2020202072756E54696D65203D20446174652E6E6F772829202D20737461727454696D653B0D';
wwv_flow_api.g_varchar2_table(1636) := '0A202020206D61726B646F776E2E73756D52656E646572696E6754696D6548746D6C467261676D656E7473202B3D2072756E54696D653B0D0A20202020696620286D61726B646F776E2E72656E646572656448746D6C467261676D656E7473203E203029';
wwv_flow_api.g_varchar2_table(1637) := '207B0D0A20202020202020206D61726B646F776E2E6176657261676552656E646572696E6754696D6548746D6C467261676D656E74203D204D6174682E726F756E64280D0A2020202020202020202020206D61726B646F776E2E73756D52656E64657269';
wwv_flow_api.g_varchar2_table(1638) := '6E6754696D6548746D6C467261676D656E7473202F206D61726B646F776E2E72656E646572656448746D6C467261676D656E74730D0A2020202020202020293B0D0A202020207D0D0A202020206D61726B646F776E2E6F766572616C6C52756E54696D65';
wwv_flow_api.g_varchar2_table(1639) := '576974686F75745072657669657752656E646572696E67202B3D2072756E54696D653B0D0A0D0A202020202F2F206368616E67652074657874617265617320746F20656469746F72730D0A20202020737461727454696D65203D20446174652E6E6F7728';
wwv_flow_api.g_varchar2_table(1640) := '293B0D0A202020206A51756572792874726967676572696E67456C656D656E74292E66696E64282774657874617265612E6D61726B646F776E27292E656163682866756E6374696F6E202829207B0D0A20202020202020206D61726B646F776E2E637265';
wwv_flow_api.g_varchar2_table(1641) := '61746564456469746F7273202B3D20313B0D0A20202020202020206A51756572792874686973290D0A2020202020202020202020202E616464436C6173732827776D642D696E70757427290D0A2020202020202020202020202E706172656E7428290D0A';
wwv_flow_api.g_varchar2_table(1642) := '2020202020202020202020202E7772617028273C64697620636C6173733D22776D642D70616E656C27202B206D61726B646F776E2E63726561746564456469746F7273202B2027223E3C2F6469763E27290D0A2020202020202020202020202E6265666F';
wwv_flow_api.g_varchar2_table(1643) := '726528273C6469762069643D22776D642D627574746F6E2D62617227202B206D61726B646F776E2E63726561746564456469746F7273202B2027223E3C2F6469763E27290D0A2020202020202020202020202E706172656E7428290D0A20202020202020';
wwv_flow_api.g_varchar2_table(1644) := '20202020202E617070656E6428273C6469762069643D22776D642D7072657669657727202B206D61726B646F776E2E63726561746564456469746F7273202B0D0A20202020202020202020202020202020272220636C6173733D22776D642D70616E656C';
wwv_flow_api.g_varchar2_table(1645) := '20776D642D70726576696577206D61726B646F776E223E3C2F6469763E270D0A202020202020202020202020293B0D0A20202020202020206D61726B646F776E5B27656469746F7227202B206D61726B646F776E2E63726561746564456469746F72735D';
wwv_flow_api.g_varchar2_table(1646) := '203D206E6577204D61726B646F776E2E456469746F72280D0A2020202020202020202020206D61726B646F776E2E636F6E7665727465722C0D0A202020202020202020202020537472696E67286D61726B646F776E2E63726561746564456469746F7273';
wwv_flow_api.g_varchar2_table(1647) := '292C0D0A2020202020202020202020206A51756572792874686973292E617474722827696427290D0A2020202020202020293B0D0A20202020202020206D61726B646F776E5B27656469746F7227202B206D61726B646F776E2E63726561746564456469';
wwv_flow_api.g_varchar2_table(1648) := '746F72735D2E72756E28293B0D0A202020207D293B0D0A202020202F2F2073756D2075702072756E2074696D650D0A2020202072756E54696D65203D20446174652E6E6F772829202D20737461727454696D653B0D0A202020206D61726B646F776E2E73';
wwv_flow_api.g_varchar2_table(1649) := '756D4372656174696F6E54696D65456469746F7273202B3D2072756E54696D653B0D0A20202020696620286D61726B646F776E2E63726561746564456469746F7273203E203029207B0D0A20202020202020206D61726B646F776E2E6176657261676543';
wwv_flow_api.g_varchar2_table(1650) := '72656174696F6E54696D65456469746F72203D204D6174682E726F756E64280D0A2020202020202020202020206D61726B646F776E2E73756D4372656174696F6E54696D65456469746F7273202F206D61726B646F776E2E63726561746564456469746F';
wwv_flow_api.g_varchar2_table(1651) := '72730D0A2020202020202020293B0D0A202020207D0D0A202020206D61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E67202B3D2072756E54696D653B0D0A0D0A202020202F2F2077726974';
wwv_flow_api.g_varchar2_table(1652) := '65207374617469737469637320746F20636F6E736F6C652C2069662077652061726520696E206465627567206D6F64650D0A2020202069662028646562756729207B0D0A2020202020202020636F6E736F6C652E6C6F67280D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1653) := '2020274D61726B646F776E20706C7567696E202D2072756E74696D6520737461746973746963735C6E27202B0D0A202020202020202020202020273D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D5C';
wwv_flow_api.g_varchar2_table(1654) := '6E27202B0D0A2020202020202020202020202720202020202020202020202020202020202020506C7567696E2076657273696F6E3A2027202B206D61726B646F776E2E706C7567696E56657273696F6E202B20275C6E27202B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(1655) := '2020202720202020202020204E756D626572206F66206372656174656420656469746F72733A2027202B206D61726B646F776E2E63726561746564456469746F7273202B20275C6E27202B0D0A20202020202020202020202028206D61726B646F776E2E';
wwv_flow_api.g_varchar2_table(1656) := '63726561746564456469746F7273203E2030203F0D0A202020202020202020202020202020202720202020202020202020202041766572616765206372656174696F6E2074696D653A2027202B206D61726B646F776E2E61766572616765437265617469';
wwv_flow_api.g_varchar2_table(1657) := '6F6E54696D65456469746F72202B20276D735C6E27203A2027272029202B0D0A202020202020202020202020274E756D626572206F662072656E64657265642048544D4C20667261676D656E74733A2027202B206D61726B646F776E2E72656E64657265';
wwv_flow_api.g_varchar2_table(1658) := '6448746D6C467261676D656E7473202B20275C6E27202B0D0A20202020202020202020202028206D61726B646F776E2E72656E646572656448746D6C467261676D656E7473203E2030203F0D0A2020202020202020202020202020202027202020202020';
wwv_flow_api.g_varchar2_table(1659) := '2020202020417665726167652072656E646572696E672074696D653A2027202B206D61726B646F776E2E6176657261676552656E646572696E6754696D6548746D6C467261676D656E74202B20276D735C6E27203A2027272029202B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1660) := '20202020202027204F766572616C6C2072756E74696D6520776974686F75742070726576696577733A2027202B206D61726B646F776E2E6F766572616C6C52756E54696D65576974686F75745072657669657752656E646572696E67202B20276D73270D';
wwv_flow_api.g_varchar2_table(1661) := '0A2020202020202020293B0D0A202020207D0D0A0D0A7D3B0D0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 3710203889634684 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_file_name => 'markdown-1.0.0.js'
 ,p_mime_type => 'text/javascript'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A206D61726B646F776E20636F6E74656E74207374796C6573202A2F0A0A2E6D61726B646F776E2068312C0A2E6D61726B646F776E2068322C0A2E6D61726B646F776E2068332C0A2E6D61726B646F776E2068342C0A2E6D61726B646F776E20683520';
wwv_flow_api.g_varchar2_table(2) := '7B0A20202020666F6E742D7765696768743A20626F6C643B0A202020206C696E652D6865696768743A20312E32656D3B0A2020202070616464696E673A20303B0A7D0A0A2E6D61726B646F776E206831207B0A20202020666F6E742D73697A653A203265';
wwv_flow_api.g_varchar2_table(3) := '6D3B0A202020206D617267696E3A2030203020302E343434656D20303B0A7D0A0A2E6D61726B646F776E206832207B0A20202020666F6E742D73697A653A20312E35656D3B0A202020206D617267696E3A2030203020302E363636656D20303B0A7D0A0A';
wwv_flow_api.g_varchar2_table(4) := '2E6D61726B646F776E206833207B0A20202020666F6E742D73697A653A20312E313235656D3B0A202020206D617267696E3A2030203020302E383838656D20303B0A7D0A0A2E6D61726B646F776E206834207B0A20202020666F6E742D73697A653A2031';
wwv_flow_api.g_varchar2_table(5) := '656D3B0A202020206D617267696E3A203020302031656D20303B0A7D0A0A2E6D61726B646F776E206835207B0A20202020666F6E742D73697A653A20302E383735656D3B0A202020206D617267696E3A2030203020312E31343238656D20303B0A7D0A0A';
wwv_flow_api.g_varchar2_table(6) := '2E6D61726B646F776E20702C0A2E6D61726B646F776E20756C2C0A2E6D61726B646F776E206F6C2C0A2E6D61726B646F776E20646C2C0A2E6D61726B646F776E207072652C0A2E6D61726B646F776E207461626C652C0A2E6D61726B646F776E20626C6F';
wwv_flow_api.g_varchar2_table(7) := '636B71756F7465207B0A2020202070616464696E673A20303B0A202020206D617267696E3A203020302031656D20302021696D706F7274616E743B0A202020202F2A20736F6D652074656D706C61746573206F766572777269746520746865206D617267';
wwv_flow_api.g_varchar2_table(8) := '696E2C20736F20776520666F726365207769746820696D706F7274616E74202A2F0A7D0A0A2E6D61726B646F776E207374726F6E67207B0A20202020666F6E742D7765696768743A20626F6C643B0A7D0A0A2E6D61726B646F776E20656D207B0A202020';
wwv_flow_api.g_varchar2_table(9) := '20666F6E742D7374796C653A206974616C69633B0A7D0A0A2E6D61726B646F776E20756C2C0A2E6D61726B646F776E206F6C2C0A2E6D61726B646F776E20646C207B0A2020202070616464696E673A20302030203020302E35656D3B0A7D0A0A2E6D6172';
wwv_flow_api.g_varchar2_table(10) := '6B646F776E206C692C0A2E6D61726B646F776E206464207B0A2020202070616464696E673A20303B0A202020206D617267696E3A20302030203020312E35656D3B0A7D0A0A2E6D61726B646F776E206C6920756C2C0A2E6D61726B646F776E206C69206F';
wwv_flow_api.g_varchar2_table(11) := '6C2C0A2E6D61726B646F776E206C6920646C2C0A2E6D61726B646F776E20646C20756C2C0A2E6D61726B646F776E20646C206F6C2C0A2E6D61726B646F776E20646C20646C207B0A2020202070616464696E673A20303B0A202020206D617267696E2D62';
wwv_flow_api.g_varchar2_table(12) := '6F74746F6D3A20302021696D706F7274616E743B0A202020202F2A20736F6D652074656D706C61746573206F766572777269746520746865206D617267696E2C20736F20776520666F726365207769746820696D706F7274616E74202A2F0A7D0A0A2E6D';
wwv_flow_api.g_varchar2_table(13) := '61726B646F776E20707265207B0A2020202070616464696E673A20302E36656D3B0A202020206261636B67726F756E642D636F6C6F723A20236565653B0A20202020626F726465722D7261646975733A203370783B0A202020206F766572666C6F773A20';
wwv_flow_api.g_varchar2_table(14) := '6175746F3B0A7D0A0A2E6D61726B646F776E207072653E636F6465207B0A202020206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E6D61726B646F776E20636F6465207B0A202020206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(15) := '636F6C6F723A20236565653B0A7D0A0A2E6D61726B646F776E20626C6F636B71756F7465207B0A2020202070616464696E673A2030202E35656D3B0A20202020626F726465723A20736F6C696420236363633B0A20202020626F726465722D7769647468';
wwv_flow_api.g_varchar2_table(16) := '3A203020302030202E3235656D3B0A7D0A0A2E6D61726B646F776E206872207B0A20202020626F726465722D746F703A20736F6C696420236363633B0A20202020626F726465722D626F74746F6D3A20736F6C696420236666663B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(17) := '65722D77696474683A2031707820303B0A202020206865696768743A20303B0A20202020746578742D616C69676E3A2063656E7465723B0A20202020636C6561723A20626F74683B0A7D0A0A0A2F2A206D61726B646F776E20656469746F72207374796C';
wwv_flow_api.g_varchar2_table(18) := '6573202A2F0A0A2E776D642D7072657669657720207B0A202020206D617267696E3A2031656D20303B0A20202020646973706C61793A20626C6F636B3B0A7D0A0A2E776D642D627574746F6E2D726F770A7B0A20202020706F736974696F6E3A2072656C';
wwv_flow_api.g_varchar2_table(19) := '61746976653B0A202020206D617267696E2D6C6566743A203570783B0A202020206D617267696E2D72696768743A203570783B0A202020206D617267696E2D626F74746F6D3A203570783B0A202020206D617267696E2D746F703A203270783B0A202020';
wwv_flow_api.g_varchar2_table(20) := '2070616464696E673A20303B0A202020206865696768743A20323070783B0A7D0A0A2E776D642D7370616365720A7B0A2020202077696474683A203170783B0A202020206865696768743A20323070783B0A202020206D617267696E2D6C6566743A2031';
wwv_flow_api.g_varchar2_table(21) := '3070783B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020206261636B67726F756E642D636F6C6F723A2053696C7665723B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A202020206C6973742D7374796C65';
wwv_flow_api.g_varchar2_table(22) := '3A206E6F6E653B0A7D0A0A2E776D642D627574746F6E207B0A2020202077696474683A20323070783B0A202020206865696768743A20323070783B0A2020202070616464696E672D6C6566743A203270783B0A2020202070616464696E672D7269676874';
wwv_flow_api.g_varchar2_table(23) := '3A203370783B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A202020206C6973742D7374796C653A206E6F6E653B0A20202020637572736F723A20706F696E7465723B';
wwv_flow_api.g_varchar2_table(24) := '0A7D0A0A2E776D642D627574746F6E203E207370616E207B0A202020206261636B67726F756E643A2075726C282223504C5547494E5F50524546495823776D642D627574746F6E732E706E67222920746F70206C656674206E6F2D7265706561743B0A20';
wwv_flow_api.g_varchar2_table(25) := '20202077696474683A20323070783B0A202020206865696768743A20323070783B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E776D642D737061636572310A7B0A202020206C6566743A20353070783B0A7D0A2E776D';
wwv_flow_api.g_varchar2_table(26) := '642D737061636572320A7B0A202020206C6566743A2031373570783B0A7D0A2E776D642D737061636572330A7B0A202020206C6566743A2033303070783B0A7D0A0A2E776D642D70726F6D70742D6261636B67726F756E640A7B0A202020206261636B67';
wwv_flow_api.g_varchar2_table(27) := '726F756E642D636F6C6F723A20426C61636B3B0A7D0A0A2E776D642D70726F6D70742D6469616C6F670A7B0A20202020626F726465723A2031707820736F6C696420233939393939393B0A202020206261636B67726F756E642D636F6C6F723A20234635';
wwv_flow_api.g_varchar2_table(28) := '463546353B0A7D0A0A2E776D642D70726F6D70742D6469616C6F67203E20646976207B0A20202020666F6E742D73697A653A20302E38656D3B0A20202020666F6E742D66616D696C793A20617269616C2C2068656C7665746963612C2073616E732D7365';
wwv_flow_api.g_varchar2_table(29) := '7269663B0A7D0A0A2E776D642D70726F6D70742D6469616C6F67203E20666F726D203E20696E7075745B747970653D2274657874225D207B0A20202020626F726465723A2031707820736F6C696420233939393939393B0A20202020636F6C6F723A2062';
wwv_flow_api.g_varchar2_table(30) := '6C61636B3B0A7D0A0A2E776D642D70726F6D70742D6469616C6F67203E20666F726D203E20696E7075745B747970653D22627574746F6E225D7B0A20202020626F726465723A2031707820736F6C696420233838383838383B0A20202020666F6E742D66';
wwv_flow_api.g_varchar2_table(31) := '616D696C793A20747265627563686574204D532C2068656C7665746963612C2073616E732D73657269663B0A20202020666F6E742D73697A653A20302E38656D3B0A20202020666F6E742D7765696768743A20626F6C643B0A7D0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 3710914104636120 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_file_name => 'markdown-1.0.0.css'
 ,p_mime_type => 'text/css'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001040000003C08020000000F3453290000000467414D410000AFC837058AE90000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00001CBB4944415478DAEC5D0974';
wwv_flow_api.g_varchar2_table(2) := '1BD5B9D668461A49962D5BF2BEC44EE2D864B5139B8438210B2164210B3429851648021C3850A0504A4F5F79506808A5EDA38FA5E7F49586928416284D4920019210132764296475EC38B11DC79637D9B1768DD6D1CCBC5FBE41C8926634969DD8F4E83F';
wwv_flow_api.g_varchar2_table(3) := '3EE3D19D7BE7DE99F9BFFFFFBF7BEFCCC5388E93242421099148A4895B909084202146493B3A0CC60F8E7EDAC01C61F55A87CF95AE2C19AF2DFCD1F2D9B999BAD176CBCC66F3A0F26BB5DA849E8DB8BCFBEEBBD5D5D5B0B368D1A28A8A8AD2D2D2C83CD8';
wwv_flow_api.g_varchar2_table(4) := '68089376ED3FBDA375BB6E4D75BA36856BCA39D55E5DA5DA3027F5E9F7AA0FCC9B9C75DB4D375CBDAA31ECDB3B00FBB00DBD21A14743C100FA1DF3B6F59F4C72FCF8F1EBAFBF3E347DD603FB60FBD5E65B46EA6EA306448A7093D0CD1190D11C6F6FD9B2';
wwv_flow_api.g_varchar2_table(5) := 'E5F9E79FB75AAD369B0D7EAE5BB7EED5575F4D4D4D150A93A04C5151111621900887C4D75D535373DB6DB7A1B20B162C809F0299F71E3E5B67EBCC9978B6671FBDED99435B766C2B76DD72D7B8C7CBC692BF7A70D5198377CFE193622ADDB973675B5B5B';
wwv_flow_api.g_varchar2_table(6) := '644B046A0F7DC048EF418289028F1F9EFB9EAF3BDFFBE2D28EC3FAA87FFF38D07AE0AC25D080035F0C4AE762EA31FABBF6FAC4C592C19ED0E3F59F6BE93DDFDA2726735B97A5B6A9C7E9F6C5D172D08A0D1B36242727AF59B366F5EAD590B275EB560043';
wwv_flow_api.g_varchar2_table(7) := '8C3069FDFAF5A0F70B172E0C5EFF99336740ADF57A3D9C0E6510533D000060F7D1471F9595950923C1D0673ED3CE2E5D5872E76F77D35EC59C092B9C3EF3D2828755CA8C664387524EDCBB74E68B9B77544E2E4E4FD3F09D041A891A0678084B04632000';
wwv_flow_api.g_varchar2_table(8) := 'E350D51FEC518BD367B47B5464F438D3E363640A2FEC308C3FA66B8ADBD0C657363E340ADFA8C19EEDD0C9B6C3B5EDED066BF765475949D6C61FDF2C64E6BE387FACAEA3EBB28365D8A555C5F7AE9A3EA8BAC027C016C7F19FFFFCE7068301D4127E0218';
wwv_flow_api.g_varchar2_table(9) := '9E78E28930E7208DD4E3D09FE5E5E55006ED47059380828A01CFFBFB8E4D9C9C5398543A3EB392C33CBFBF6FFBA6BBBFF013BA931DDD069BFF622F653199AA2ACAFEFED961010F387DFA746827D408480E7A09B8104804AB107645C3D6F310105C2A2890';
wwv_flow_api.g_varchar2_table(10) := '4D2693458D5282D67D288676B88CF4103D43CCB23D266AEFD166B4DF6BA2367F78E2EF9F9EDD53D370F8DF4D97DA7A3FDC5FBFF14FD57C653FAC6ED879A0E1F343E74FD7B636B5F66EDE7972FDB3FF6A6E37A1A39F1D6EBED41983C2218D07B3083C21A8';
wwv_flow_api.g_varchar2_table(11) := '0C102F41CAA009746468253268898456A4E8CDAE3C5672AADDB6EEE6770F5ED8FAD0969533C6AE2DC9BFDBA0EF616952A16294A4892114CD062B9F0704AC161616869A7FB8480021343B666887AC5D5880144621A2D20610CA2DB5B9703F8B473D33F873';
wwv_flow_api.g_varchar2_table(12) := 'B51B1F46C33CF4B262E2FEAB14FA2B49E2A303E77D34332E2F6D7B75C3E9F3DD75F57A951CBF7FED4C48DCFA49EDFB9F9C7AFAFEF90A79B836C2D1BF7D52DB70A1F347CBA72527917FFBF894D1E575BBE975CF6C7FE3BF56385CBEDFFDB5E683FFB92BA6';
wwv_flow_api.g_varchar2_table(13) := '6728EF171436A344885982A6532C1840B1820E21E82244D206D051D4020171F830BDD1D5EC3327A7E4DD50FEE259FDA14B26BDC5D9DACCFC4AA3D2F92FCC4D551669D3E5768F9F72B9D52A65E47502C4C3FC4FD444310F5EF8673818BCB4DDED65796EA0';
wwv_flow_api.g_varchar2_table(14) := 'CBCB68BC810017E3E7AFD79E438F14C755C86576CAB3EBE00586E52EB59B9A2F76AD5D3CF58527966B921570B4FA647B57A79163A3B48D65B98BFABE1CADEAD94797C0CF0D6B67BDF0FA9E1D358D1999A97F7CEF2B8BC3DDD363494E52C4B4E6416540F6';
wwv_flow_api.g_varchar2_table(15) := '51A3D14435948470E87FF0E0C16061200FE29100EA2826BFDD4D37F53A485C62F6F59276B356352D433EAFBEFBCDF1AB3ED2E9B29BEA0FEDFA2D9EA179A43CB74012ED41A2600C200E004084272C11DA101390F1E9554AD6E76E556F923C29EA6139ED4E';
wwv_flow_api.g_varchar2_table(16) := 'C9C89348EEE3383CAA758F8F040F1148C29E810F2AA1958AD98F3C03C3B240A27ACC96EE3E87C741FDFEE91577ADAC081E2DCC4B3374F52915B228282209C0C3D8FC2B7DD39A64E51F9EB97D5645EDEBEF7F755E6FB45828B51C87938BBC7CB0EC409D11';
wwv_flow_api.g_varchar2_table(17) := '8F8D1AEF0881015C0168D26BAFBD860C2DB80891041AC54862C0407074BB912A4A93E3F098189AF54B2CC6F61ECB3B9A53937A65E9A92A3B997AE45CE793D3B52FAB93A2DCE5DADA5AD83EF9E493B07DE18517DE7EFB6D6821027058E2B0834122BD8CE1';
wwv_flow_api.g_varchar2_table(18) := '9D189E129D51B04E4C8AEE2D1655BD824A732D09747C9E2154BFC5EC47AD576FB03A2937EDA39532C2E5A1438F9A2CAEC5734AF9CA2E9B3BE1DC85EED0149294D33EC66A714839CEEB1F044702832E800489F00834683300009409110EC04624E7180A61';
wwv_flow_api.g_varchar2_table(19) := '00A9284C6BEBBEECF3D394D3E576FB6D56DB81D33FBED871E48BFD86039FD4EEFE4B73CEE471F7BF96FD75DF4B17F44D91C521128BAC172E38345180F7A3CE5F81CE560153EA71E14E07E1A2F0A87F4E07EE724A83A30DA384406322E46A8449705A12E3';
wwv_flow_api.g_varchar2_table(20) := '54189BA6249214C41FFE7A70CB87C7AF902B2FCDF8FD3F59378FAFECA377CD96E2B8EB9B4ED5F73E3BBBE9FFF6FB9C948694A628890C9D5A2ABACD28E617E0C0B109344002F5AB021E005B319903905ABD5E3F7FFE7C31CCFBEE6555FF38F1C165872E59';
wwv_flow_api.g_varchar2_table(21) := 'EA733859176577734DCB9E2AC6491DEDF673AC44A9966765AAE7FECCB8EC7755EF3DF6F10DD755850572E0F8C2B83E7833E4319044F2A4D08185B01D81A303FD82C460ECEC305D4A5146BF46A7D7D1FF9080944B470F811E29CEA024657B373F10FCE9F7';
wwv_flow_api.g_varchar2_table(22) := 'B3268B13ED7F72A869D6D4FCC23CDE41FAC2DCB43915451F1F68B8737920DC9D39256FFFE60708E2DBE053A9908B6CC6827E118A53C4E0291418C31823816467E85EBCE3FA17763796964F94D26CA38D26F10CB52F89C4D3C0626052CC6F613BDA3D2565';
wwv_flow_api.g_varchar2_table(23) := '459625D80F5FBCE7D2DF5AC2B832602F486C503804E80F4D14CFFB850716060049824DCDBF3E573346C9C319BCB43B3BC019309665460F811E4A6FD25046A0A168927280CA22EA0C5EC168A6EE5F3353F8CCF7DD5EB9A3BAC1EBF39372627C41FCD37340';
wwv_flow_api.g_varchar2_table(24) := '2B804F0A70482292FB461DB390F40F62F359D9B0C84C648C8464C9DC4A1FED7FFFC8B915F3E7CF9990F6EB1D74FB6947A6464BFBC000B3605FD374BABA8F4CA7F619DEFBEFED6165A13D688C190DB121CF00DBC8C461D7AA3B66DF272627CDD091D63DEE';
wwv_flow_api.g_varchar2_table(25) := '21E4210269289EE16A789566BD716E4551567AB27036C8706345D1C576D3E4E2ACB8EB024D4041C4810307F8949308D3E3D0415C50350878907D45FC21A64F8033A01005B16D919058B9F086EBA794FC63EF31CAE3557AF3EBF6EBD3527A010A6E8F0FC2';
wwv_flow_api.g_varchar2_table(26) := '9009D76555EFB950FDD2818963268A777F317DA2F0C042E4D16194503C5C4B023D9451E4F87AA2048461D86C9D3A3D2D494C668081D1E28422381EE73CEBA0950713C9A718D8689B5FE5F58129E5E43219BAFBE93F4C85A0E4CB978F4D2C98384A5A8826';
wwv_flow_api.g_varchar2_table(27) := 'EA89CCBC69D3A6679E7966B8ACFB088658C3DF39CD49064BD7E328126AA9216006FB0E3B7CC10236CA5FEE59BD71D593B7FD74C1D405A3A749008623478EB4B4B4300C4310848029A569DAE17004E3CC848C72C1126FBA25242148126FBA252421093024';
wwv_flow_api.g_varchar2_table(28) := '242109302424215165B4BC03ED74795A7ADBAD5C2FEB2069D6AF20342972F58431D92A2539DA6E99D7EB1D547E9224137A36E272F1E2C5EEEEC01CA7DCDCDC8C8C0C8D46334A09B4BED3D846B59263BB14A45C625319A9AE2CA2345B3EED6257778E5655';
wwv_flow_api.g_varchar2_table(29) := '949B79F5AA7EF3CD371F7CF0C1E03E6C833FC38E868241BC7EF7F5F5C1AD0F4DD979A813B6B7CDCB1FA9BB8D1A1029C24D42374740226FD4E891A6A6A613274EF8FA057E969494545555C9E57221CF80CA5014159649AD56575656C22944D60D10ACAFAF';
wwv_flow_api.g_varchar2_table(30) := '476F24E7E4E4545454001CF93277F698CDB453956AA23AD90EB38193314569A5C569534839AE995854D76AC07B8C05D9E9312B85EA743A5D727272584B903188F980837A1FBA23505DC765A79766F8C6805896532AE4B95AD2D0DD1D0606D0393E7514AF';
wwv_flow_api.g_varchar2_table(31) := 'C7D71E4BC3AEEB0CC3DA9D5E0C93A4262B63667638BD3E9AD1242B88C10FBA391C8E9A9A1AAD569B9F9FEFF178404F40CF414F402D85C000EA0E7ABF7BF7EEE0F59B4CA6BD7BF7023CD0009E483C80F281ED44DAB972E54A819C2E8FD7487105B99AEA33';
wwv_flow_api.g_varchar2_table(32) := 'ED2C8B676BC6D08CB7403D89201436374548A513F2334E37B665A4A5049C068F402351F36EB9E596B044B0E202E3D07081021A2F7CD4EB673C344330D1FD2AC372523C302B89E5D898AE296EE58BAF6C7C4012BE51833D9BC1E8E8315294DBE772D33A8D';
wwv_flow_api.g_varchar2_table(33) := 'B272729E9099EBB6F49A9D4E37CDB1DC98EC940985E983AAEBE4C9C00725300C2B2B2B733A9DC846D7D5D54D9D3A35CC3910917A1CFA13B419CA1C3B760C9517EF1C4017C580A7A5A3374D9BA196295394191667DFACD2C55E5AE2F2DAFB28175C3927A1';
wwv_flow_api.g_varchar2_table(34) := '15322E2B5DD7DCD133B5780C9F0704A5878A42951E2E18128B8A8AAED20BD092FEB97A988477CE33865D99CD218D98B58AAC3B6C91520EC5E25ECBC8642875B93CB4D9E6CACF0A84E96E2FAD3758FBCC2E8BCDE9F5FAE13EDA29B71493CC98141D0FAD5D';
wwv_flow_api.g_varchar2_table(35) := '16C86F46733108FCBCC7D7D5E7987E5D8E461D98EAD7D163037791922414B5228D07B3A8E9179408F112A4C400C370F13F843F81E80809E5F3AB388991F295E4DD64B0367DD9B8273D799C463DC105608018846009DC0336D6EEF2F179C0A3478F82370B';
wwv_flow_api.g_varchar2_table(36) := '557AB84E40025C674C24206B87E2A2A01F08A3105169832430030FF3F9A5AC04E38901A4841F43A01916C33C2CD151CCB8FF2A010C629BB66E2B784BD0DA4B5D1693C565B6387029563A2E134C5E63BBA9A5DD58569A1319734291E67693D5EA2C1EA393';
wwv_flow_api.g_varchar2_table(37) := '11D266BDD1E366183F5B73BC754EF9189F9FAD6D342CBA61BC70ED10E1A7A7A783590F86CDC8CA8745D4B1C1008A050E01ED838B107FFD502BE8286A8180804A511EBF9DF5C8E44999E9D79B1D06BB97F25A1D36EE849C5070D66C39AE2695B88F6169BF';
wwv_flow_api.g_varchar2_table(38) := '5F1631F7013C20B430CCFF20AA24C689853D78E19F112D677D0C0449D1C1E0673939C3FEC7C7FD2205C73188F8C1C083AF77501E9BCD39365F5B39758C5C16782DA113C200A7277A498EB35381EFF1CC981CB857A5E3B24ED67700AE144A797DCB659F8F';
wwv_flow_api.g_varchar2_table(39) := '71B9BC720217AE1DCC625019208E4029510DA5101876EDDA6530188285C5CCDF0E2201D4514C7ED0279B9BC631899475133E2F49E814788EC57921A5B04DA150D9CC067D2DA6904F4A57A9251C6F3006100754C00523AC8726421B6202323E912B3B19C2';
wwv_flow_api.g_varchar2_table(40) := '4D4865518F4A59BF4C99048F4FC26151AD7B7C1C7A884012F60C7C5009AD54CC7E34950ED878B7D30B713F43D33794158E0F89FB93934897CB1DB52B2290C805325CB9E7327CF6F4A2AC74735D4BAFD5E1F17A69198E89EF0D059D0430201E1BD9951403';
wwv_flow_api.g_varchar2_table(41) := '0CE00AA0647D7D3D0A3CAAAAAA4472061423890103C6B194874E26A51803D634C036BD1ECAE56D9219D3DC52859CA071798FC5792C9D9C2593E5F38101511A507D402CB41001382C71B8B1002EC123C19C12A99C8751D091EFB885AA575069AE25818ECF';
wwv_flow_api.g_varchar2_table(42) := '3384EAB798FDA86080874AD37E966109A9941EE8333D3E3A3F8BF79D93826C8DD9EA1C6068700C34C5E7A50107E09A398958343436360A202106188AFA05E22D4002E001A273F8C977A238080348BA9ABC6071AB644A8EE3A41066FB7DDDA6230CD6E3F4';
wwv_flow_api.g_varchar2_table(43) := '244938A7DFC7A9D253F2CBB09E33A7AD545EAA5A13D9E71BDA110CF582DEC30523902011E0FDC2030B91470784B37ECC4F4B252C1F67C0FCB890751F11023D529C010BCC74E040D530226020EA1ABBA518563236D0E3EC0760B0DC94921CBEB2938A338F';
wwv_flow_api.g_varchar2_table(44) := '9C6AF3FB59A2BFECC50E33146719A6FF13121841C03F4CBC67983D7BB68002C726D041030FE7026CC5640E406A4141737272C4C0664241564BDF25374DCA01ED128EA17D7ECE5A50A691E2241BF8F081849049954A59F634CFA767762E9AB2242B353BAC';
wwv_flow_api.g_varchar2_table(45) := 'EF0B4581A1FD06616088E449617A1F756021F2E840BF2071799C94C72E27E43C8C820EBE2A347A08F4487106D0E35BE77DFB3A0ACB7110E1A0FD76832D439B94CCDF1D94AC22B3D393F5060B7AE133539B74EBFC89A11F0140201123A093C2063A361842';
wwv_flow_api.g_varchar2_table(46) := '671F88897CC4C748202AA562E6F88C93EDB6545D2AC672561F8B634A190BA12019E859C5249C97A32846A34BF61648BE385573D74D778616AFA8A800EC05890DF20010CE85264E993245BCAE88B19DA85F559B94A192AB0969F41BC8B07E658033447905';
wwv_flow_api.g_varchar2_table(47) := '6C0409F4503CC31047A0C35416516788763C5EFABAB1316618941665B476598075E0524CB8173546D72545819514E0904424F78DECB1413B41862A2CC8548B899190E46767302CDBD26319939B93AD214FB6B294D1A79493FDDF86024DC24805696EF318';
wwv_flow_api.g_varchar2_table(48) := 'BBDC37CD08FF3C2DB407424068335C64696929F20CB08D4C1C761997552A265BE4A0DB088E408FB6310D2BE501AB1FF5F361A10219209BCDE1D16A9471D705A13ED2CC152B56F029E780B94990BBAD5FC22272D027B0F451A77384F9047406841C10F190';
wwv_flow_api.g_varchar2_table(49) := '7079BC2D1DBD7E86D19BCF79FD1419A888838012C2104DAAB2ABC372EBCC1569EAB4AB6129C3484230858F330C6A6E12DFE718829C615024380C0C8325D04319458EAF274AD04C703E1FA320C54E15F578FD72392E8DF7BDCF77DF7D172933D006BE507F';
wwv_flow_api.g_varchar2_table(50) := 'D4BDE986BE16884BAF78D56D5F6C81EDAA99AB53871B0971CBA0C070FAF4E9E9D3A70F97751FC110EBBB2E60A38F1E3D0AA1C492254BF86CFA687FED73EFA9BD538BA6E66A73474F93000C3D3D3D76BB5DF83B4B708865599FCF57595999D0C5EF8424DE';
wwv_flow_api.g_varchar2_table(51) := '814E4842AE48E24DB78424E48A106F1EA41377212109497886842424C4338C927658CCA673FA3D0ECD3185416BF73A496989122B282B9B959A3AEAD681F63907B70EB43C29B10EF4C84B6DCDFB2DB50760677CD9C2BC0933D2F34A4629181ACED65AE53B';
wwv_flow_api.g_varchar2_table(52) := 'B2EEAD9E1C5807DAF3CD3AD0F76EDD77408FEBCAA6CDBA7A553FB440FEE71A5F701FB6C19F614743E5BE9B3395328C6684CE2CC3034386CF6F3E965F32000C6FBD137824F7DFB370A4EE366A40A4083709DD1C01897AA346891CDDB36DF7DBBF765136B7';
wwv_flow_api.g_varchar2_table(53) := 'D326D9F1F6ECA5F7DCF1E82B2A75AA10185019536F7B58265DD698151B9EAB5A7AAFC8BA9BCE1CDCFFCFD76B8FEC82FD92B2792B373C5B523E9F37F385BACC5C4352D6D9F67DF4A775879814EFF7266EB873CAE3A929E4A68757FDEFF6430DE74F4D9A38';
wwv_flow_api.g_varchar2_table(54) := '2366A5670E7F5C505CA6CB2E0C6B49A00D3CB5873EE0A0DE87EEF0FA5329B6E7EB4E0BE553C8A34FC7F3D16C567AEAC26969FAFA9AFC92CA309DE35347F17A7CEDB134ECBACE327EB7C342B358AA36F66B9C1EA7D5EBF1AA52D264B241CF2730F5E8B7BE';
wwv_flow_api.g_varchar2_table(55) := 'FCC0A4C9530AAA16F55C36825A1EDBF38E2EBB68E5FA6785C000EA9E9E5DF8CA138B83D7DF71B1F64FCFAC0178C0E9500631D583F229D5A9506BFEF8694FBDB65F20A7CD664E534997565D59077A76F10AB7CFBC38FF61B93CA3B1BB43D5BF0EF4737FFE';
wwv_flow_api.g_varchar2_table(56) := '90A28AD5EA14BE934023B7FCE67ED87964D3BFC212DD9475FD7FBD25F08005345EF8A8C875A0D958EB40F3552146F9E22B1B1F90846FD460CF4619DBEDA6AE9EBEC03AD04A4DC6A245424DB27637992E77755D7678BC4C6EE1B829D3CA0655D7AE2DBF86';
wwv_flow_api.g_varchar2_table(57) := 'ADDD239DB7F629739F01D9E8EA7FBEBE68ED6361CE8188D4E3D09F606B177DFFF10FFEF833545EBC73005D0C8067598CFC75E7BE5EBB7C66A63C6B7C46E5F9AE131BEFD96EA12497AD97BED2773334CDB29EF41466C1CCF29AAF8ECE9BBB94CF030250C1';
wwv_flow_api.g_varchar2_table(58) := 'F1ADFFC55BA15E0290507EE3AAD0C461EE79F8661D689EA31C3A8413B2A8D61DB64829876271AF65643294BABC6ECADCD79B3326F07E26ED713A7A9B5BF586F3CDDD6678D8813BD527E5B085372F885AF6727BE3C5A6C6B30D9D5E2FAD4C525C36DB2F5D';
wwv_flow_api.g_varchar2_table(59) := '6A9B73E38D3A5D20F8ECD2B7A852B4696942B31390C68359049E10A40A102FB9295B0C30448A521DCF621F67BEFC48203E090ACDB85D0CF775AB6DCDBCBF1F69DAF6D83B2BA714ACCDCFFA514FFF3AD0496A57B2D24826295D1E1B9F07FCE08DA7208A0B';
wwv_flow_api.g_varchar2_table(60) := '557A17650524A8D49A984840D60EC545413F104621F86843DCEB400F25C21962741433EEBF4A0093E2B2DEF6268661406BED3D8D681D681CC3675555B00C7BFA6CDDD9D3676E5C3037F293E62CC39C3A5DD770A173EAD4C94A2579FAE41957FF3AD0BB76';
wwv_flow_api.g_varchar2_table(61) := 'EC5CB96A19B0B643355FAE5CF37DE1DA57AC7F36BFB80CCC7A306C068198252CA28E0D06502C7008681F5C84F8EB6F3A73087414B540080C1C76BEDB6D779A93D479251336725D87CE1BF56DA65623F92BB532DDD13027852CCACD2169C6EFF5BA495219';
wwv_flow_api.g_varchar2_table(62) := 'E90101E261FE67F7968D9189621EBCF0CF7030C4BB0EF47F52DC2F1A0C84C5EEF133CD5D6D57D6819E5E3E79F1AD4B148AC0172E5ADA3B1C4653D499102C1758075AAD522E5E1E08DD2B67CFACFE74DFD986E68CCCD4A6B3272C0E7757B745A188314F0C';
wwv_flow_api.g_varchar2_table(63) := 'CC7F30A281382260DF93345183672130BCF2939B9B6A0F050B97CF5D259E40833A429412BB47D545D775DA219E20DDBD0ABB592D9FA64CBDB1C3B279F2EA8F75BAEC0B7587F6BC244D6B7D64BC363FEACB7D1DCD81600C20BE6BCB46B86084F5D0446873';
wwv_flow_api.g_varchar2_table(64) := '4C40C625F1AF038D30101F871E2290843D031F54422B15B31FE566B1ACD3CBF45903EB40BBEDD4EADB9695557C3B7951A74D73188D32599489DCE02B18864BCFBED21D07E0B9F57BAB0A8BEB4F9C388ED68126655256F43AD060D9813A231EAB520F721D';
wwv_flow_api.g_varchar2_table(65) := '6870050513CAAAB7BF019A0D81C71D8FBD22923340C80EDBF2B9AB63E6A47DB4C1E2CC4C9211528987F1F97D128BA9DDE97F87ED5F075AABB26BD28FE83B7F9A4BBC442A164516EF6C390B5B4469C021ACFBC5666821027058E2B0836128EB400709C335';
wwv_flow_api.g_varchar2_table(66) := '26D0F1798650FD16B31FE5667112C3E52BEB40ABE4044D0FE854F0B85DC52513F8CA969616F7760D78C7264925F3D357D681E630F1AF404B8EEDD9268084186000B30A7F106F0143053C40740E3F552228C43784615ECC9CF9A99AE3E6CB29B24CC6EF97';
wwv_flow_api.g_varchar2_table(67) := '932A8EB1D6353FCEC98FF498F238B6CB65F5E7568CBBE5697CDF0BBFE9E9BB293B6342649F6F684730D40B7A0F178C40824480F70B0F2C441E1DF008FBD781C6483ECE80BB94D1D7811E41023D529C010C02E3E3642C4BCA09B823476ABE944AA5336606';
wwv_flow_api.g_varchar2_table(68) := 'BEEEE807A1FD554BE7F215BD61F6CC8F77EC0214C9E401D771AEBEFEE8A1C32ECAA322A41886C94852FCDAD52ECAF683C75E1150E0D8041A00B0F51B020ED85AB4F6F198DDBAA0A02565F3C4C0A6A26C76ED27FF726AB538EDF353ACD769A7B1A6E511EB';
wwv_flow_api.g_varchar2_table(69) := '402FFEA5F12FBFBFF1EE053BC6E6CC1ED0F7357D3E38BE6FA3C3E4408DE0CD42C110C993C40C2C441E1DE817E25F077A0409F44871060881EE7B68DDB74C80655DCE2B1FBC686A6CCECBCF4BD3F27607A5A6A5168E2D3CDF707E5AF93449E03DE6DC7B36';
wwv_flow_api.g_varchar2_table(70) := 'AC97867C570681448C9496CF13EED1890D0637650B0146ECC8E7CCE1805B104318409235DA25D32BFEDD7671DAE489949D6974D03229CF3AD0CBB1B7B66D78F1B10BA1C557AE7FCE64D007890DF200773CFA4A68E2CDA279BFF0C0C2404B17FF3AD02348';
wwv_flow_api.g_varchar2_table(71) := 'A087E2198638021DF63E0DA2CE0CC3500EAA72668CF73D2A2A67349C3BCFF8199CC0B5BAF8E7B6187BF4CA8BB5021C9288E4BE913D366867F6D27BF8ACEC808EFFCFB689E9540DCA751367308CBFBBE5DCF716CDBFBD42CBB70EF4D77B0C0FAC7D3F3C4C';
wwv_flow_api.g_varchar2_table(72) := 'CA2E841010DADC71B176F6D27B912F826D64E230BBFD21AC033D8223D0A36D4CC3683481D55727AB85B34106C8663499B2B2E25F9C60CBCBF7A320E2A9573FE753CEF0E91828DC47F2CB1F14A3881CEC2B587AB0B83179F3D1CFB6A210A57A7B20521709';
wwv_flow_api.g_varchar2_table(73) := '89C9536616D88BF77EF9B546E19350F9C73F6B4B4EEAE502D4CAA7CD945C37296BEF27177EFCFDCF7374D7452D0EB54456143531AA1F883AB01079741825140FD792400F651439BE9E280181602959AD5625A9C4640618B89C2E28C237CA19BB87F3F415';
wwv_flow_api.g_varchar2_table(74) := '2B0F26924F31B0D136BF0AF81484DA3821431F87FAE59F33E0FFE36BBECCE641C2B5179FD3FCD0922C192E2AF35D8F6C5CF8835F0C97751FC110EBBB2E60A93F78E3A7BAECA287376DE70B16B0D13CD910E4CD8F6F5F38FD890905F3474F93000CA64BFF';
wwv_flow_api.g_varchar2_table(75) := 'A6FA2E711C83497931814BA52C433775D896AF7B2EA18BDF0919ED60484842AE9924DE744B4842AEC8FF0B3000CACA98D4DF83BAC20000000049454E44AE426082';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 7253724652289590 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_file_name => 'wmd-buttons.png'
 ,p_mime_type => 'image/png'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

 
begin
 
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '546865204D4954204C6963656E736520284D495429202D20687474703A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73650D0A0D0A41206A61766173637269707420706F7274206F66204D61726B646F776E2C';
wwv_flow_api.g_varchar2_table(2) := '2061732075736564206F6E20537461636B204F766572666C6F770D0A616E64207468652072657374206F6620537461636B2045786368616E6765206E6574776F726B2E0D0A0D0A4C617267656C79206261736564206F6E2073686F77646F776E2E6A7320';
wwv_flow_api.g_varchar2_table(3) := '6279204A6F686E20467261736572202841747461636B6C6162292E0D0A0D0A4F726967696E616C204D61726B646F776E20436F707972696768742028632920323030342D32303035204A6F686E204772756265720D0A20203C687474703A2F2F64617269';
wwv_flow_api.g_varchar2_table(4) := '6E676669726562616C6C2E6E65742F70726F6A656374732F6D61726B646F776E2F3E0D0A0D0A0D0A4F726967696E616C2053686F77646F776E20636F646520636F70797269676874202863292032303037204A6F686E204672617365720D0A0D0A4D6F64';
wwv_flow_api.g_varchar2_table(5) := '696669636174696F6E7320616E642062756766697865732028632920323030392044616E6120526F62696E736F6E0D0A4D6F64696669636174696F6E7320616E642062756766697865732028632920323030392D3230313420537461636B204578636861';
wwv_flow_api.g_varchar2_table(6) := '6E676520496E632E0D0A4D6F64696669636174696F6E7320666F72204F7261636C65204150455820706C7567696E202863292032303135204F74746D617220476F6272656368740D0A0D0A5065726D697373696F6E20697320686572656279206772616E';
wwv_flow_api.g_varchar2_table(7) := '7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F70790D0A6F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066';
wwv_flow_api.g_varchar2_table(8) := '696C657320287468652022536F66747761726522292C20746F206465616C0D0A696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E207468';
wwv_flow_api.g_varchar2_table(9) := '65207269676874730D0A746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C0D0A636F70696573206F66207468652053';
wwv_flow_api.g_varchar2_table(10) := '6F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F6674776172652069730D0A6675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E67';
wwv_flow_api.g_varchar2_table(11) := '20636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E0D0A616C6C20636F7069';
wwv_flow_api.g_varchar2_table(12) := '6573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F46';
wwv_flow_api.g_varchar2_table(13) := '20414E59204B494E442C2045585052455353204F520D0A494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C0D0A464954';
wwv_flow_api.g_varchar2_table(14) := '4E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C205448450D0A415554484F5253204F5220434F5059524947485420484F4C4445';
wwv_flow_api.g_varchar2_table(15) := '5253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F544845520D0A4C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F';
wwv_flow_api.g_varchar2_table(16) := '54484552574953452C2041524953494E472046524F4D2C0D0A4F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E0D0A';
wwv_flow_api.g_varchar2_table(17) := '54484520534F4654574152452E0D0A';
null;
 
end;
/

 
begin
 
wwv_flow_api.create_plugin_file (
  p_id => 7279004489817941 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 49954153620838050 + wwv_flow_api.g_id_offset
 ,p_file_name => 'LICENSE.txt'
 ,p_mime_type => 'text/plain'
 ,p_file_content => wwv_flow_api.g_varchar2_table
  );
null;
 
end;
/

prompt  ...data loading
--
prompt  ...post import process
 
begin
 
wwv_flow_api.post_import_process(p_flow_id => wwv_flow.g_flow_id);
null;
 
end;
/

--application/end_environment
commit;
commit;
begin
execute immediate 'begin sys.dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
set define on
prompt  ...done
