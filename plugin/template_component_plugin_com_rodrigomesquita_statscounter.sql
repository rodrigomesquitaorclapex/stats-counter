prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>41755996400255984956
,p_default_application_id=>167425
,p_default_id_offset=>117867333226264626721
,p_default_owner=>'RM_SANDBOX'
);
end;
/
 
prompt APPLICATION 167425 - Stats Counter Plugin
--
-- Application Export:
--   Application:     167425
--   Name:            Stats Counter Plugin
--   Date and Time:   17:34 Tuesday May 28, 2024
--   Exported By:     RODRIGOMESQUITA.TI@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 118270395788098799922
--   Manifest End
--   Version:         23.2.4
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_rodrigomesquita_statscounter
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(118270395788098799922)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.RODRIGOMESQUITA.STATSCOUNTER'
,p_display_name=>'Stats Counter'
,p_supported_component_types=>'REPORT'
,p_javascript_file_urls=>'#PLUGIN_FILES#stats_counter#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#stats_counter#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'    <div class="sc-stats">',
'        <i class="fa #SC_ICON#" aria-hidden="true"></i>',
'            <div class="sc-counting" data-count="#SC_VALUE#">0</div>',
'            <h5>#SC_TEXT#</h5>',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<div class="sc-container">#APEX$ROWS#</div>'
,p_report_row_template=>'<span #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</span>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Oracle APEX Template Component Plugin <STRONG>Stats Counter<STRONG>',
'</p>',
'<p>',
'  Author: <code>Rodrigo Mesquita</code><br/>',
'  E-mail: <code>rodrigomesquita.ti@gmail.com</code><br/>',
'  X: <code>@mesquitarod</code><br/>',
'  Plugin home page: <code>https://github.com/rodrigomesquitaorclapex/stats-counter</code>',
'  License: Licensed under the MIT (LICENSE.txt) license.',
'</p>'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://apexblog.dev/oracle-apex-template-component-plugin-stats-counter'
,p_files_version=>51
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118270425682520088646)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'SC_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118270429017852108831)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'SC_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(118270430317956114282)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'SC_TEXT'
,p_prompt=>'Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E73632D636F756E7465722D7374617473207B0A20202020646973706C61793A20696E6C696E652D666C65783B0A202020206A7573746966792D636F6E74656E743A2063656E7465723B0A202020206D617267696E3A206175746F3B0A20202020706164';
wwv_flow_imp.g_varchar2_table(2) := '64696E673A20333570782030203020333570783B0A7D0A0A202E73632D636F6E7461696E6572207B0A2020202077696474683A20313030253B0A20202020666C65782D777261703A20777261703B0A20202020646973706C61793A20666C65783B0A2020';
wwv_flow_imp.g_varchar2_table(3) := '2020616C69676E2D6974656D733A2063656E7465723B0A202020206A7573746966792D636F6E74656E743A20666C65782D73746172743B0A7D0A2E73632D636F6E7461696E6572203E207370616E7B0A20202020666C65783A20313B0A20202020706164';
wwv_flow_imp.g_varchar2_table(4) := '64696E673A20313070783B0A202020206D696E2D77696474683A2032353070783B0A7D0A0A2E73632D7374617473207B0A2020746578742D616C69676E3A2063656E7465723B0A2020666F6E742D73697A653A20333570783B0A2020666F6E742D776569';
wwv_flow_imp.g_varchar2_table(5) := '6768743A203730303B0A7D0A0A2E73632D7374617473202E6661207B0A2020636F6C6F723A20233030383038303B0A2020666F6E742D73697A653A20363070783B0A7D0A0A2E73632D636F756E74696E67207B0A202020206D617267696E2D746F703A20';
wwv_flow_imp.g_varchar2_table(6) := '323070783B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(118270396365282803028)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_file_name=>'stats_counter.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '242877696E646F77292E6F6E28226C6F6164222C2066756E6374696F6E2829207B0A202020202428272E73632D636F756E74696E6727292E656163682866756E6374696F6E2829207B0A2020202020202020766172202474686973203D20242874686973';
wwv_flow_imp.g_varchar2_table(2) := '292C0A202020202020202020202020636F756E74546F203D2024746869732E617474722827646174612D636F756E7427293B0A202020202020202024287B0A202020202020202020202020636F756E744E756D3A2024746869732E7465787428290A2020';
wwv_flow_imp.g_varchar2_table(3) := '2020202020207D292E616E696D617465287B0A20202020202020202020202020202020636F756E744E756D3A20636F756E74546F0A2020202020202020202020207D2C0A0A2020202020202020202020207B0A0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(4) := '6475726174696F6E3A20333030302C0A20202020202020202020202020202020656173696E673A20276C696E656172272C0A20202020202020202020202020202020737465703A2066756E6374696F6E2829207B0A202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(5) := '202020202024746869732E74657874284D6174682E666C6F6F7228746869732E636F756E744E756D29293B0A202020202020202020202020202020207D2C0A20202020202020202020202020202020636F6D706C6574653A2066756E6374696F6E282920';
wwv_flow_imp.g_varchar2_table(6) := '7B0A202020202020202020202020202020202020202024746869732E7465787428746869732E636F756E744E756D293B0A202020202020202020202020202020207D0A0A2020202020202020202020207D293B0A0A0A202020207D293B0A7D293B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(118270398319445807697)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_file_name=>'stats_counter.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '242877696E646F77292E6F6E28226C6F6164222C2866756E6374696F6E28297B2428222E73632D636F756E74696E6722292E65616368282866756E6374696F6E28297B76617220743D242874686973292C6E3D742E617474722822646174612D636F756E';
wwv_flow_imp.g_varchar2_table(2) := '7422293B24287B636F756E744E756D3A742E7465787428297D292E616E696D617465287B636F756E744E756D3A6E7D2C7B6475726174696F6E3A3365332C656173696E673A226C696E656172222C737465703A66756E6374696F6E28297B742E74657874';
wwv_flow_imp.g_varchar2_table(3) := '284D6174682E666C6F6F7228746869732E636F756E744E756D29297D2C636F6D706C6574653A66756E6374696F6E28297B742E7465787428746869732E636F756E744E756D297D7D297D29297D29293B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(118270428436918103191)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_file_name=>'stats_counter.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E73632D636F756E7465722D73746174737B646973706C61793A696E6C696E652D666C65783B6A7573746966792D636F6E74656E743A63656E7465723B6D617267696E3A6175746F3B70616464696E673A333570782030203020333570787D2E73632D63';
wwv_flow_imp.g_varchar2_table(2) := '6F6E7461696E65727B77696474683A313030253B666C65782D777261703A777261703B646973706C61793A666C65783B616C69676E2D6974656D733A63656E7465723B6A7573746966792D636F6E74656E743A666C65782D73746172747D2E73632D636F';
wwv_flow_imp.g_varchar2_table(3) := '6E7461696E65723E7370616E7B666C65783A313B70616464696E673A313070783B6D696E2D77696474683A32353070787D2E73632D73746174737B746578742D616C69676E3A63656E7465723B666F6E742D73697A653A333570783B666F6E742D776569';
wwv_flow_imp.g_varchar2_table(4) := '6768743A3730307D2E73632D7374617473202E66617B636F6C6F723A7465616C3B666F6E742D73697A653A363070787D2E73632D636F756E74696E677B6D617267696E2D746F703A323070787D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(118270439991125254023)
,p_plugin_id=>wwv_flow_imp.id(118270395788098799922)
,p_file_name=>'stats_counter.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
