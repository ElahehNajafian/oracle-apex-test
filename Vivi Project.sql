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
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>65331017725442134896
,p_default_application_id=>268
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ELAHEH'
);
end;
/
 
prompt APPLICATION 268 - Vivi Project
--
-- Application Export:
--   Application:     268
--   Name:            Vivi Project
--   Date and Time:   15:17 Tuesday July 29, 2025
--   Exported By:     ELAHEHNAJAFIAN@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     38
--       Items:                   80
--       Validations:              2
--       Processes:               39
--       Regions:                 88
--       Buttons:                 67
--       Dynamic Actions:         28
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  11
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.6
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_ELAHEH')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Vivi Project')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'VIVI-PROJECT')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6AEB805534D66FC3CE0CA9E1438C5E30A1BF1B2281DFF995C0D4D8F6A77857C8'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(69114773651921811875)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Vivi Project'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(69114780958400811890)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Vivi Project'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15642827408946
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(69116053355852817691)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(268)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(69114774493128811876)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(69114775608119811879)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_268_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(69116053355852817691)
,p_name=>'App 268 Push Notifications Credentials'
,p_static_id=>'App_268_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69114774493128811876)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15642827397249
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69114789527835811903)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69114791162467811906)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Team Members'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69114807345854812103)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115328748463812829)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115349651682813547)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115371675203814261)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Links'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115699406114814966)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'To Dos'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116002948596816976)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(69114780800132811890)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69114775608119811879)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15642827408544
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115999190232816973)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115999567181816973)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115999836241816974)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(69114778889972811886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116000389322816974)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(69115999836241816974)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(69114778889972811886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116000788061816974)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(69115999836241816974)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116001178504816974)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(69115999836241816974)
,p_required_patch=>wwv_flow_imp.id(69114778889972811886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116001404693816974)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116053096235817691)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(69116001404693816974)
,p_required_patch=>wwv_flow_imp.id(69116046329093817682)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116001908017816975)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(69116001404693816974)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116002312500816975)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(69116001404693816974)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69115813303896815720)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15642827378472
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115813763907815721)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Team Members'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115814102343815721)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115814569521815722)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115814991591815722)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115815331434815722)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Links'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69115815741993815722)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'To Dos'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69116004090433816977)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(69114778590601811886)
,p_version_scn=>15642827397263
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116004458379816977)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(69114778590601811886)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69116004791707816977)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(69114778932046811886)
,p_version_scn=>15642827397271
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116005110614816977)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(69114778932046811886)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69116005429049816978)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_version_scn=>15642827397276
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116005817018816978)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116006235182816978)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116006659000816978)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116007042676816978)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116007401698816979)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116007825845816979)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69116008140778816979)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_version_scn=>15642827397283
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116008543507816979)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116008980822816980)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69116009274907816980)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_version_scn=>15642827397287
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116009683697816980)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(69116050267262817687)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(69116046329093817682)
,p_version_scn=>15642827408519
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69116050620072817688)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(69116046080781817682)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000259494441545847ED564D6B1351143D6F66D24C93C8242988346917A9359648FDC065AB521105C185DD14BA10BAD08D8B823F40';
wwv_flow_imp.g_varchar2_table(2) := 'FF800B7121084217154AC185E042540C4AD18D22D688691A8BA295AA64266DD3649A99BC273336EAD4D0CC84A122CC5BCEBBEF9C73CFBBF7CE23FDE9470CFF70114F80E780E7C07FE1002D9741441184E3CC8941D7D71152550C76C650A314CFBF2E61D5';
wwv_flow_imp.g_varchar2_table(3) := 'EF07E7F79BFB8C523055051708349D30B6E600ABD5A01797E18B46C08A458CEDD98BB164123CF92948A714B7E6B298C8E74024099AAC40084B203CEF8E803A8A91F978A2072389DD50AA55A4BF2C62A83386705B9B19723B3F8FEB1F167E39D1941D802D';
wwv_flow_imp.g_varchar2_table(4) := '07EA407155C5F4895358AC94313D9FC3704F2FBA83410BCFD987F7B1248A76B8CD1847024E0643B87CE8302672591C8F77A12B60253700AFBC7C8107E5927B02745936C1846814C3521897FA0FE0955CC0C168474392ABB3AF716759C19FE7B652E3C881';
wwv_flow_imp.g_varchar2_table(5) := 'FD84C78D81C12DB3BB30F3146F1875CF010BD2DA1A26078E2011DAD19060A1B48AD1673320EDEDEE0B60D52A88CF87448D62F2D810408885843286734FD278CF11304D03D9E88C664A6C5D41AD5482310B044902D3758CEEDC858BA97D16EC6B99594C7D';
wwv_flow_imp.g_varchar2_table(6) := 'FF062208E6CC203E01FCA60E6924C69680CD07C595153C3E7DC6F2F9E8BDBBD024A959C27FEDB724402B14703ED96701BB39F70EBE8EC69DE15A17D481B4828C9154CA823BF536B37D02744541AFF8BBD28D576D5EAD408844B6E70A8C2AEFE338A46271';
wwv_flow_imp.g_varchar2_table(7) := '9330F3E933B2849905E874B5540306092F2BE8DEE8F78F950A68D479F68EFF054EB3B313DFB20376C0EDC478023C073C077E004EA90830995EB2410000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(69114776731090811882)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000011B149444154785EED9D797014D79DC7BFAFE71423098110878541DC984B806408368E35D288600CC8C1061CE338B8E264EDDAAD';
wwv_flow_imp.g_varchar2_table(2) := 'DADDDAC3D964ABD6DEDA94BDB5D9545C958A938DCBBB3E0887038680C1A09146B86C3097411247842D90CCA903091D23CDD5FD76DFC8620169A49ED73D33CDE87595FE91DEEF78DFF7D17BDDFD8E261097504083024483AD30150A40002420D0A4800048';
wwv_flow_imp.g_varchar2_table(3) := '937CC258002418D0A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC2D89000CDD8B52BCD949EEE90AC8A83FA49AAC5441D214A1D12887D28349902EA3313E20DCA';
wwv_flow_imp.g_varchar2_table(4) := 'C44B6CB45309485EB9BDDD5B5352D261B4FA2716204AC9DC8A0333084C8B41C96210BA08C03C0016A30965907C8200AA407004144729E423D505CB6A40084D547E710568C1277BB3E4907D0924653128182C0F02189EA8CA2749DC3600C7007A04443A22';
wwv_flow_imp.g_varchar2_table(5) := 'FB829F9D59BEBC255E758B1F40ACB7F1B8574B12F9474AF150BC2A38B4E2D0CF08C8EB9505451FC5AB578A394079C78F5B029DAD1B09C8DF8362FAD06AD084D5B606C07F58D232DE3D919FCF86BD985D310528B7AC2C9B4A741780BC98D540381E4881E3';
wwv_flow_imp.g_varchar2_table(6) := '265360C5C96FAF688A954C31036881DB3D4B36E10080EC58252FFCAA52A09650A9A4B2B0F08CAAD251168A0940B99ED2A514648FB8418EB2356257BC8D52A5A4BA70D941BD43E80E50B8E731E3182886E99DACF0A74101822EA2488BF4EE897405286FF7';
wwv_flow_imp.g_varchar2_table(7) := 'EE6181B4946384629686AA0AD3D82970C6D2D9BDE8C4AA555D7A85D015A0791EF7FF00F8815EC9093F3151E09D2AA76BA35E9E750368AEA76C2301FD6FBD12137E62A7000579BEDA59C4FED9355FBA00B4E4D0A114AFBFEB0A80119A33120E62AF00418B';
wwv_flow_imp.g_varchar2_table(8) := 'A5A3FB7E3D86325D00CAF594BD4841DF8C7DCD4504BD1420202F553A8B7EABD59F76802825F32ACACE0198A13519611F5705CE551514CDD63AE5A119A0791EF77200FBE25A75114C2F051EAB72BA3ED6E24C0F805802DFD19284B04D9802FBAB9C2ED601';
wwv_flow_imp.g_varchar2_table(9) := '705F9A00CAF178ECE954F68240E2CE4018264E010AC5611F967AF8A187BA7993D004D07C4F698102E2E10D2EEC12AF8004EA3CE52CAEE0CD441340B99ED29F5090D778830BBBC42B4040FFA9D259FC3A6F269A009AE771EF0450C21B5CD81942815D554E';
wwv_flow_imp.g_varchar2_table(10) := 'D713BC99F003D4F3F8CED69964F20617768650A0A1CAE91ACB9B093740B33C9EB166C8D778030B3BE328109031EACF2ED70D9E8CB801CA2D2F9F4D89729A27A8B0319602844A73789779700334BFC2FDA04271D45852886C78149008169D2A701DE3B1E5';
wwv_flow_imp.g_varchar2_table(11) := '06686EF981470991B81FFF78921536B1518052A58077B5223740620A23368D9910AF547255151696F1C4E60628B7BC740D25643B4F5061633805B8E7C4B8019AEB716F20C0FB8693422414B50284D2272B0B8B77446D08F01F349EAC2B1095AE2E288120';
wwv_flow_imp.g_varchar2_table(12) := '6830001AECD993472C16108B1592D5026958F2ED15A0C0B3D54ED7A6B80294EB713F4B81F778821AC9862A0AE4F60E28DE4EC85DDD0055064E8F48303986411AE680293D0D44BAF7E791873440A1B636C81D9DB08ECE02B15AA3623374F32642376E80CA';
wwv_flow_imp.g_varchar2_table(13) := '72D82E2B2D0DC5D3666066662672D2D331D1911AFE7DBDB71375EDED3877A319EE2FCFA3A9A3E794156232C19C9909734646547115BF1FC1A66698D3D3604A4F8FCA361685873440C1E666845A7A0EA3B08C1903F3F0C10FFB50BABB11B8DE101EA6D8B5';
wwv_flow_imp.g_varchar2_table(14) := '7EC142AC9C3C057332D42DE9AEBED98ADDB55FE1835327BF19E2ACB08E1B0BC93EF8F145A19B6D08363684EDCC2347C2326A542C9888CAE790068829C57AA160635378F831A5A6C23A6E1C40FA7F3E90BD5E04AE5E05A1148FCF9E8B977273715F0ADF7D';
wwv_flow_imp.g_varchar2_table(15) := 'CD95EE2EFCE6D429EC3B7B1A9448B066DF0753847B24365406AF5F87DCD909100996D159AA608F8A04CEC2431E20A61B0D04E0BF760DD4EF07315B601B9FDD674893DBDB11B87E1D569309BF7A7C1596648DE694FC4EB34F1B1BF0777BF72020CB61784D';
wwv_flow_imp.g_varchar2_table(16) := '696977146037E3FE4B97414341109B0DB671E3A21E6E75493482130150AF309422D0D808B9ADAD4F43867B9E2B5730CC66C7EF56AE523D5CA96DB8AAD616BCF4D11E74F97DB06667C3E470DC32953B3A10B8762D7CAF6419AD0FB46AF352534E0074974A';
wwv_flow_imp.g_varchar2_table(17) := 'AC37BAFD869AF500BEFAAF0145C6E6B5EB31337DF0FB2435C2DF5DE66CDB4D6CF8E3364032C13E7142F8F1FF5EB8044003B512A5F0D5D78787B87F5FBE02CBB2C7C7B44D77D6D7E155F781F050659F3021E2BD584C9388D2B9006800C182376E841FD5D7';
wwv_flow_imp.g_varchar2_table(18) := 'CE5F889FE6E50F2AAD5F9651D3DE86332D2D38DDD880699999D8387DE6A076B717F8D7A347F0617525CC99A360C91C19956D220A0B8022DD1C2A0A7CB517906EB3E1C0D3CFC066320DD83E07AE5EC12BEE52747FF378CF0AAF98351B3F5FF27054EDDA2D';
wwv_flow_imp.g_varchar2_table(19) := 'CBF8CE963FA0E3FF7ABD9429930DDF0B098022346F6FEFF3970F3F8217663E302004AF7F71025B4F9E0837F6CA5973B0383B1BF95959186B4F890A9EDEC26F9E3D8DFF3A7CE89EE8850440119AD877E1026C4442E9331B906A8E7C43FB23F7011CAFAF43';
wwv_flow_imp.g_varchar2_table(20) := 'CEA851F8455131A6A4DEF918CE4350473088659B37C14F15D8274FE67111371B01503F52B3E9027F7D3D9CD367E0978F3C1AB131B6D75DC4BF9595E2DB53A7E18D479DBA36DADF7E52818A2FCFC3367122249B4D57DF7A3A1300F5A3269BDE60D31C3F2B';
wwv_flow_imp.g_varchar2_table(21) := '74E1A949FDF7002D013F566ED91CB6DEBDFE7BC8D4B991B75DACC56BE565B06465C13C42DD34899E60A8F52500EA4729F6E28EBDC0DBBFE1398C8E3047B5E9AB2FF18B831EFCB4D085B5112053DB08FD95FBDAEB45C9964D30A5A587E7CA8C7A0980FA69';
wwv_flow_imp.g_varchar2_table(22) := '19FFA54BB086641C7E2EF2696E3F3B7C087BCF9EC6D1E75F802546CB32F2DEFE3D909202DBF8D8BE7FD202A700A81FF57C17EB909562C7FEB54F47D4B6E4C3ED08C9323E7A6A9D16FD07B42DDAB209ADC120EC3939318BA1D5F19001A867ED4FDF2F1E11';
wwv_flow_imp.g_varchar2_table(23) := '42C2734CB74F1D747FF915A68DCEC2B695FDEFBCF6864258FACEDB7878F254FCDA59A8B50D22DA7F77D70ED4B5B42265EA945B65D85BF160531328EDFB911D3611AB66498A9E090F1980D8928DD0CDD6BEDA1109B6FBC7DFB11E8701949339121F96ACE9';
wwv_flow_imp.g_varchar2_table(24) := '57EB8022A364FB1FF17C7E3ED64DFAFFC6D5B36198AF2776EE407D4B0B52A64DBDE55AF1F9C2B3F3FDAD7E34678C082FF588E73564008A46543684A5994C38B8E1FBD198E95E76E9FBEFA24B51609F2486B03BC435FA9A68FFD797A0F8BA637A833C186D';
wwv_flow_imp.g_varchar2_table(25) := '325590FFF65B90D84DF4FDF70F563C617F173D507F8FF157AF8657FF7DBCE1398C51B1D43416AD77B5BB0B8FFFE1FDF002B3F02A49835E02A07E1A2678A305A11BCDF8E58A95708EBB2F214DC726675FDEF75178DD335BFF6CD44B00D44FCBF44E65AC98';
wwv_flow_imp.g_varchar2_table(26) := '35073F5F92980F24BE7CE8531C387736FC081FED8E9178C226008AA076EF64EA27CF3E17B31785911A9AAD2B2AD8F41EFC94C23E79523C79883A9600288264BD8FFD3F711661FDE4D83DAAF717BE779A84CD81B1B930235F02A008AD135E0B5D5787749B';
wwv_flow_imp.g_varchar2_table(27) := '1D7BD63D8DB438AD51664B39966FDD8CAE801FF6499340CC6623F30301D000CDD3BBF1F09985F9F887050BE3D290AF7D711CDB4E7E11DEB56AC934FE119202A081B0608BEA2F5E049165BCB9FA092C1A15DBE1E4505323FEEA4F3B01B339DCFB44DAE018';
wwv_flow_imp.g_varchar2_table(28) := '1792550611000D2254CFD4C125A4982D78F7BB6B30352D36FBD16BDADBB171E70EF842A13E532B2ADB3221C50440B7C9CE265C432DAD7DF6AAB3978A6C4B333B406173C91ADD178F35F97D58BF633B5ABBBC7D3616328003D7AEC33C7244DC274AD51029';
wwv_flow_imp.g_varchar2_table(29) := '00625B9B4321041B1AC076A0B28BADBFB9FB2C9FDE830DA68D1983771E5B8994417669A8119F956133FB3FD8BB07B54D8DFD1EF02077752170F972D81DDBB16A193B367CB28751AE210F5078EB70436378E7A964B3877B9F482FEED8328A506B2BF2264C';
wwv_flow_imp.g_varchar2_table(30) := 'C45BC5FA7C6468E3FE7DA8BC7C69C0D336C247BA5C6F80E2F78577AE5AC78CEEB3873E51400D69806E3FDE45ED463EFFE5CB602791BDF4D0C3F8F103B335B5DB6FCE54E3F79F1F0EF7766A561DF66E3562418DF29436A401628BE743EDEDE1C94AB53B1F';
wwv_flow_imp.g_varchar2_table(31) := 'D881526CC7061BF6CABFBF1123A23C98AA97B866BF0FC5EFBFDB731A08DB0BAF725862BD51E02A3B6C61B82116DB0F698078BB8FDE9EE09F8B8AF1640EDF54C3D60BB578DD53764F6C1E1CF04D873823317A8C7A9FCA56CF9D8757177D2B7A07007A17E5';
wwv_flow_imp.g_varchar2_table(32) := 'DF7D9C0B97B3041A891E88437C367CB1C9D6C59326E1B785C51C1E801FB9F7E3787D3DEC53A6A81EBEB802C5D84800C42970F7F9F398332E1BEFAD789CCBC3B37BF7E0CCB5AB48993E9DCBDE28460220CE961000F5082700D200D0E8F4743C35671E9787';
wwv_flow_imp.g_varchar2_table(33) := '0FAAABD0D4D12E7A201EF58CBEA85E4D9D580FA4C72586300E159305209BD5862963C6702800D43634C01FF08B1E8847BD640128C3918A9579793C1260F7891368F3760A8078D413004100A4E56B3D02200110EB78B8BF17962C000D77A46215E710F6A7';
wwv_flow_imp.g_varchar2_table(34) := '13C7D1EEF58A216CA80E61BEDA5AD8CC662C99C6F722F0504D0D02F7C0198883B5AF780F34984211FEEEAFFFBA677D8E864BB2A7C036C1B8FBDED5544D00A446A57ECAF42E2E1B353C03EC85623457637B1B9ADBDA0CF3C9A66872BFBBAC0088533D76D0';
wwv_flow_imp.g_varchar2_table(35) := '5378DF98C381D52A4EB1BF3D4CEFFD4F78DF579CF69B715673503301D0A012452EC016DAB3A51D8FCC9E83892AF770D53537E1D3B3677BBE4D765F620E6ED050E53EA602200D6AF2F442B77A1F831F9AA0561601905AA522948BA6174AB6DE87492200D2';
wwv_flow_imp.g_varchar2_table(36) := '0850EF5130769B0D05B3E760546ACFC776EFBE9A3B3B5171FA347C01BFE14F9F8F46120150346A4528DBFB394C35AEAC63C71AE26BCB6A7255534600A446251565D8A64485FD047ABEE67CF72559AD901C8E3B3E67A9C2ADE18B2406A0F2D2359490ED86';
wwv_flow_imp.g_varchar2_table(37) := '57472438A80284D2272B0B8B770C5AB09F02DC7361F33CEEE500F6F10415368653E0B12AA7EB639EACB8019A5B7EE05142A40A9EA0C2C6580A50AA1454172E3BC893153740F32BDC0F2A144779820A1B632920112C3A55E03AC693153740B9E5E5B32951';
wwv_flow_imp.g_varchar2_table(38) := '4EF3041536C6528050694E6561E1199EACB8019AEB764F2626D4F2041536C65280CA9852ED725DE0C98A1BA0591ECF5833E46B3C41858DB11408C134EEACD3799D272B6E80F28E1FB7043B6EB603B0F30416368651C06749CB483F919F1FE4C9881B2016';
wwv_flow_imp.g_varchar2_table(39) := '6C9EA7AC02A091BF68CB9391B089B302E46095B3A88037A846804A5F01C8BFF0061776465080BE5AE52C7E8537134D00CDF7941628201EDEE0C22EF10A48A0CE53CE62EEF7799A00CAF178ECE990D92704C57D50E259E0C9C0D70ED3883AA7937B61B826';
wwv_flow_imp.g_varchar2_table(40) := '807AEE83DC5B00ACE7C95ED8245C81AD554E57E4AF12AB484F07804ABF0590C32A6289228653802EA972167FAE252DCD00F5F442A59F0364B19644846DBC15A047AA9CC57C67FBDD96AA4E00B95937B839DE1288789A14F85E95D3C56E3F345DBA0054E0';
wwv_flow_imp.g_varchar2_table(41) := 'F1985B205F04305E5336C2385E0A5C1909534E85D319D21A501780581273CB4B4B08213BB52624ECE3A00021ABAB0A8A76EB11493780BE7922FB1580BFD62331E123660ABC51E574FD8D5EDE750588CD8F053A6E7E468007F54A50F8D14F010A5458D332';
wwv_flow_imp.g_varchar2_table(42) := '96F1CE7BF59789AE00B100F33D9E1C05F2490019FA555D78D24181064546EE6997AB41075FB75CE80E10F39C7BB0740155085BA49DA367B2C217B702F532954ACE141656727B886018138058AC996E77A6D504F698E8D23B69E12F0A0508CA0321ACFBB3';
wwv_flow_imp.g_varchar2_table(43) := 'CB75230A2BD545630610CB60EDB66DA69AAC11BF06C88BAA331205F554E03F6734B5BCFCC1BA75B29E4E6FF71553807A03E57ACA5EA484BE010A6BAC2A22FCDEA14037019EAF74BAB6C65A97B80014BE2F2A2BCB06A13FA4042F00B8B78FF48A75ABF0FB';
wwv_flow_imp.g_varchar2_table(44) := 'BF0C90B78882B72A8B8AAEF0BB516F1937807A5362C3DAF9D199AB29A57F01609996833ED55733A94BB2E169AF44E9EFA635B77E1CCBE1AA3F15E30ED0ED49E495960E0F48522E91E80200EC67218007D8D72093BAC9F92BC7A61ECE81E024283949A97C';
wwv_flow_imp.g_varchar2_table(45) := '32601DF645CDD2A51DFC2EB5592614A048A9CFD8B52BCD949EEE90AC8A83FA49AAC5441D214A1D12C89058B8A680FACC84788332F1121BED540292576E6FF7D69494240C94486D654880B4FD4F08EB782A20008AA7DA49184B0094848D1ACF2A0980E2A9';
wwv_flow_imp.g_varchar2_table(46) := '7612C612002561A3C6B34A02A078AA9D84B1044049D8A8F1AC9200289E6A27612C015012366A3CAB24008AA7DA49184B0094848D1ACF2A0980E2A97612C612002561A3C6B34A02A078AA9D84B1FE17EF4440FAFEB4EA9F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(69114777017622811883)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000142E49444154785EED5D0B7455D599FEEFBDB9F7E64112121242422009041C11B08C16D4294FE5ADA0958AA058EA2C3BEDB4F358';
wwv_flow_imp.g_varchar2_table(2) := 'AEE9746C67DAE95A5D5D7DD999BE5CCE8C9D8240516B95414A228828B482A215259547303CF320212109E471DFB3F6BE379793786FEE39FBEEFBC8D9DF5E8BB53477EFFFECFFFBFFEFECC7D9FBFF2D33F7BF16201420A0280216104051CB436D8E000800';
wwv_flow_imp.g_varchar2_table(3) := '47501A01104069F3437910003EA034022080D2E687F220007C4069044000A5CD0FE54100F880D20880004A9B1FCA8300F001A511000194363F940701E0034A230002286D7E280F02C0079446000450DAFC501E04800F288D0008A0B4F9A13C08001F501A';
wwv_flow_imp.g_varchar2_table(4) := '01104069F3437910003EA034022080D2E687F220007C4069044000A5CD0FE54100F880D20880004A9B1FCA8300F001A511000194363F940701E0034A230002286D7E280F02C0079446000450DAFC501E04800F288D0008A0B4F9A13C08001F501A011040';
wwv_flow_imp.g_varchar2_table(5) := '69F3437910003EA034022080D2E687F220007C4069044000A5CD0FE54100F880D20880004A9B1FCA8300F001A511000194363F940701E0034A230002286D7E280F02C0079446000450DAFC501E0448820F047C3EF2F7F551C0EBA580DB4301AF87021E2F';
wwv_flow_imp.g_varchar2_table(6) := 'F93D1EFE74ABDD4E167B065932EC6471D8C9929141D6AC2CB2D86C49E89DDA8F00011265FF40807C57AF92B7FB2AF9FB7A890201634FB258C8969D4DB6DC5CFE8F2C1663ED515B170220802E98F457F25DBBC61D9FFD93593811F2F2C896932353ACF2B2';
wwv_flow_imp.g_varchar2_table(7) := 'CC4F804080DCADAD64B15A29A3B03061D30A36C5F1B4B691DFD51FD1A9A6978EA729C545549E974F137273697C4E0E55E48CE275CFF55CA38B3D3D74F1EA55BAD0D549A72FB7535D73634439566726D9C716F32952220A9BAE793B3A28E0F79363EC58D3';
wwv_flow_imp.g_varchar2_table(8) := '8F3CA62780F7CA15F2B4B5715F61736BFBB8717C6A21ABB0793D931FE98D7F5369192D9D3295164F9840E3328D396C735F1FEDBD709E5E3D5D4F1F35377DA2BB6C44B01717739D64155F6F2F795A5AF85A8515263FA3A04096F8B494637A02F8BABBC9DD';
wwv_flow_imp.g_varchar2_table(9) := 'D23208FC8CD105FC2D1A4F616F486F7B3B3182694B96DD415FF8F46CBAA7AACAB0D347EB4F4B7F1FED3CD3409B8E1CA13E8F7BB02E05059431660C1FE1E2296CF4F2760ED6C5C15E167979F1884DFBB6A62700B3009B97BB5B2E11F97D6183B0A984A3AC';
wwv_flow_imp.g_varchar2_table(10) := '942C76BB6123F95D2E723736F1DD9C8162B558E8FE9B67D19766CCA04287D3B04C3D0D3ADC2EFAE5871FD0CB1F1C25ED929AED1E39CBC793C5E1D02366509D80DB4DAEE6660AB85CD7FF6EB591635C09D94605A768662E4A108019900DEBEEE666BE1D19';
wwv_flow_imp.g_varchar2_table(11) := '2E166B70981F9DAFDBC6FEDE5E7235361105FCE1369FAEACA47F99733B4D1A95AB5B4E3C15EBAF76D38FDE394C47CE9E1DE4B4CEB252B21A98DE793B3BC9D37679902E6C6DE1282D953AB58A47D744B755860003406AD704037F633B2B7666F418D388A1';
wwv_flow_imp.g_varchar2_table(12) := 'D329B631F9F8FC05F470F5D444DB29A2FC5F9F3A413F3B7860D06FCC79F9B6E930854DDFDC4DCDE4EFED19544B8539FF505894230003804F61D8B0EFBE3E9F66735D36E78D56861227D3EEA02797AFA03B8AC7A6C4F9071EBABFA5999E78B5965C9AE958';
wwv_flow_imp.g_varchar2_table(13) := '2C477637B790EF6AF7F581D0E1E06F7DAB333153B7940214E3E14A1280631208F0DD1B360D6065B885B1AFA787DC8DD7B725C7E6E5D153CB57D2E4244D796239D0C9EE2EFA6ACD6EBA7CEDFAB707C7F8F151BF19B04D01369A05F51ECDA781AA7E685397';
wwv_flow_imp.g_varchar2_table(14) := '0021AF625B7FEC7842B47540C0E3A1FE73E7C30BE8A925E3E8A9C54B694C9ABD2D2FBBFAE92B7BF7D0A94BA11D2FAB8D322B26465CE4B3BD7E46008BD329754B381651D3F177E50930FC643940FDE7CE85A74AF9D9D9F4E267D7509133331D6D496DAE7E';
wwv_flow_imp.g_varchar2_table(15) := '7AE0A517A9B3B797F78F3978E6C489CABEDDF5180904180625775313DF4265856D733E73EFFD34ABB0500FAE29ABF3A78E767A6CC74BE40F9D3DB2E5E691A334FADA26651D4D93078300510C3174DEFFF8BCF9B461CA0D6962B6E1BBB1E9D409FAA96677';
wwv_flow_imp.g_varchar2_table(16) := 'C8515EAEFC54271A6220401464F8D427F471E8CEA937D08FE7CE8FDBF97BBD5EDADFDC441FB45EA2868E0E6AB87C99261616D28F162CA462C9D3AA7F7C733FBD79BA3E387A65669173E284B8FB6F4601204004ABF22FC74DC1F337EC6843CDBAF5946F37';
wwv_flow_imp.g_varchar2_table(17) := 'FE957540F4D12B1DB4F5CF75B4EFD4C988C7A2BFB9E82E5A533549AA7FB1AFC62BB6FF26BC3D8A512032BC2040045CB46FFF2FDE7E077D79DA7421E7646778FEE34FEFD19EE31F456D5F9A9F4F3F5FBA8226C7F87825D2815FD41DA35FBD7D28380A3833';
wwv_flow_imp.g_varchar2_table(18) := 'C9593151448CA9DB800043CCAB7DFBE7656651CD83EB28DB66FCC4E51F5A2FD13FD7D60C3EBC66B1D0DDD3A6D33DD5D554969D43456C972681B7BEBA3D1E5AB67D5BB80FC37D1B30B5970FA31C0830041CEDDBFF1FE6CEA38D53FFC2B06F6CA93F493F39';
wwv_flow_imp.g_varchar2_table(19) := 'F0E6A0766B67DD428FDD343DE9DF0FFEE7C4717AEA8F07B1168862451040030CFFE875E60CFF4B7E5636BDB1FE61C3CEFFDB330DF4BDD75F0BB79B5838869EBC6B3155E7A6E658B1CBE7A3A52F6CA7AED0B781CCAA2AA113B0868118210D40008DA1F8E9';
wwv_flow_imp.g_varchar2_table(20) := 'C8D656FE97D53366D2BFCFBECD90194F7677D3C32FFD96BCBEE0B16BF6D5F8E925CBA840E098B2A107C7A8FCADB70FD12B75C7782DFBD81243A75F65F6231D6581001AABB0F33E6CFF9F951F2C5B414BC697EBB619DBE25CB3E3256AEE0A9E2DAA2C2AA2';
wwv_flow_imp.g_varchar2_table(21) := '6D77AF125A3FE87EA8CE8A358D17E81BB535BC363BE3EF282BD3D9D2FCD54080011B0702D477FA34DFA664C79C0F7EFE51CA3170DDF0271F1CA52DEFBEC3A5393232E8F9350F5065E8CE6FAADDE88ADB4D8BB66C0A76C362A5ACEAC9381E11320A081002';
wwv_flow_imp.g_varchar2_table(22) := '825F74B97891FF1FBBC0BE65C54ADD7ECBE6D98BB66FA3DED085F8BFBDE333F4D88DD374B74F46C5F5BF7F858EB734F34739CBCB0D5D9C4946FF52F50C1020843C3F1A1DBADF6B74EF7F4FE345FA7AED6E2E6994338BF6AE5B9FD0ED4D1167F979DD87F4';
wwv_flow_imp.g_varchar2_table(23) := 'BF6F1FE64D59740C7B51918818D3B501014226755D6C0CDF90FAE1F295B4B86CBC6E637FE79DC3B4E3D887BCBEE8D6A9EE870956AC6DBC484F84488A75C07510418001029CBF40FEFEE07DE1FF5A7D1FCD2ED21F35E2CEE7B6514768F15CF3D00669D120';
wwv_flow_imp.g_varchar2_table(24) := '047D3D62B3B7DA5AE92B3B77F0DFD8BD5FE7049C0D625880002177E93F7B367CEEFFB9CFADA51BF2F45D94BFE6F5D0DCCDBFE652D835C9438F6C94E9B7D264D57576D286DFBDC0E5F17B021515D2648F644120C000011A1AC201A176AFDF40A53A23AFB1';
wwv_flow_imp.g_varchar2_table(25) := 'F33ECBB76DE152D8BEFFF377AF4A4B7FB8D0DB43ABB66F0B1220C34E9993AAD2B29FC9EED4882700BFACDEDE3128E64F4410AD36B28F298C1AE9ACAF9E6D8106439DFCC1C016E8A9ABDDB4F685E778BB9BCB27D0A6A5CB936D435DCFEBF2B869C1B3A1AD';
wwv_flow_imp.g_varchar2_table(26) := '50AB2DB8151AA1C8C25357A7D2A0D2882740FFC71F13BBE3AAA7B070E39993231BBEEFD4A9B088F7FFFA8B7AC4F13AC7BBBA68FD8BCFF3FF9E5B5D4D3F9BBF4877DB64579CF5ABFF0E3F326B6AE4502EB2F04CB66EA2CF1BF10460471706223BC4028147';
wwv_flow_imp.g_varchar2_table(27) := '4060015F23947ECD1468DF86CF1B8AEEB676D74E6AEEEAA2AFCF9B4F2B27A4E791E376978BEEDABA996BCEE289664E8A7CFF40169EB16C912EBF8F7802C802527B0AF4C507D625E47CBEACBE8AC8D14ED57037E03A822040080BED7700A3DBA0220E99EC';
wwv_flow_imp.g_varchar2_table(28) := '3687DBDAE8CB3B5FE68FB566E7F058A228D8060DFB80365ADAF797ADA0A5060EC28D0447FAFD85F3F4AF7B6A79576345C11B09FAC8EA2346801092DAA3105F5BB090D64F9E220BE3B490B3F9D449FACF83C14B3A380A8129D0279C521BFBF3D139B7D1DF';
wwv_flow_imp.g_varchar2_table(29) := '4D9F99168E2BAB134F1E7D9FB6BE77848B631B016C43000553A0B00F684F83CEA9ACA2A7EF5C6C2AFF78744F2DBD7FE13CD7891D8348548AA591061AA640031663F7013E6EE01FD4D87D80FD8F6C8C2B144A3A3902DB025DBC757330A9C6301FC1D2A9CF';
wwv_flow_imp.g_varchar2_table(30) := 'C9EA0B08A0419A854C1FC8F5F5EDBB96D0BD1595C9B243429FA3BDA78C05F060A841000D1ECCF9190958F9AB49D5F48B85E9FB55D70863BEF4FA5E7A3B74D95F4F020D23B2477A5D104063419639851D0560D7226D562B1DD8B091B20D5C8B4C476760B1';
wwv_flow_imp.g_varchar2_table(31) := '81166DDD4C3EBF9F5F83CCAAAEC675488DA14080215ECBAE45B205312BDF5DB22C6D8F36E825DBCEF3E7E8DB7B5FE5D5F101EC93A881004330D16E87B2C80EBF5B751F0F8D3E128B2FE0A7353B77D0D9CB9779F7B1FD0902C4F4633E0D6A38133E5EFD4F';
wwv_flow_imp.g_varchar2_table(32) := 'F317D243D523F3A398F6E3173B09EB6441B1E2CC271C13C01156012340048379BBBAC873E912FF85DDF2DAB5765DD2431AC6EB47ADFDFDB4FA85E7A83F9458DB5E524219F9FA6EB9C5FBEC91D41E0488622D97E68EF0921BA7D10FEEF8CC48B22B7D75FF';
wwv_flow_imp.g_varchar2_table(33) := 'EBF4C786D3C1B93F224347B51D0810051A964AD575EE5CF8D767EEFD2CDD32666484123978A985FE7ED7CE70DF9D15154AA640D5F3C602018641497B39644C4E0E3DBBFA3E2ACBCAD6836BCAEAB0BBBF8FFCDFCBE14479C35D024A5927D3E8C120C030C6';
wwv_flow_imp.g_varchar2_table(34) := '18BA202ECD1F4DCFDEB32A6DB344B254A90FEDDC41ADA11CC058F8C6669AF204F0F7F591DFE58E1A31991F926B6C0A5F98AF2C2AA62D2BEFA65119F6D8E826B106BBF4BE71F7AEF096278B01CA2EBD443BF4E6EDEC226BA693AC99E999F23559D0A94B80';
wwv_flow_imp.g_varchar2_table(35) := 'A199E20B0A8219D32394A11923A79795D3334B96923381D95D8C38008B4DBAB176379D08C5FE646D87CB09A6BDFB804CF1FB5FE38704552A6C81EB6E6AA640688B90E91E2B5CA0F69C10AB3FA7AA8A9E5E941E47A6FF66DF5E7AE76C30B10777FED252B2';
wwv_flow_imp.g_varchar2_table(36) := '0D93734C1B069ED5B7D81DE4282B5572A1ACDC08E0EDE8204FE8CBE880C3D87272C85E5A1AF32391F6FB006BBB60CA547A72EEFC947D29F60502F4F88137E840281D2A77FE71E3F895C7E10A0B23E3696909E74218A8CB46C08C820295DE85EA84460C78';
wwv_flow_imp.g_varchar2_table(37) := 'BDE46E69099FF3091BDDE0ED28ED51092663C5B4E9F4DDDB6E274B928F4B040201FADA5B0769DF89136187357AD4419B11674088353B9B9388854E51A1283102F0397C73CBA0E8712C3EA6B3AC4C285F161B41D84832509E5874273D501539E056A29C68';
wwv_flow_imp.g_varchar2_table(38) := 'DBE97AFAF19BFBC3E245EFF906DC6E72353585E3A27281561B394AC7111B19CD5E4C4F006DDAD30163B2613EDA8257AFC1D968E20B6D37663B3369F7DA07937683ACCBEDA615CF6FA75EB78B77D7969F4F8E9212BD5D8F58CFD3DA46DECE2B837E5321AD';
wwv_flow_imp.g_varchar2_table(39) := 'AAE909E0696F276F7B3B372C1BD6D90251CA7DD84080FACF9CA580D7C365DF77F3A7E85BB7CE8ECB09F536FEB7C38768D79F8349EF78A0DBAA4A2967FCD9962FBB1034106A32634C118FA76AE6627A02B0CB2DEE50E6479615857D1C92557CCC61426995';
wwv_flow_imp.g_varchar2_table(40) := '44F28A89F483EDF72F7C7653F07E6F02D21DF105725B1B27948385914CF2DA46049378DA989F00F1A0A3A3AD36A4A2D1CC323AC47FA24ACDC50BF48D5783191F71C84D04C1C16D40803831D44EB156CD9849DF31985BD8E8E3BF79E82DDAFD511D6FA6C2';
wwv_flow_imp.g_varchar2_table(41) := '14C5283E46EB830046111B525FFB95F8C671A5F49B95F7C42971F8E6F7EF7C991AD81425C6D7DE8476C244C24180388DC9B611597A25564AF2F2A8F6730FC62971F8E6DA7C6499959564497116FA842A9B04E12040BC20B3805AF5F5612946926B883C5A';
wwv_flow_imp.g_varchar2_table(42) := '4F920B11B9AAB6010124585E34BB8CC8A3410011D4A2B7010124E009024800314522400009C0830012404C9108104002F020800410532402049000BC960012C4E916112DD3A36E01A8A8CE71E844DA1A044824BA89958D114002BE208004105324020490';
wwv_flow_imp.g_varchar2_table(43) := '00BC96000FCF9B2F416274115B0F04F37CB1822950FC508300F16348208004105324020490003C082001C41489000124000F024800314522400009C0830012404C9108104002F0208004105324020490003C082001C4148900012400DF577F3A1C3B74FD';
wwv_flow_imp.g_varchar2_table(44) := 'DC79090B94C502616D3F7820D8638B95B2A6544BE8BDDA22400009F6E7D12142611657CF9E43B9090A38DBD5DB4BAFBC7B24E8FF7647301A044A5C08800071C1176CACCD2C29419C2E11C8F8A80BA6989540809810C5AEA00D9215BBB69C1A328261C9E9';
wwv_flow_imp.g_varchar2_table(45) := 'C9C896020248B0DFD0A0B91244C614A127086E4C21A880D3A0527C80DD0B3ECD32CCFBB9B8A5B3FE928A87094F2EF24C96F565CFD1F7834DD902B87AB2E9835689E064B40D4600A38845A9AF9D06951715D38269D324490E8A79E3F871BAD8D6CAFF1BD3';
wwv_flow_imp.g_varchar2_table(46) := '1F79D0820092B0D4669564611297DF722B154A8AAEDCD1D343BBDF7B37DC53647D9464343698CE5430438C3CF8064B723735118B46CD4AD998625A74939C51605F5D1D35770403FCC6CA649328DDCC2A17049068596D902C2676D92DB752519CA3C0E59E';
wwv_flow_imp.g_varchar2_table(47) := '1EAAD5BCFD110C4BA2C13002C8059349D3E6DF2A2928A0C53366C6F590D7EA8E514B281907DEFE714119B1314600C9980ECD301FCF283068E787854247C677C9D6C21A403AA0434781D1A37269C5AC5986CF07797D3EAA397A94BA7A826B0ABCFD13622A';
wwv_flow_imp.g_varchar2_table(48) := '2C821301EBD051A024BF80A6574CA0D2D1FA323036775EA163E7CE536B5727767E1261208D4C4C811204B0CCE311D8F74F9091B0084E1CB001BF9F2F88FD7D7D713D84E53363C9EA2C566B5C72D0383202180112EC19EC9C90EFEA350AB85DC47215EB29';
wwv_flow_imp.g_varchar2_table(49) := '2C999FC5E1245BEE28CAC8CFD7D3047504110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED04210';
wwv_flow_imp.g_varchar2_table(50) := '011040103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED0421001';
wwv_flow_imp.g_varchar2_table(51) := '1040103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED042100110';
wwv_flow_imp.g_varchar2_table(52) := '40103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED04210011040103834330702208039EC082D04110001048143337320000298C38ED04210011040';
wwv_flow_imp.g_varchar2_table(53) := '103834330702208039EC082D0411F87F589D2D391AB35C770000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(69114777334187811884)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D797414D79DEFBFB77A910448800001328B588CCD268910DB606C4C230930365E621B63275EE2179F2CB3';
wwv_flow_imp.g_varchar2_table(2) := 'C449FEB03399999089DFC499F19B492679CFF1641E9E4CBC624F30C1C680241A30E06520482D561B036215621392D0D24BDD995B2D352DA1A55BAABAB5F4EF9EC38173A8FA2D9FDFAD6F57DDBA752F03352240045296004BD9CC29712240044002409D80';
wwv_flow_imp.g_varchar2_table(3) := '08A430011280142E3EA54E044800A80F10811426400290C2C5A7D489000900F5012290C204480052B8F8943A112001A03E400452980009400A179F5227022400D40788400A13200148E1E253EA44800480FA00114861022400295C7C4A9D089000501F20';
wwv_flow_imp.g_varchar2_table(4) := '02294C800420858B4FA913011200EA03442085099000A470F12975224002407D8008A430011280142E3EA54E044800A80F10811426400290C2C5A7D489000900F5012290C204480052B8F8943A112001A03E40045298000940A7E24F5EBF3E6D50464646';
wwv_flow_imp.g_varchar2_table(5) := '10485714C5A3006EF18785429E90F837636ECE1871B3E045C338E72AE7610F10E61E4F4805C2DA1F550D798196C6E6E6E6C34B97B65A3074D3424AC98E3CA3BC7C928BA905AAC20A18470180F160C80147AE699520C7F208309C06472D806ACE50A9A8BC';
wwv_flow_imp.g_varchar2_table(6) := '525559455571F111794158C3534A0840A17F532167CA320E148363368081D6C04F51588CC01580EDE250CB54EE5AB76FE1C24A8BC5A77B388E148069AB577B5DC3871733F0BBC1F8DD00C6EA4E8E0CA60281A300FE08AEAE0B9FAFFB70FFF2E541A725ED';
wwv_flow_imp.g_varchar2_table(7) := '280198EEF74F76F1C85360781CC0754E2B16E5632A815360F85D84BB5ED9E7F31D3635121D9DDB5E00A6F9FD833C3CBC9C33F67500B7E9C8864C1181EE087CC8C15645A0BCB3DFE76BB433265B0B40C196F2FB39E73F0530DDCE45A0D86D4B6037E3FC47';
wwv_flow_imp.g_varchar2_table(8) := '950B4B36DA35035B0A40A1BF74810AF6330073EC0A9EE27614818F15F01F56F84AB6D82D2B5B0980B8DD7723F25B002BEC069AE2753E010EBC1A81EBDB767A2CB08D00CC282FBF5571F1DF8363A2F3BB12656863025F70AE3C5CB570E16E3BE4600B01C8';
wwv_flow_imp.g_varchar2_table(9) := 'DF5CFA3814F65B7078ED0095624C71020C41A8FCE9C0C292FFB03A096B0B00E72C7F6BF9F3E0F82BAB83A4F8884067020CECF94A5FD1DF58998C6505404CE671E70C7B039C7FC5CA00293622D0230186FF08D75E7CDAAA93882C29000BFC7EF74544D600';
wwv_flow_imp.g_varchar2_table(10) := '10B3F8A811017B1360FC8FD9DCFDC0169F2F6CB5442C2900F99B4B5F07638F580D16C54304FA4A40BC21A8F2153FD6D7F38D3ACF720250E02F7B8103CF1A9530D92502661160C0CF2B7DC5CF99E5BF2BBF9612807C7FF93300FF672B01A2588880BE04D8';
wwv_flow_imp.g_varchar2_table(11) := 'F702BEA25FE86BB3EFD62C2300859B37CD53A16C0383D2F774E84C226079021106BEA0D257B2DD0A915A4200B411FF11D9FB014CB202148A8108184980811F0E9DBB34DD0A6F062C2100F4DC6F647723DB56246095F100D30520DFBF7106E0AA00E0B262';
wwv_flow_imp.g_varchar2_table(12) := 'A12826226010810857F8ACAA3B4AAA0CB29F90590B0840D9BB00EE4D285A3A8808388BC0DA80AFF83E3353325500B40F7C14BEC34C00E49B0898498081DF6EE680A0A90250B0A56C07E7B8D5CC02906F22602E01B635E02B5A60560CA609C04C7FD97D0C';
wwv_flow_imp.g_varchar2_table(13) := '10D37DA9118154277067C057BCC10C08A60940BEBF7C0BC0EF302369F24904AC45C0BCBB005304605679F9F888C2C592CBA6F8B756F1291A22000E25322970C762714D486DA65C80F9FED29500FBB1D44CC91911B03401FE9380AF64A5EC10E50B8058E4';
wwv_flow_imp.g_varchar2_table(14) := '634BB950BAF1B293257F44C0C2048E0616144D02635C668CD20520DF5F3A07601FC94C927C11017B10E07303BE928F65C62A5D0068DAAFCCF2922F7B1190FF186086005470683BF252230244A00301FE49C0572275AF0BA902306BD3A6DC88473949A3FF';
wwv_flow_imp.g_varchar2_table(15) := 'D4EF89409704B827CC87EE2E29B92C8B8F540198E92F7F9281BF222B39F243046C48E09180AFF84D59714B1680B2DF30E09BB292233F44C06E0438F07295AFF85BB2E2962A00F9FED28F01768BACE4C80F11B01F01B9E300F20460E54A25FF8EDBC456CA';
wwv_flow_imp.g_varchar2_table(16) := '19F62B0A454C04241160680A6CD99E89952B55191EA50940A17F53A10A658F8CA4C80711B033018EC8D42ADFE283327290260005FEF26F71F0976424453E8880CD09481B0894260033FD340068F34E49E14B222073BD40690290EF2F13DF3B2F96C490DC';
wwv_flow_imp.g_varchar2_table(17) := '10013B1390B65498340128F097D10C403B77498A5D1A01065456FA8A0B6538942600F9FEB21A00236524453E8880CD099C0DF88A47C9C8418E00445F01B60270CB488A7C10019B130805B66E4F97F12A508A00DCB07D6D665A6860BDCD8B42E113016904';
wwv_flow_imp.g_varchar2_table(18) := '3C8DCD03772F5BD664B443290250E8F70F5111B9647432649F0838858002D7D00A9FAFCEE87CA40840FE8E8D3908BACE1A9D0CD927028E21E08D8C0CCC5B5C6B743E520460F6B66DA34391E069A39321FB44C029043C2E6FEEEEF9F3CF189D8F140198B1';
wwv_flow_imp.g_varchar2_table(19) := '71E358C5EB3A6E7432649F083885801A8C8CDBBB78F109A3F391220085FE0FF25478A42F796C343CB24F048C22A02034A1C277E731A3ECB7DB95220033CACB27290A3F6C7432649F08388580AAB2C97B8B8ABE303A1F3902B075EB54450DED373A19B29F';
wwv_flow_imp.g_varchar2_table(20) := '38011E898087C3DA09CCED0673D1EEEC89D333FE48E6C60D95B7177F66B4274902503A5551190980D1D5ECC2BEB8C8230D0D508341F050183C1CD2FE06EFF4B93953C03C6E30B747FB5BF17AE1CACCD4C4819A7C026A984FDB5B5272C068CF2400461336';
wwv_flow_imp.g_varchar2_table(21) := 'C13E0F8510AE6F80DAD808B5B5A55F112869E970650E8A8A81C7D32F5B7472E2044800126745470A029C237CE912C20D0DE0AD62D6B5FE8DA5A5C19D9505F790210093F2DBA17F1236B148026093427517A6B8ED8E3435C1939D6DF82F67A4BE1EA1F3E7';
wwv_flow_imp.g_varchar2_table(22) := '63CFF49D63CAF078317BDC388C1B3C04B99999C81D3410B9030661CC8001DAA1279B9A70BAA911A71BAFE054433DAAEBEAB0E7C4093487825DA6271E133CC387C19595656895C49D4CE8E245B8060CD0EE4052A99100D8B8DAE2B9BBE5C89168064C8167';
wwv_flow_imp.g_varchar2_table(23) := 'C408B8870CD63D23B5B919A1DA735DDEE60FCE188085D75F8F85E3F370F3F0E1F02AC90DF205D5083E39770EE5D5C7E0FFFC73D4B7345F13BF783CF0E48C8092A1FF328FE1BACB089D3B171BAB489F3831A5C623480074BF5CE41914BF5C2DC7AA3B0CB4';
wwv_flow_imp.g_varchar2_table(24) := 'B9060E8467D4285D46DB85C0888B43DC65746ECB66CCC47DD74FC197B287E99AF0EE0BE7F1EEE79FE3BD7D55D7D815BFCE42E4F41830146F27423535885CB972D50F53903E214F17FBBA4231D018098081706598569B9A103C7306A243B737F1AA4D8880';
wwv_flow_imp.g_varchar2_table(25) := '1083BE36F158113C75FA9A51FC5963C7E1D93973714396FE771AF1B11EAABF8CBFFF682702273B4D52630AD2AECB85D2F658D197FC228D8D089D3D7B0D33EFE8D1FDB2DB9758CC3E8704C0EC0AE8E0BFCB5F3300AEC183E1CDC9497A204D5C204254C480';
wwv_flow_imp.g_varchar2_table(26) := '5F7BCB1D3C04DF9F771B8A46E7EA1071E226369D3E855FEEDC81D397E33E58630CDEDCDCE4058E73046B6B11B9DC71472C3DEF9A12CFCC1A47920058A30EBA4411BE7C597B568F7FF7CE3C5E78478F82929E9E900F71BBAF5DFC716DFEE4EBF10FB7CD47';
wwv_flow_imp.g_varchar2_table(27) := '9A4993785A2311FC60DB56EC381237C9538880B8CB4970D04E6D6941F04C0D78FC80A3E282376784E1838C098137E920120093C01BE5568C0B888EAE761A4C13B7B7BD5D2CE1BA3A846A3B7E19FAE4CD73F09733668299FC3A8E738E7FAAACC0ABBBFFAB';
wwv_flow_imp.g_varchar2_table(28) := '033A4FCEC85E073EBB123531A02898E8319E60542D65D825019041D9041FA10B1711BE703EE65974F8B4B163BB8DA4F345E2620CCF2F5A822563BA3FC784B4F06EF5313C5F5E8A48DCE3496FE2D67AFC440741F40C1F0E7776B619E15BCE270980E54AA2';
wwv_flow_imp.g_varchar2_table(29) := '5F406A6B6B74803014EE71E08C078368A93E1E7B741898968E5F2DBD0BB3741EE1D72B33F1A6E0990F3E40636BDB2B43317A9F37BEDB791062FE42B0F61C98DBA5FDEA2B69697A85627B3B2400B62F61EF0988D779DDDEEA728E96EA6A0811102DDDE3C5';
wwv_flow_imp.g_varchar2_table(30) := 'ABF73F8049093E5BF7EEDD98233E6FA8C7E36BFE8096B6677AE6F5227DFCF8A4073C8D89CE3E564900EC532B43220D9E3AD5E15DF83FDDB50CBE51A30DF1A5B7D1CD674EE307EBDF8B9915A3F9DEEBAED3DB8DA3ED910038BABC3D2717BE78519BDADBDE';
wwv_flow_imp.g_varchar2_table(31) := 'BE36FB26FCA07096AD88BC58B107AFC50D0C6AB321870EB5550E66064B0260267D137D4767111E8BBDEB17137C562D5A624844E2767D647A06B20CFACAEFA98D1BB0E764DB4A708C217DC284941FDD4FB4902400899272D87141310DB63EBA85C2B08103';
wwv_flow_imp.g_varchar2_table(32) := 'F1E6FD0F62B80E83634DE130FC674E634BF5311C3C5B8B937517351F696E375EBEE73E140CD57FF4FD5C6B0B1E7D770DCE3746A72C6B13A046D2E6508974591280442839EC18EDD7FFE8D5A513C5EBBEBBC68EEB5796B52D2D7871F7A7283D74A8C30CC2';
wwv_flow_imp.g_varchar2_table(33) := '78A34FCFBD15DF9936A35F7EBA3B79DD896AFCEDA68DD1FF1677017979867F1D694822928D920048066E057762A250A421FAEB2FA6F8BEFFE0F27E85F5FF0F1EC06F3FF908AD6D4B7F75656C54D660BC505C62C81D40BBBFA5EFACC699B629C3E2136231';
wwv_flow_imp.g_varchar2_table(34) := '53905ACF04480052AC8768EFFCC5B37F5BFB49C962DC336E7C9F2888DBFD6F97952270AAF3073B0C73F32660CE98B1B8313B1BD7670DC650AFB74F3E9239694DF531FC5DD9A6D829DA588041E30EC9C465E5634900AC5C1D0362131383DA3FEFEDCFAFFF';
wwv_flow_imp.g_varchar2_table(35) := 'C5602B9EDEB01E47C4B7F46D4DCC21F8EE6DB7E3BEF1794837E9BB813BDF7E0B35F5D18F7D5C9959DA7710D4BA274002904ABD8373341F3E1C7B46FFDBE245B87F7C5ED2041A42213CBC764DEC765B18106F119EBF7D3E7233A2ABFF98D5DE3E7A047FBF';
wwv_flow_imp.g_varchar2_table(36) := 'B92CEA9E31644C9E4C93837A28060980593DD504BF62F10B31F1A7FDE2D8F9C453C8E8C32FF59FF9CBB1F3C8D5A5E4EF9D918F95B7CC3121A36B5D364722B8F577AB6222E71D33465BEA8B5AD704480052A867884F85C375D1CD936FCE9B80978B4A92CE';
wwv_flow_imp.g_varchar2_table(37) := '5E0CF8FD7AC787B1F39EB8E9163C935F90B41D234F78BA6C13765547C739C4A4203139881A0940CAF70131F8D73EE7FF99DBEFC013536E488A8978DF7EE71BAF21D2B6FA9026220B8B2D778BFDCA6707F12F1F6E8BDEE8886F04F2927FCC490A8C8D0FA6';
wwv_flow_imp.g_varchar2_table(38) := '3B001B172F99D03B2C200AE0CD8756E0862457DBFD655525FEFDD34F34B7C30765E29DAF3C80C11EE347F793C9531C7BB0FE321E79FBADD869A9B6D06732BC480092A165E363B5D56F6BCF6A19640F1C88F2155F4D2A9BA64818256FBC8EA6B60D407EBA';
wwv_flow_imp.g_varchar2_table(39) := '6809EEEEE7E4A1A40248E660CE31FFF557D1D0B6288A67E448B8071BBB866132E159E95812002B55C3C058C44A3F62C51FD1EE9E31133FBD656E52DE369E3A89E736ACD7CE1153873F58FE083C8A92940D9907FFE8A39D58BF7FAFE6D23D64A8B6AC38B5';
wwv_flow_imp.g_varchar2_table(40) := '6B099000A448AF889FFDD797E7FF959F7E8CB555018DD68A2FCDC6B3B3665B9ADCBF1D3C80FFDB365849F301BA2F150980A5BBB17EC1B59E3C05B529BA06FE8F1616E3C1091393325EF4E66BB8D8B686FE8B4BEF96BE3A7052C10278EBC81778C15FAE9D';
wwv_flow_imp.g_varchar2_table(41) := '46EB04900024DB7F1C777CFCBA782F2C598AC5D78D4938C7C67008B7FFEE95D8F11F3EF1750C725B7B03CFF74F1CC75F6FDAA0C5ACA467206D9CB5D6364C18BEC107D21D80C180FB6B5E2C670DB5D316DB5D18151B6A8A0D41BA6B2D478FC596C4FED5B2';
wwv_flow_imp.g_varchar2_table(42) := '7B715B4EE29FCB9E6E6EC25DAFBFAA991E90968E1D5F7BBCBF69197EFE969A33F8DEFBEB343FBDBD0A14FB2A24B4D1A9A224BCBCBAE109EAE480044027904698D1D6EA4B62075EB1EA6F77FBE7B57CF1456C279C55F73F885949AC8A1BFF5A2D333D03DB';
wwv_flow_imp.g_varchar2_table(43) := 'BEFA9811E9EA6A73D785F378FADD3F4405C0E542FAA4495DDA17FB1EB69EE8F431530F91887D0AD3C6F7EFD3695D13EDA73112807E0234EAF4CEEFED13F1E31E360C9E615DEFD5D7FCD9673113AF3DB81CD3060F49C4A4764C55DD253CFE9F6F6BFF1E99';
wwv_flow_imp.g_varchar2_table(44) := '35181B1E7A38E173CD3A706FDD253CD616B3882163CA942E43114BA289A5D192694E9A574002904CE5251F2B7E99C42F54224DACFAAB2D79DDCD0EBA621761212AA2FD7AD9BD9897C4238038E7ABEBDFC3D1F3E7F1C44D37E19B53A7271292A9C76CAF3D';
wwv_flow_imp.g_varchar2_table(45) := '8BBF58B7367A07E076435CB45DB5AEF656EC2970B12761DA98C4C74F4C859080731280042039E190F8C7094B4FE2D109F61F8F57E3C7A5D11582C4F888B66438B56B089000A448A7887F0DD897790076C3B4EAD041FC6A7BF47B0065C040A48DA1E5C2BB';
wwv_flow_imp.g_varchar2_table(46) := 'BC030AF3697B4B4A0E185D5F66B403617FC6D6D2A98ACAF6CBF065371FF113811EFBF2CDF87E41A1DD52482ADE7FDCF327BCFEA75DDA39B43C58F7E8E80E20A96E65DF8343E7CE217C29FA29F0D26933F0BFE7DE6ADF641288FCD99DDBB1E940F4B740EC';
wwv_flow_imp.g_varchar2_table(47) := '0328F603A4762D01128014E915E2E2172220DA2D7913F09B3EAC05602754DF28DD88DDC7ABB59069B310BA03B053DF3524566D83CC9A1ACDF6A0B40C6CFDEAD7A098BCE5B721890250C5D780AFFD1E57DABE5CEC6DF760A3E2B0835DBA03B043957488B1';
wwv_flow_imp.g_varchar2_table(48) := 'F36AC0ABEE7FC0B2BBFFF637DD4FCF9FC337D7AE899971D27BFBFEB2E97C3E0980DE442D6C2F7E45A0276EBA19CFE43B7320F01F2BF6E0F5B6FD02E91560CF1D9204C0C217ACDEA1C5CF7ABB6E6836DEFBCA837ABBB084BD45ABDFC4B9B68D4F7A9A1D69';
wwv_flow_imp.g_varchar2_table(49) := '89604D0E8204C0E402C874AFB6B6A2B53A3A3026DA1F1E7E1413060D921982E1BEC446A4CB57BF19F393367E3C141DF63C343C70931C90009804DE2CB7F15382BF7BFB7C3C39E546B34231C4EF6F0F1EC0FF6B5B0884B93D489F38C1103F4E314A02E094';
wwv_flow_imp.g_varchar2_table(50) := '4A269847FCD2E039595978EF81E5965EDA2BC1B4B4C342AA8ABBDE597DF5F69F9604EF151F0940AF889C7540E7CF5FFF7CDEEDF85F374E754492FF7A601F5EDAB9E3EAED7F0F9F473B22611D922001D001A2DD4CC4AF0E24F6F35BF7F00A0C4F4BB75B1A';
wwv_flow_imp.g_varchar2_table(51) := '1DE2BDD0DA8AA56FBE8660DB178FE2AB48B13E02B59E099000A4600FE93C1878CFCC7CFCE4666B6CEDD5D772C4AF022CF604145FFF899580A89100501FE88240FC5880F8EFBE6C146215B0FB2ED7E16BEFAC8E8543CB80275E19BA03489C95A38EE4AA8A';
wwv_flow_imp.g_varchar2_table(52) := 'D6A34763CB84158C198B7F5F7CA72D737CF4FD75385073468B5D2CFF953661029885F72CB0126412002B5543722CF1DF0708D74FDE7C0BBE3BD35A1B7DF68624FEB35F712CCDFBEF8D58C7FF2701488E97E38EEEBCECD8776EBD0D4F4F9D668B3C5FDABF';
wwv_flow_imp.g_varchar2_table(53) := '17FFFAD1CE58AC34F0977CD94800926766AB33C4AD3EC2E16E07C4C43A81E2AD000F876279FDD05784E513BB5E45D72AC9BFFAF967F83FDBB6C4C211937EC4DAFF62FDBFAE9AB62BB2DB4D8F069DE0900058A5471B1087D80B50EC09289A272707EE215D';
wwv_flow_imp.g_varchar2_table(54) := 'AF04CC4321B41E3F1E1B0F10C7FFB87811EE1B6FCD6DB5571FFD023FDB1CDDF5477BEE77BBB5577ECCD3F56625F16B21F4C4C1801258DE240980E54B947C80E2575D7CFB2F56BC6D6FBDAD672F7E21C5E380D824A3BD3DBF6809EEB2D80EC0F18B7D6A17';
wwv_flow_imp.g_varchar2_table(55) := 'BF18F413177F0FAFFC3AEFAF20D608F48E1AD9EDDD42F2C4ED7B0609807D6BD765E491C646046BCE02EAD50B591CE8CDCD85AB970F7FB4F901C74F003CBA13915830E4C53BEF826F74AE2528959E3EA5ED502C16FC8806282EFE31BD7EEC13696840F04C';
wwv_flow_imp.g_varchar2_table(56) := 'F42D41ECAEC1E582D836BC37269648DCC02048000C842BD3B478D617B7FB6264BF4347F778E11D3D2AE12DADB4A9C2274FC544C0E572E1174BEF4E6A2B3123F2DE79AE167FF9DE1F1169DF268D29D18B3F3DB1198C628B35B1302A0F053B84A72D183A72';
wwv_flow_imp.g_varchar2_table(57) := '24C4E4A1546C24000EA8BAB6B945CDD90E0379222DF1CC2FD6C34BB6734784BD93276364C474E1B5CB572027C18B4D6FA4352DCDB87FF55B6889BB78C5E61C62938EA41AE7DABA88626CA48348BA3D5191EC665395A47CD8EC6012009B15AC73B8625B2B';
wwv_flow_imp.g_varchar2_table(58) := 'B1D0C735B7B7A34669DB62F7B5698F12A74FC74E9F3769327EBD60615FCDF5EBBCA7CB4AB1ABFA68CC46228F333D3914B985CE9EED30DE218E172B078B158453A99100D8B8DA9DE7F48B54C445EF1935AAC79D82134D3974E102C2172EC40EFF873BEF42';
wwv_flow_imp.g_varchar2_table(59) := '49AEDC0D36369C3A891F6E581F8BC13D6C383CC3FA7F918AC1CE504D0D2257AE74C0919E979752DF109000247A3558F138CED17CF88BE8F33A53E0C91901F7E0C1BA461ABF8EE0B861C3B0F6BE0774B5DF9BB1657F7807272F4537EF34627DBF70DDE5E8';
wwv_flow_imp.g_varchar2_table(60) := '72E982A1E242C6A489493F32F5968395FF9F04C0CAD5492036F1FA2EDCD008775666B7EFC11330D3ED2162F04CCC11686F6F2F5F81C99959FD3199F0B987EAEBB1E26DE397F712F320C2F50D86314C3861130E24013001BADD5CB69E3C199B53F08D3973';
wwv_flow_imp.g_varchar2_table(61) := 'F167D3674A49E15FAA2AF1CAA79F68BE687F3F6390930018C3D5515643172E227C213AD0386BEC38AC5AB4444A7E5FDFF8012A4E9ED07CA5E2009D0CC824003228DBDC8718280B9E3AA565312A6B083E7868B9948CE297F7F68E190357B2AFFDA444696F';
wwv_flow_imp.g_varchar2_table(62) := '272400F6AE9F94E8E3DF3688E932FFF5D437E0628AA1BE235CC54DABFE0D6D73FE906AA3F386C28D334E02208BB48DFD8859862D870FC73258FFE863186DF0A499134D5770CF1BAFC57C665C7F7D4A8DCECBEA2E2400B248DBDC4FF3679FC53290B17CD8';
wwv_flow_imp.g_varchar2_table(63) := 'A1FACB58F1F65B570560CA149B13B466F82400D6AC8BE5A22201B05C497409880440178CCE374202E0CC1A930038B3AEBA674502A03B524B182401B04419AC1F44BC003C54380B2306F4FD43A344B23DD774056F57ECA131804460F5E31812807EC04BA5';
wwv_flow_imp.g_varchar2_table(64) := '53E305C08CBC336810D010EC24008660759E511200E7D554644402E0CCBAEA9E55BC00E48D1C8501066FBBD5140CE2D8D91A7A04D0BD921D0D9200180CD829E6E30560F1AC2F614466A6A1A99D6B68C0C63D7F2201309432DD01188CD739E649009C53CB';
wwv_flow_imp.g_varchar2_table(65) := 'F84CE80EC09975D53D2B1200DD915AC220098025CA60FD204800AC5FA3BE444802D0176A29780E0980338B4E02E0CCBAEA9E150980EE482D619004C01265B07E102400D6AF515F222401E80BB5143C275E001615CE424E96B10B83D6D6D763134D0536BC';
wwv_flow_imp.g_varchar2_table(66) := 'A79100188ED8190E5A8E1C8DED3C74C78C19189B3DCCD0C4AA2F5CC087FBF66A3EC4D6DFE9132718EA2F558D9300A46AE593CC5BEC1C2CF60D146D607A06D2D3BC495A48EEF0966008579AA3BB1B8B2DBBC40EC0D4F4274002A03F53475A141B6B461A3A';
wwv_flow_imp.g_varchar2_table(67) := '6E3C2A2B51576696B6771F35FD099000E8CFD49116B51D746ACF9A929BD8C65BEF1D8F4C49C4824E49002C58142B86D47961D051D9D9C81E38C890502F3636A0E6D2A598EDF4C993C1146357213624111B182501B04191AC12A2D82D58ECAC2BDAE8EC6C';
wwv_flow_imp.g_varchar2_table(68) := '14CD306687A0B27D7B51D3B629A92B3313DED1A3AD82C07171900038AEA4C62514BF4188F0B274F69791DD8F2DC8BB8AF4FC952BD8B07B57ECBFBCD75DD7AF6DCE8DA3E10CCB2400CEA8A3B42CE2770B36E22EA0B42A80B36DB7FFCCEBD53604A1661C01';
wwv_flow_imp.g_varchar2_table(69) := '1200E3D83AD272A4A101C1336762B92D99F5250CD7696D806B7EFD478F867804A0661C011200E3D83AD672CBD163E0A1A0969F180C2CD6692CA0B4AA0A672F5DD4EC328F17E913E8D7DFE84E440260346107DA37E22EA0F3D45F31F047BFFEC6771E1200';
wwv_flow_imp.g_varchar2_table(70) := 'E3193BD243FCD4E09143B35132B37F6F043606023857177DF547BFFEF2BA0C09803CD68EF214A9AF47B0E6EAA29D736F9C8A4939397DCAF1F0D9B3F8F8D0C1AB23FFA346C165F0C7467D0AD48127910038B0A8B2528A1F0B608C213F6F02F2860F476682';
wwv_flow_imp.g_varchar2_table(71) := '3B07373437E3C8B95AECADAE06E7D18DC0E9D75F56F5A27E4800E4F2769437B5A909AD274FEA9A93F8E8477CFC434D0E011200399C1DEB2574E122C217CEEB929F67F870B8B3B375B14546122340029018273AAA0702E1CB9711AEAB036F6DED1327252D';
wwv_flow_imp.g_varchar2_table(72) := '1DEEA143E8B9BF4FF4FA77120940FFF8D1D9F10438871A0C029148625C5C2E28628721C6123B9E8ED29D80A304A0E0C3B2293C8C43BA53228344C0A10454954DDE5B54F485D1E94991F819E5E59314851F363A19B24F049C424041684285EFCE6346E723';
wwv_flow_imp.g_varchar2_table(73) := '45000AFD1FE4A9F01C353A19B24F049C42400D46C6ED5DBCF884D1F9481180191B378E55BCAEE3462743F689805308785CDEDCDDF3E75FFDBACBA0C4A408C0EC6DDB468722C1D306E540668980F30878232303F316D71A9D98140128F4FB87A8885C5D4B';
wwv_flow_imp.g_varchar2_table(74) := 'CAE8ACC83E11B0390105AEA1153E5F9DD16948118069FBF679DDB567FAF632DA6802649F08589040386774DAFEE9D3A3DF761BD8A40880883FDF5FD60220CDC05CC83411700A81D680AF385D4632320540BCD2182F2329F241046C4EA03AE02B96B2EA8A';
wwv_flow_imp.g_varchar2_table(75) := '440128FD1860B7D8BC30143E119040806D0DF88A16487004890250F62E807B6524453E8880CD09BC15F015AF909183340128F097BDC081676524453E88809D0930E0E795BEE2E764E4204D00F2FD6542D1DE909114F920023627F048C057FCA68C1CA409';
wwv_flow_imp.g_varchar2_table(76) := 'C04CFFC61B195C076424453E88809D097044A656F9165F5D8BCDC064A4090056AE54F2E7DF1602036D26676041C9B4CD09303405B66CCFC4CA95AA8C4CE40940742E8050B51B6424463E88803D09F04F02BE9239B262972D00E2B9E66159C9911F226037';
wwv_flow_imp.g_varchar2_table(77) := '021C78B9CA57FC2D59714B1580027FF9B738F84BB292233F44C06E0418D8B72B7D45BF9115B75401C8F7FBC70011F159B054BFB260921F22D04F02DC1552C7EC59B448DA97B3D22FC4027F5905070AFA098A4E27028E23C080CA4A5F71A1CCC4CC10009A';
wwv_flow_imp.g_varchar2_table(78) := '1024B3C2E4CB3604644E006A87225D000AFDA50B5430BF6DAA428112016904F8DC80AFE46369EECC78169FBD6B9727D450F7397D1928B3CCE4CBF204188E6773D7A42D3E5F5866ACD2EF004472F9FED29500FBB1CC44C91711B03601FE9380AF64A5EC18';
wwv_flow_imp.g_varchar2_table(79) := '4D118059E5E5E3230A17AB049BE25F3664F247047A21100E87F9A4FD2525D217CE35ED02CCF7976D00B098BA06112002581BF015DF670607D304800603CD2837F9B4220105DC57E12BD962466CA60940742C80EE02CC283AF9B414818D015FF112B32232';
wwv_flow_imp.g_varchar2_table(80) := '5500A66FDE5CE0626A8559C9935F22603601AEF0FCAA3B4AAACC8AC3540168BB0BA0A5C2CCAA3EF9359B8069CFFEED899B2E00D3FDFEC92E44F60018647635C83F119048E08AAAB202193B00F79493E90210BD0B287F06E0FF2C113EB92202A61290FDD5';
wwv_flow_imp.g_varchar2_table(81) := '5F77C95A42001E5ABDDA756844B61805BDCDD4AA907322208500DF11F09558A2AF5B420004737A1490D2F3C889F9042C71EB6F993180F87AE46F2E7D0060AB69DD40F37B29456000010E9529ECC1CA05456B0CB0DE279396B903688FBEC05FFA1C07FB59';
wwv_flow_imp.g_varchar2_table(82) := '9FB2A1938880A509B0EF057C45BFB0528896130001A76073E92ACED8D7AD048A622102FD24F0CB80AFF8997EDAD0FD744B0A80F86438DC50F73E074A74CF980C1201C904FE6705AC35555BB73F286BA9EF64D2B3A400880466AF5B37209439E0F7E0FC2B';
wwv_flow_imp.g_varchar2_table(83) := 'C92444C712018B1158EB696C7E74F7B2654D168B4B0BC7B202A045C7392BD8B2F9EF38F85F5B111EC544047A24C0AD029C08000002E649444154F1B380AFE847608C5B9594B505A08D5AFEE6D2C7C1D82A002EAB82A4B888408C004390733C55E52B7ECD';
wwv_flow_imp.g_varchar2_table(84) := 'EA546C21000262FEE6CDB780A9BFA39D85ACDEA5523EBE2A15EA537B7D8B76D981846D0440C0CCF3FBD3B3107E0E607F05C06307C01463CA1008718E17BC59437EBAFBCB5F0ED9256B5B09403BD482B2B229DC8517012CB30B688AD3B104C4F3FD7F46E0';
wwv_flow_imp.g_varchar2_table(85) := 'FAE13E9FEFB0DDB2B4A500B4432EDCBC699ECAD8CF0136CF6EE0295EFB13E0C01645E1DFAFBCA3447CCD6ACB666B0168279EEF2F9D038EEF80B1E500D26C59090ADA2E045A19F00EE3EA4B150B17EDB04BD0DDC5E90801684F6EB6DF3F3C04F549808BDD';
wwv_flow_imp.g_varchar2_table(86) := '5527D9BD3814BF8508301CE12A5EF632D7AADD3EDF790B45D6AF501C2500F1240A36972EE60ABB075C1B2718DB2F4A7472AA123801CEDE5315BE66EF82E252274270AC00C4174BAC3DA8B0C832C6580938660318E8C462524EFD2670050CBB1950C6B8BA';
wwv_flow_imp.g_varchar2_table(87) := 'AEC2B7C8F1EB55A6840074EE1633CBCA262A0A2F541556C0B8B653F17830E48023B7DF5D880C589F00C3E9FF1933AA0550CD192A15955746B85269F6F25C66804B4901E809F4E4F5EBD30665646404817445513C0AE0167F5828E409897F33E6E68C1137';
wwv_flow_imp.g_varchar2_table(88) := '337A6B2F3E19E75CE53CEC01C2DCE309A94058FBA3AA212FD0D2D8DCDC7C78E9D2560B866E5A48D4914D434F8E8980F9044800CCAF014540044C234002601A7A724C04CC274002607E0D280222601A011200D3D0936322603E011200F36B40111001D308';
wwv_flow_imp.g_varchar2_table(89) := '900098869E1C1301F3099000985F038A800898468004C034F4E49808984F8004C0FC1A500444C034022400A6A127C744C07C022400E6D780222002A6112001300D3D392602E613200130BF06140111308D00098069E8C93111309F000980F935A0088880';
wwv_flow_imp.g_varchar2_table(90) := '690448004C434F8E8980F9044800CCAF014540044C234002601A7A724C04CC274002607E0D280222601A011200D3D0936322603E011200F36B40111001D308900098869E1C1301F3099000985F038A800898468004C034F4E49808984FE0BF0151E9E1C4';
wwv_flow_imp.g_varchar2_table(91) := 'B237B5C80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(69114777653477811885)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EED9D07985D5775EFFFB74F93A6CF688ABA2CDB923B2EB8C8DD962CDBD8D44048E305424B42F2424801427890';
wwv_flow_imp.g_varchar2_table(2) := '0701125A428084242F0430C471C3BDDBD8967BEF4575461A4DD3CC48536E7FD947B60133E796997BE79E7BF6EF7C9F3E7F9FE79CBDD7FAAD75EFFD9F5DD60E1C75C7AD597141000210800004206015810002C0AA78E32C042000010840C0218000201120';
wwv_flow_imp.g_varchar2_table(3) := '000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C80000420000108584800016061D071190210800004208000';
wwv_flow_imp.g_varchar2_table(4) := '200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C80000420000108584800016061D071190210800004';
wwv_flow_imp.g_varchar2_table(5) := '208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C80000420000108584800016061D071190210';
wwv_flow_imp.g_varchar2_table(6) := '800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C80000420000108584800016061D071';
wwv_flow_imp.g_varchar2_table(7) := '190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C800004200001085848000160';
wwv_flow_imp.g_varchar2_table(8) := '61D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C800004200001085848';
wwv_flow_imp.g_varchar2_table(9) := '00016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C800004200001';
wwv_flow_imp.g_varchar2_table(10) := '08584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C800004';
wwv_flow_imp.g_varchar2_table(11) := '20000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C7650840000210800002801C';
wwv_flow_imp.g_varchar2_table(12) := '80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C76508400002108000';
wwv_flow_imp.g_varchar2_table(13) := '02801C80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C76508400002';
wwv_flow_imp.g_varchar2_table(14) := '10800002801C80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541C76508';
wwv_flow_imp.g_varchar2_table(15) := '40000210800002801C80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104808541';
wwv_flow_imp.g_varchar2_table(16) := 'C7650840000210800002801C80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060210104';
wwv_flow_imp.g_varchar2_table(17) := '808541C7650840000210800002801C80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000042060';
wwv_flow_imp.g_varchar2_table(18) := '210104808541C7650840000210800002801C80000420000108584800016061D071190210800004208000200720000108400002161240005818745C860004200001082000C801084000021080808504100016061D97210001084000020800720002108000';
wwv_flow_imp.g_varchar2_table(19) := '042060210104808541C76508289BFD39844000201080808504100016061D97FD4F209BC9281B8F2B9B4AFDFC5F3AAD6C2AAD6C3A25A533523623991FFF405081504881505072FE1B52201CFEF9BF584C8160D0FFD0F0100296114000581670DCF509816C';
wwv_flow_imp.g_varchar2_table(20) := '56E6475ECE8F7A4AD9745A994452D964C2F99177FEBFF97BC6FCE0A7E7E4B411020ABE2A084241052291D745818C40784D2C98FB18459813631E8240250920002A499FBE21502401F3639F999951666A4AE9E969651309FDD2707E91EDCDEBF640C01105';
wwv_flow_imp.g_varchar2_table(21) := 'A1BA3A05EBEB15ACA9714401170420501D041000D51127ACB4914036AB4C22A1CCF48C32F11965CC0F7E327570E8DE8B97994A88841D2110ACAD55A8B6D611088C0E783158D804010901401640C0830432F1B852FBF6393FFE6658BF1AAF4034EA888170';
wwv_flow_imp.g_varchar2_table(22) := '73B382B15835BA80CD10F035010480AFC38B73D544C0CCD9A7C7C7951A1F3F38B4EFA32B108B29DCD8A8D0E2C52C28F4515C71A5BA092000AA3B7E585FED04B259672E3F35BACF99DB378BF6FC7C05C211851AEA155AB4C8191D607AC0CFD1C637AF1340';
wwv_flow_imp.g_varchar2_table(23) := '00783D42D8E75B0266215F6A7C42E903FBCBBB90EFD515FAF591A842818082C1A0828180A2A190B2CA2A95C92A9DC92893C9687F22AED72B04FC62AD805247211054685183332A60D60B704100020B4F0001B0F0CCADEBF1E076B48CB3858C4B4A9B1FFE';
wwv_flow_imp.g_varchar2_table(24) := '911167515F29AF4830A85030A84838A2704DAD1A1AEAB4A6A555CD75756A8DC6D4108DAA351A556F6D9D1647225A1C092B9395A6D2290DC5E3EA9F9ED64432A1B1444213898446A6A6D43F36A6C1F1312566E2CAA4534A6532CEBF525EC19A5A45DA5A15';
wwv_flow_imp.g_varchar2_table(25) := 'ACAB2B65B355DB96B36DD3ECB0A0F642D5C6B05A0C4700544BA4AAD1CE6C568981BDCE7CB61101E60B2DD4B8D819FEB56EBB9819EA373FFCA3A3CACCC44BB292DFD4EFAB8FD56A656B8B0EEFE8D0CAA666AD696AD2F2FA06B5C4CCDB7E698AF72433198D';
wwv_flow_imp.g_varchar2_table(26) := '26E2DA75E080B68E8FEBF99161BD303CA49DA3639A8C4FFF7CC4603E391A082A581353B8A5C5D95668DBD480B3FE63FF7EA5C7C65FFFAC046251453A3A1002F3C92B9ECD4900014082948D407268C859C9FEC62B10892ADAD961CD1B9F99DB371CCC17FC';
wwv_flow_imp.g_varchar2_table(27) := '7C2F3374BFACB14967AC58A9537A7B75546B9B62A6208F6978A18AF198224492A65229BDB06F9FEED8B95DF7ECD8AE5DE3E34A9760DAC0084467E780592360C16546821283834EE5C6375EE1A66645DADB162EB616F0C6C59F134000900D6521909E9C54';
wwv_flow_imp.g_varchar2_table(28) := '62CF80FBA2B640C099FF0DB7B5F9F60DC714ED31232099A9C979310E8742BAE090B53A6BF94AAD6F6D559BD967BF903FF8F9ACCF6695CA66B52F11D753C3C3BA6BE70E5DFFC2F3F39E2A305302D1254B7C3B7564DEFA53C3C3CEAE0FD7624EC190A25D4B';
wwv_flow_imp.g_varchar2_table(29) := '14AAAFCF1705FE0E81A20920008A46C6038510480E0E2A353696F75667FED78C06F86C9FB879EB4FECDD3BEB5B5D5E28CECB7C40472FE9D2C6430ED186EE5E75D5D52A58A221FD42FA9FCF3D6641E1E0CC8C7ED6DFA79FBEF0BC9E1EDC3BE7458E66FB60';
wwv_flow_imp.g_varchar2_table(30) := 'B4A3C3770B054D9D07F31929641D88330AD0D13E9F90F02C04662580002031CA4220DED7E794AB2DE80A0415696F57B8A9B1A0DBBD7C9379EB37531F731DEE6FACA9D5C6B56B75C1EA353A6471A3EAAB7CE1E4743AAD67F68DEAFA575ED60D2FBCA09939';
wwv_flow_imp.g_varchar2_table(31) := '163532D3022647FCB090D44C072587870B1645C1BA7AC57A7BBC9CF6D856A5041000551A38AF9B6D7E00130303057FC9197F420D0D0AB7B656E768801906375FEC232345F9FC5A1C97B5B6EB2DEBD669E3D2A5EA8CD5C8ACE8F7D3651612F64D4FEBCEDD';
wwv_flow_imp.g_varchar2_table(32) := 'FDBAEAD9A7B5D3FC00167B9969A39656455A9AAB724EDCA9EE383C2C333D56F015082ABAA4D35938CB058152134000949A28EDBD4E203938A4D4D8AF2E02CC85C82C108CB4B63815E3AAE5CA2693CE1BDD5CDEFA97B7B4E982C30FD3A52B56A9C31CBBBB';
wwv_flow_imp.g_varchar2_table(33) := '500BF92A0877D7D4A46EDCB953973FFD94B3C5B0D82BD4D8E84C0B2CD8A2C7620D9CE5FEF4C4849223A34597750E3735393B01B820500E0208807250A5CDD709986D6FCE706791971100D1CE4ECF7FC93B231D7B078BAEE0677EF8371E7E98DEB27CA57A';
wwv_flow_imp.g_varchar2_table(34) := '2CAC8897CD66B56B7A5AD76CDFA61B9F7F4EFDFB468BCA10331510E9ECF4FCE238B3D0CFCCF51B0150D4150828D2DAEA6C8BE48240B9082000CA4596765F2730D7B71FB30ADCCCFB7A72816036EB089BD49859C15D78619C96FA7A5DB8FE48BD63F56A2D';
wwv_flow_imp.g_varchar2_table(35) := 'AB6365B759FDBE636A4AFFBDF5655DFBCC33DA3779A0F04F4E30E46C17F4EA948053F76178449999E20A3E99CA884E3D0456FE179E0BDC39270208803961E3A1620998EA66CE30B979132A66AFB85920D8D62A3314EA95215FE7ADCE2CF433DBB78AB88E';
wwv_flow_imp.g_varchar2_table(36) := '5FB142EF3FE6389DD4DA56C453F6DCFAD8BE517DE581FBF55C7F5F51C5854C6E786A3BE9EBEB41468B128726BFCDC857C46C8D0D85EC093C9E568C0002A062E8EDECD8BC15254D75C054B22800E6ADC8CC85567A34C0D9DBDFBF5B99F84CC1F637D637E8';
wwv_flow_imp.g_varchar2_table(37) := 'DDC71DA75F5FB9DA29C1CBE54EC0EC1AF8E7179FD7154F3CA9F1C9C20B270563358A7677295061BECEF63E53FBA188FC30349CB52F9D1D07AB2072416081082000160834DDFC9C80B368CECC8B16B31ADA7C4986428E0830BB052A311A60BEDCCD8F7FC1';
wwv_flow_imp.g_varchar2_table(38) := 'E22510D09B56AED2EF1F7B9C8E696A26058A20F0F0BE517DEDD187F5CC8E1D058F18997501D1EEEECA541034A59EF7EF7746869C5AFE855EE6ADBFBEFEE05B7F345AE853DC0781921040009404238DCC8580993F375F98C5CCA19B7E9C3DE1A646FA020E';
wwv_flow_imp.g_varchar2_table(39) := '933A950D77EF29D856F346F781934FD687D7ACAD8858994B3CBCF68C292BFCDD975ED4F71F7A50D385CEA39B6D733DDD0BFA26EDD47E3082F64011EB179CD7FE57A7B79A11875ECB3D5BEC4100D812698FFA690E0A72E6D38B1D0D08479C1AE90BB13FFA';
wwv_flow_imp.g_varchar2_table(40) := '604D0353CDAEB0C57EAD9D9DFAE2A91B747C332BB84B9176F78F8EE8F3F7DFAFFE3DFD8535674480299F6B468ACA7C390B5C87876544403197F3D66F446C85A72C8AB1997BFD470001E0BF98569D474E4DF4D151E75F515720E8540F343B05CA7599350B';
wwv_flow_imp.g_varchar2_table(41) := '89FEFEC286A183211D7BE85A7DE1B813D469C94136E5E2FEC67607FEA7B4F25F3E78BF1E7BF9E5C2845820E04C07947325BD29FA941ADD57983DBFE090D9B9600A5E71DCEF42650FFDB8114000901B9E21604A079B3DF5D922CBC53A5BC1CA20024CE196';
wwv_flow_imp.g_varchar2_table(42) := 'D44881350C8221BDEF9453F4E1430EF55D153FAF2488A926F84F2F3EAF7FDBB2A5E0BA0B918ECEB29498366FFE4EA5CB222EE714CC259DBE3BD7A00804DCEA310208008F05C47673CC50AA79AB4A990A71056E17348BA762DDDD255D44E514302AB0AC6F';
wwv_flow_imp.g_varchar2_table(43) := '737D833E7EFA19DADCD5CD7C7FB913389BD515FD7DFAFACFEED64421A72C9A9180254B4A3A55E46C03DDB3A7F0692BE7E4CB26855B9A7D719641B9434CFB0B470001B070ACE9A908020757549BB9D5FCDB05CD62C06857974CE1A0525CCEB07F5F5F414D';
wwv_flow_imp.g_varchar2_table(44) := '2D6B6ED6A7CF3C5BC7B7B416743F379586C0A3A3A3FAF41DB7697781A5A69DE98012AD0930BB58E2BB771774D2A353B1B0BDBDA402A434046905021202802CF02C01F3A66556DE67F2BCE9992363633D3D2579BB3A38E7BFBBA079DD55ADADFAF41967E9';
wwv_flow_imp.g_varchar2_table(45) := '1816FB5524879E1C1BD367EEB855DB0B593B12082AD6D35D129158685E9A53FCCC62C485DCAD529140D069D5124000546DE82C31DC94DC1D1A56CA5410CCCCBEBFBA54F3BC669F7F7C575F41F3CB6BDB3BF4C9D3CFD051ECEFAF68223E3136A6CFDD7987';
wwv_flow_imp.g_varchar2_table(46) := '5E1919CA6F4730A4D8D2DE92149332EB55E2665BE86C39190C29B4A8E1E0F1C53E3BD5313F64EEA8260208806A8A96C5B666A6A71D21F0C6BAEA66D8DFBCFDCFB7309033ACBBABAFA02987F59D4BF4971BCED0BAC6468B23E21DD79F1D1FD3DFDC7DB79E';
wwv_flow_imp.g_varchar2_table(47) := '1DCCBF28CF2CC4332301A528BA931A1B7376AEBCBE053010708A1099A23EA672251704BC4E0001E0F50861DF2F1130F502D213074BC4861AEA15ACAF9FF75B9619D28DEFDC29539320DF657EFC3F73C6593A84F3D9F3A15AD0BFBF7C60BF3E7BD79D7A7A';
wwv_flow_imp.g_varchar2_table(48) := '604FDE7E03E188622B96CF3B6F9C8EB25919716A4E370C46A3ECEBCF4B9F1BBC440001E0A56860CBC213C86695D8BDBBA015DD2B9A9BF5B7E76DD4DA458B17DE4E7ACC4BE0C5FD13FAD4EDB7E9A5E1FCD3016641A059383ADF91A3BC467103043C4C0001';
wwv_flow_imp.g_varchar2_table(49) := 'E0E1E0605AF909A4F6ED3B588E38CF551FABD13F6CBE48C7703E7B3E5415FDFBC323C3FAF46DB76A60FF445E3B4AB576246F47DC00018F12400078343098557E024EE1A18181BC655C0392BE7ED15BB4A17349F98DA2877913B87977BF3E7BEBCD9A4AE6';
wwv_flow_imp.g_varchar2_table(50) := 'DE42EA1C1E64B68F325F3F6FE634509D041000D51937AC9E2F816C56F1BE3E67FE36DFF517679DAD77AD5A93EF36FEEE210297BDF292BE7CD79DCAE42926657EFC634B977AC8724C81C0C21140002C1C6B7AF2100133EC6F86FFF35DEF3DEE787DFCD8E3';
wwv_flow_imp.g_varchar2_table(51) := 'F2DDC6DF3D46C02CCAFBF2E38FEA478F3E92D7B2706B9B22AD1CDC94171437F88E0002C07721C5A17C04CCB1AD66E15FBE6BD36187EBFF9E729A02013309C0556D04D2998C3E71CFCF74FB4B2FE436DD940BEEEA2A59A5C06AE384BDF6124000D81B7B2B';
wwv_flow_imp.g_varchar2_table(52) := '3D77F6FBF7F7E7DDF2B7BAA555FF7AD1C55A1C895AC9C92F4EC7D369BDFBAA2BB43D4FC9E060AC4651531F201CF68BEBF80181BC041000791171839F0824F60C289D6785782C14D2D72FBC5827B577F8C9756B7D796C78581FFCE95532A709E6BAC24DCD';
wwv_flow_imp.g_varchar2_table(53) := '8A7494EF68696B0380E39E258000F06C6830ACD4044CA19F991D3BF3D6F97FDF0927EA0F8F3AA6D4DDD35EA50864B3FA87A79FD4F71E7C20CF544050352B57300A50A938D1EF821340002C38723AAC080153F067C0BCFD1FAC22E876BD79D9727DF1CCB3';
wwv_flow_imp.g_varchar2_table(54) := 'D4E893A17FB30AFE95C9031A8DC735343DA5A1A9298D4E4E6A68F2800E4CCD38ABE40F696FD305ABD7E8B0C6A68A8466213A356FFFBF71FD4FF5E2DEBD39BB0B2D5EAC6867270582162228F451710208808A870003168280F9E14FECC95D26B6B9B6567F';
wwv_flow_imp.g_varchar2_table(55) := 'B769B38EADF2A37D774C4DE9D1E1213DD8DFA7C1F1091D989ED4E8F4B486736C795CD1D8A4CF9E73AE8EF2F1C9864F8FEDD3EF5F77ADC667726CFD340B02972CE1F8DE85F850D247C50920002A1E020C283B8102F7FCFFAF134FD21F1C7974D9CD294707';
wwv_flow_imp.g_varchar2_table(56) := '0333337A666C9FEEEDDBA54777ECD08E3C8BDE66B3E19275EBF5D7279F5A0EF33CD3E6779E795ADFB9FF3E65735854AA03A63CE3348640C085000280D4F03D8142CAFD1EDBD3ABAF9C7D8E5AA2B1AAE1319D4E69E7E4A46EDAB15DF76EDBAA170B28699C';
wwv_flow_imp.g_varchar2_table(57) := 'CBB9F51D9DFACF8BDEE2EBE1EF6426ADF75CFB53BD32349833CE9409AE9A8F0186CE830002601EF078B40A0864B39AD9B62D67B9DF6828A4CF9DBF49E777F7548143522A93D10BFB27F48F8F3CAC2DDBB696CCE6751D1DFACF8B2EF17DDD839BFAFBF4E9';
wwv_flow_imp.g_varchar2_table(58) := '9B6FCCB92BC06C078CAD58519A13034B16211A8240690920004ACB93D63C46A090B9FF73D71EAABF3DED7405ABA0E0CF7832A17F7CF2495DFDD4134AA4D325A57DC6EA35FADA996797B44D2F36661604BEEFC6EBF5CC9EDCC5A09CE2401CFBECC5106253';
wwv_flow_imp.g_varchar2_table(59) := '890820004A049266BC47209B4E3B15FF72D5FB6F8CC5F4AD8B2FD13A8FAF809F4EA775F9B6ADFA9707EFD74401E717141B8DD6DA5A7D71E3053ABEB5ADD847ABF2FEC74647F4C7D75FABF178DCD5FE605DBD623DDDBE9E12A9CAE06174C90820004A8692';
wwv_flow_imp.g_varchar2_table(60) := '86BC46A090B7FF771F7D8CFEF44D2778F6EDDFD4B4BF6F78485FBCF767EA1B192909E2D7463A4C81E34535753ABABB4BBF79E4517A93253FFE06A2E1FAD70F6CD135CF3CEDCE941D0125C9371AF12E01048077638365F32490E8EF577A72D2B595F6458B';
wwv_flow_imp.g_varchar2_table(61) := '74D9256F534BCC9B0BFFCC50F53F3EF3B47EF0F083CEBCFF5CAF5030A496C58BB4B4B95947B677E890A666AD58BC58DDB5756A0887150906E7DA74553FB7F5C07EFDC10DD76BF7C4B8AB1FA1860645BBBBABDA4F8C87801B010400B9E14B0299785CF15D';
wwv_flow_imp.g_varchar2_table(62) := '7D52C67D9EFCC36F3E451F58B7DE938BDECC0AFFBF7EE07EDDF2DCB339B7ACB9052F168E68C39A35DAB46AB58E696D554328EC8C72840201393FF755B0DE612112F39B4F3DA17FCD5521301054CD8AE50A44220B610E7D4060410920001614379D2D1481';
wwv_flow_imp.g_varchar2_table(63) := 'C4DEBD4A8FBBBFD9D54722BAEA5DEF515B4DCD429954703F13C9A43E7EE71D7A68E7F6829F3137C6C2619DBA72B5CE59B54AC7B5B5AB2D1A55D8D2B7FB42C13D3D3EA60F5E7DA5A69249D7473823A0509ADC576D041000D51631ECCD4B209BC968E695AD';
wwv_flow_imp.g_varchar2_table(64) := '396BFEBFED88A3F4C9134FF2DCDCFFDE99697DE886EBB57DB4F0F9FEDA7058EF39EE785DB86A957A6B6B150D86F232E28683041299B4FECF96FB74DDF3CFB923098654B36A255B02491ADF114000F82EA438941A1F573257CDF74040FFF1D677E8C8E666';
wwv_flow_imp.g_varchar2_table(65) := '4FC13295FCFEF4A69BB4E7C044417685824199AD7B1F39EE4D5A51DFE00CEF73154F60CBE05E7DF4DA6B9C85816E57A4B353E1C6C6E21BE7090878980002C0C3C1C1B4E20998B7FFE49E3D3917FF1DBEA44BFF7EC1664FBD293F69B6A5DD70BD4673D5A9';
wwv_flow_imp.g_varchar2_table(66) := 'FF051C87B677E813A79EA6754DCDAA09F1C65F7CA6FCFC0933E5F2893BEFD00339A65CD812381FC23CEB55020800AF4606BBE644C0ECF93787FE645329D7E7FF76D3669DDFD33BA7F6CBF1D0E0CCB4DE7BE57F6B786A2A6FF3669EFFAD471DA3F7AF5FAF';
wwv_flow_imp.g_varchar2_table(67) := 'D62A2A5B9CD7B10ADF70DDCE1DFAD42D37B95A1108859CDD00C1DADA0A5B4AF710281D010440E958D292070824474694CAB15FBEA96191AE7BFB3B55170E7BC05A693295D2C76FBF55F7EFDA99D79EC5B11A7DF0B40D7ACFF2159EDCB990D7010FDF301C';
wwv_flow_imp.g_varchar2_table(68) := '9FD1EFDD709DB6E5C89D706BAB22ADAD1EF602D320501C01044071BCB8DBE304E23B7729936318FDD2A38FD1678E3FD1135E64B2597DEB89C7F5BD471ECA6B4F5B7D833E7EC699DAD8C59EF4BCB0E678C3D79E785CFFEFE1075D9F0EC66A145BBE6C8EAD';
wwv_flow_imp.g_varchar2_table(69) := 'F31804BC470001E0BD9860D11C0998617F73F08F5C1673997DF0DFBDF46D7A538B37DEE2EE19D8A33FBAE13AA5F314F9E9696CD4A7CE3A476FB6A852DF1C53605E8F3D3432ACDFBBEA0AF7360201D5AC5C297350101704FC400001E08728E2834320DFB1';
wwv_flow_imp.g_varchar2_table(70) := 'BF8D35B5BAE53DEFF544E5BB3DD353FA8D2BAFD0E874EE79FF356D6DFAD239E76B654303512E3301B318F037AFB94A3BC7F6B9F6C46E80320781E617940002604171D359B90898D5FF89BEFE9CC3FF17AE3F429F7FF329E532A1E0760FA492FAF86DB7EA';
wwv_flow_imp.g_varchar2_table(71) := '81BE5D399F59D9DCAA7FDABC599D352C3C2B18EE3C6E34DB00BFF4E8C3BAECF1C75C5B09D5D72BD2D5454D807970E651EF10400078271658320F02D9645233DBB7BB0EFF8742617D79D3269DB5A4F273E83F7CE9057DF9EEBB727A5B1B8EE89B175D6CD5';
wwv_flow_imp.g_varchar2_table(72) := '013DF3087FC91E7D7068501FBCE62AF7F64C69E0E5CB1488464BD6270D41A05204100095224FBF2525903E70C039FAD7ED6A5DBC5837BEFD5D152F8D6B569B7FE4FAEBF4529E4A7F1F3B75837EFBD0C358ED5FD22CC9DFD8FE645217FFF77F697CF280EB';
wwv_flow_imp.g_varchar2_table(73) := 'CDD1AE2E85162DCADF187740C0E30410001E0F10E61546203934E4AC0170BBCE587BA8BEB6E18CC21A2BE35DFFF6FCB3FAC6BDF7E4ECE1ACD56BF4F9D34EF7CC56C532E2F05CD3E6D4C54FDEBF45373FF78CAB6D6C07F45CD830688E0410007304C763DE';
wwv_flow_imp.g_varchar2_table(74) := '2260DEFECD2880DBF5C7A79FA9DF3A646D458DDE3D3DAD3FB8E13A6DDD37EA6AC792458BF51F975CAAF698F70E29AA28BC85EA3C9BD5953B77E8FFDC7AB36B8F1C11BC50C1A09F72134000949B30ED979D8099FF8FEFDEAD6C3C3E6B5F0DD1A8BE7EE1C5';
wwv_flow_imp.g_varchar2_table(75) := '3AAEC2DBFFBEF3DC33FAF67DF7E6E4F1D50B2FD6994BBACACE8C0EDC09BCB47F42EFFAC965AE37046231D52C5BC691CA2451D5134000547D0871C099FF1FD82B65D2B3C2686F6CD4356F7D47456BE6EF9C9A72DEFE736D315BDBDDA3FF387F9362D4F6AF';
wwv_flow_imp.g_varchar2_table(76) := '68529B5D1A1B7FFC234DCDCCCC6A875316B8AB4BC1BABA8ADA49E710982F0104C07C09F27CC509248787951A751F563F6EE52A7DEFEC732B6AE73F3CF394BE77FF969C367C69F3453A8F4A7F158D93E9DCAC03F8F01DB7E9E1EDDB66B7251050B8C59405';
wwv_flow_imp.g_varchar2_table(77) := '6EA9B8AD180081F9104000CC871ECF7A8240DCECFF9F9A74B5E5774F3E45BFBFEE888AD9BA7B665A1FBDFE5A6DCFB148B1BBB955975F72896A435499AB58A05EEB389BD5B79F7F56DFC9315D63EA01447B7A2A6E2A0640603E041000F3A1C7B39E2030B3';
wwv_flow_imp.g_varchar2_table(78) := '759BB2A9E4ACB62C8A46F5D9F337E9ACCE2515B3F5FAFE3E7DF2C6EB73F6FFA973CFD7DB97AFA8988D74FCCB04EE1F1ED2477F7AB5322E659A4D1D809AE5CB590740E2543501044055870FE34DDDFFE9975F91B29959612C6958A47F79CB25EAA9ADDC7C';
wwv_flow_imp.g_varchar2_table(79) := 'EDDF3CF6882E7FF411D760D5D5D4E8D677BF57B5CCFD7B26A147E2716DFAD10F944ABB1C2B1D0CA976F52A04806722862173218000980B359EF10C816C3AAD99AD5B5D2B00AE6E69D54F2E7D9BCC414095BADE7DDDB57A61C0BD48D1874E3D4D1F3C6C5D';
wwv_flow_imp.g_varchar2_table(80) := 'A5CCA3DF5908A4B3199D7DD90F3531E5725683391868D52A9905815C10A8560208806A8D1C763B0432F1B8E23B77BA0A8063BA7BF46F175C58315A2F1ED8AF8F5C739546A6A767B5211C0CEA27EF7C3787FD542C42B3779CCE66F5EE9F5EAD9787065D2D';
wwv_flow_imp.g_varchar2_table(81) := '8B2D5FAE602CE631CB3107028513400014CE8A3B3D48203D35A5445F9FAB6567AE59A3AF9E7176C52CFFF1F6ADFAF2EDB7C9FCA0CC7635D5D5E9F677BF9792BF158BD0EC1D9B83813E76E7EDFAD9D6575C2D8BF6F62AC456408F450E738A218000288616';
wwv_flow_imp.g_varchar2_table(82) := 'F77A8E406A7C5CC9BD7B5DED7AC7D1C7E893C79F5831BBFFE2FE2DBAF199A75CFB3F6BED61FAFB0DA757CC3E3A7621604E067CEC11FDF8F1C79471116FD1254B145ABC188410A85A020880AA0D1D861B02C99111A546465C617CE8E453F4C10A6E01BCF8';
wwv_flow_imp.g_varchar2_table(83) := 'CACBD5E752A3C0AC4AF8F85967EBD757AD21985E2390CDEA872FBFA4AFDD73B7922E3B01C2AD6DD402F05ADCB0A7AEF2207B000020004944415428020880A27071B39708980580A608507A7CDCD5AC4F9D739EDEBE626545CC1E4F26F4CECB7FA2219785';
wwv_flow_imp.g_varchar2_table(84) := '64F59188BE7BE9DBB46E716345ECA3D3DC04B6EC1DD09FDC78BDA653B3EF040837352BD2D10E4608542D010440D5860EC3B3A994928383AE87009915DA5F3C6FA3CEEFE9AD08AC5D93937ADFD557B82E005CD6D2AA2B2BBC43A12260AAA4D3E7C6F6E9FD';
wwv_flow_imp.g_varchar2_table(85) := 'D75CA5A9E4EC3526CC91C0A624301704AA950002A05A2387DDCA26124AEC1950263E7BCDF6BADA3A7DFE9C732B5604E8F9F1317DF8DA6B34E65253FE84152BF5DD73CE23921E25B06DFF7EFDCE5557682231FB21538E0058B2845A001E8D1F66E5278000';
wwv_flow_imp.g_varchar2_table(86) := 'C8CF883B3C4AC06C014CF4EF76AD02B8B4B54D9F38F5349DD6DE51110F7E36B0479FBEF5668DBB9C5278DE61EBF4A5534FAB886D749A9F40FFD4A4DE7BC5E5AEF1330220D2D6A6402492BF31EE8080070920003C18944A996486D4CD5B75D665D1D3BCED';
wwv_flow_imp.g_varchar2_table(87) := '0A0414ACA92959F1947C02605547A7BE70E6D95ABB68D1BC4D9F4B03FFB56DABBE79CFDDDA9F48CCFAF8A5471FA3CF547087C25C7CB2E9993D53537ACF95976BDC650427D4D070500044A325C1623E7F26A74D75CBB25CC1A082FF531A3B10E6BC89B2F0';
wwv_flow_imp.g_varchar2_table(88) := 'ADC24611005518B4529B9C99997116D3994575CA64A5809435F39EA5FA220A860EFEE89BF642E64B28A6485BEBBCDF9C0E0A807E992FCED9AEB54BBAF4ADF3CE576BB432C55AFEF9B967F5ADFBEE710DD77B8F3F411F3FFAD8528793F64A4460EFF4B4DE';
wwv_flow_imp.g_varchar2_table(89) := '73D515DAE772D0543056A368D792790B00F3594B0E8F2863A61ACCE74F7AF5B338FBF1D645BB170828107E75942218703E8B91D656056B6B8B6E8A07FC450001E0AF7816ED4D7A725289DD7B5C6BE917DD60A10F04828AF5F6CCEB4BC811007D7D07BF2C';
wwv_flow_imp.g_varchar2_table(90) := '67B90EEBEAD6B7CFDBA8C60A0DD1FEFD938FEBFB0F3DE84AE403279FA28F54708B62A1A1B2F5BED1F88CDE79CDD51A9D987D97897993362702CEA71AA011DFF15DBB4A27B60B0D5620A8684F37858C0AE5E5D3FB10003E0D6CA16E2576EF765D455F681B';
wwv_flow_imp.g_varchar2_table(91) := '73BDCF1451711651CDF172BE3CFBFAA5CCEC02607D778FBE73DE46D55768C8F3B30F3FA8AB9E78DCD5BB3FD87086FED7DA43E7E83D8F959BC04422A1B75D7D954626C666EDCABC499B6A80F3110089BD7B736E632DA78FEC622827DDEA681B01501D712A';
wwv_flow_imp.g_varchar2_table(92) := '9B95E6201DB721F4B275FA6AC3660835B67CD99CBBC927008EECE9D577CFDBA89A0A1DD8F2897BEFD12DCF3FEBEADF5F9C73AEDEB562D59CFDE7C1F212984C2675E9D5576A787C7601A060E8E028564DCD9C0D89EFDCA5CCCCECE744CCB9D1021F34D302';
wwv_flow_imp.g_varchar2_table(93) := '35AB2A5323A34013B9ADCC0410006506ECE9E6F31CA55B6EDB8335B58A2D5B3AE76EF2098023BA7BF5DDF33756EC98DD4F3EB045D73F3D7B19E0C6584C7F7EF6B9DAD4DD3367FF79B0BC048C00B8E4AA2B5D4700E62D00B259C577F5554E00FC4F9D0C73';
wwv_flow_imp.g_varchar2_table(94) := 'A2A12A785266792348EBF9082000F211F2F9DFCDFC63C6E5A4BA72BB1E6E6A52A463EE5BF4F2AD0158DBB944DFDB78811A2AB406E05F5F7C41FF78CFDDB3D6926FAAA9D13F5D7CA90EA3967CB9D36CCEED8F27E2CE1480EB1A8068D4290434AF29803D03';
wwv_flow_imp.g_varchar2_table(95) := '4AEF9F98B38DF37930545FEFAC61E0B2970002C0DED83B9EA72726941C1A725D4857363C25588464B62CC6CD2240975D002BDADBF5E9D34ED7712DAD65732357C37DD3537ACF1597EBC02CDBC82E5C7F843EFFE6532A62179D1646607866466FBFF2724D';
wwv_flow_imp.g_varchar2_table(96) := 'B894720ED6D529DAD131AF5D00E6F367D601946CC74D61AE1DDC09D0D121B30E80CB5E0208007B637FD0F36C56662780A9A79F9E9E715D50572A4CE68BC76C3F325F3CF3FDF231DBA7E2661BA0CB3EFBE5AD6DFAB3534FD3C9152A0464983D3136A67F7F';
wwv_flow_imp.g_varchar2_table(97) := 'EA093D3FB05733C98416D7D5EACCD56BF4DB871EAE9612ED1F2F556C68E79709EC9A3CA05F3702CE25BF8275F58A7676CC7B3BAB1101E6336846E2CABA1E2710747EF84DDD827053A3CC0800C3FF76673D02C0EEF8FFDCFB6CD6D9FBEF14032AD5FEFF37';
wwv_flow_imp.g_varchar2_table(98) := 'B2358580CC8AFC7058816070DEE48DAD893D7BDCA7300201FDFDE60B75D692EE79F7359F061299B4F69B730B3259D584825A148E28C4BCEB7C902EC8B32F4F8C3BA580CD5A80D9AE9296027EF5F39731A35965FAFC054CCE1901108994E4F3B72041A093';
wwv_flow_imp.g_varchar2_table(99) := 'B212400094152F8D9793807318D0D090D2FBF7BB76F3C54D9BB5B142870195D377DA2E3F81274647F4916BAF713F0C689EDB58CBEF013D4020370104001952B5041C01608E039E705F44F59973CFD7A5CB5754AD8F185E39020F0C0EEA8F6FB84ED3A9D9';
wwv_flow_imp.g_varchar2_table(100) := '4700E6BB88B5729ED133040E1240009009D54B209B55C21C073C3E7BA536E3D89F9F758E7E6DD5EAEAF511CB2B46E096FE5DFACCADB768DA659169B8B95991F6F68AD947C710982F0104C07C09F27C4509240787941ADBE76AC31F6E3843EFA3DA5E4563';
wwv_flow_imp.g_varchar2_table(101) := '548D9D9B753097BDF2B2BE7ECFDD8ABB949A0EB7B629D2DA528DEE61330418012007AA9F40726454A9916157477EE38413F527471D53FD8EE2C1C212C866F595271FD70F1E7EC8B55FF3F66F4601B82050AD041801A8D6C861B743C0D9473D30E04AE3EC';
wwv_flow_imp.g_varchar2_table(102) := 'C30ED7DF9DBA015A10288A801901F8E85D776ACB2B2FB93E678A00CD772B6B51467133044A4C00015062A034B7B004CCDE69E73435976B5D4FAF7EB069F3C21A456F554F2093CDEA929F5EADBEA141575F62CB96CDEB1C80AA878403554F000150F521B4';
wwv_flow_imp.g_varchar2_table(103) := 'DB01B3136066DB36D7BDD32B5A5A74D95BDEAA58850E04B23B3AD5EBFD4C3AADB32FFBA1A6731CD463EAE89B2381B92050AD041000D51A39EC3E4820CF81461DF50D32B5008E6D6A8218040A2660CA385FFAE3CB944EA7667F261054ED9AD554D22B9828';
wwv_flow_imp.g_varchar2_table(104) := '377A910002C08B51C1A6C20964B3CE08805B09D586584C7F76F6B9BA8853F70A67CA9DBA6F78487FF8D36B94CEA467A5E11CA5BB720502805CA96A020880AA0E1FC61B02F11D3B9589CFB8C2F8E0E967EA4387AC0516040A26F0FDADAFE8AB77DEEE5A16';
wwv_flow_imp.g_varchar2_table(105) := 'DB39CA7A692F02A060A2DCE8450208002F46059B8A2290D8BD5BE903075C9F39F7E863F4E5E34F2CAA4D6EB697805900F8A70FDEAFDB9F7ECA1582730E405797BD90F0DC17041000BE08A3DD4E98F30052FBDC8B012DEFE9D1551B37F3B666779A14ECBD';
wwv_flow_imp.g_varchar2_table(106) := '39BCE9826BAED6688EFA12E1D656455A2B73CC74C18E702304F21040009022554F20353E2E531150D9CCACBE34D4D5EB7B17BD456B39FBBCEA63BD100E6C3D7040EFF8EFFF52D6E50C000543CE31C0D400588868D04739092000CA4997B6178440666646';
wwv_flow_imp.g_varchar2_table(107) := '89DD7B5CBFB043C1A07EFFCCB3F43B2B391360410252E59DFC64E70E7DE1969B5CBD300B00A33DDD0AC66255EE29E6DB4E0001607B06F8C4FF785F9F325353AEDE9CB26EBDFEF1E4537DE22D6E948B403293D15F3EF2A06E7DF249D72E8275758AF5F696';
wwv_flow_imp.g_varchar2_table(108) := 'CB04DA85C0821140002C186A3A2A27817CEB003A3A3A74ED856F5124182CA719B45DE504C69209BDF5BA6B35966BFE9F5300AB3CCA98FF1A010400B9E00B02E9C94925FAFB5D7DA9A9ABD7BF5C7891D62F6EF485BF38511E02CF4C8CEBB7AEB93AE7B6D2';
wwv_flow_imp.g_varchar2_table(109) := '6877B7420D0DE531805621B0800410000B089BAECA47209B486866C70ED792C08160481FDAB041BFB7867A00E58B4275B76C0E00FAE1F6ADFACA9D774A2E058014082AB66C29F3FFD51D6AAC7F9500028054F00581ECFFCCDD26FAFA95C951BBFDD8430E';
wwv_flow_imp.g_varchar2_table(110) := 'D1BF6E3893ED80BE8878E99D984EA7F527F7DDA32D2FBEE0DA78B0AE5ED1AE250A70B644E903408B0B4E0001B0E0C8E9B05C0492C3C34A8D8EBA361FA9ADD50DEFF835B546A3E5328176AB98C09E99695D74F94F9489C75DBD08B7B629D2DA52C55E623A';
wwv_flow_imp.g_varchar2_table(111) := '047E4E00014036F88680D90EE81C0D9CCDCEEE5320A0FF7DCEB9FACDE52B7DE3338E94884036AB1FECDCA1AFDC768B7BFE488A2D5FCEF07F8990D34CE50920002A1F032C2815017330D0D6ADCAA6673FC0C574D3D3BB54D79EBF8969805231F7493B13C9';
wwv_flow_imp.g_varchar2_table(112) := 'A43E76DFBD7AFCE5175D3D3247FFD6AC5C49EEF824E6B8212100C8025F11480C0C283D31E1EA533056A3FFB8F812AD6F643780AF023F4F67EE1F19D647AEBF566631A9DB156A6C54B4B3739E3DF13804BC430001E09D5860490908984381127B065CCB02';
wwv_flow_imp.g_varchar2_table(113) := '9B2EDE71C289FAE49147F3265702DEBE68229BD5E79E7C5C573CFC90BB3BA6FC6F7797427575BE7019272060082000C8035F1130C3FF893D7B725605AC5BDCA86B2EB954AD514AB9FA2AF8737466FBD4A47EFFD69BD53F34E43E725457AF584F37A2718E';
wwv_flow_imp.g_varchar2_table(114) := '8C79CC9B041000DE8C0B56CD83406ACC1C0EB4D7B505B385EBAFCEDFA84BBB29E73A0FCCBE79F4FB3BB6EBAB77DEAE6C2AE5EA53A4B35361A68D7C13731C394800014026F88E403699D4CCB66D39FD3A72F51AFDD369A7AB3E1CF69DFF38543881914442';
wwv_flow_imp.g_varchar2_table(115) := '7FB2E55E3DF1F24BEE0F0502AA59B1428148A4F086B9130255400001500541C2C4220964B3720E079A9E761F050887F5854D9BB5B17349918D73BB9F085CB1BB4F9FBFF9A69C3B474CF11F86FFFD14757C798D0002805CF02501B313C0EC08C8751D73E8';
wwv_flow_imp.g_varchar2_table(116) := '61FAFA49276B316F76BECC817C4E0DC5E3FAF803F7EBC997DC2BFF9936A25D5D0A2D5A94AF39FE0E81AA238000A8BA90617041044C4D806DDB954D25DD4701A2517DE1FC8DDAD8D9555093DCE42F023FDAB9435FBEEB8E9C5BFFCC7A919A55AB58FCE7AF';
wwv_flow_imp.g_varchar2_table(117) := 'D0E3CDAB041000A4826F09244746941A19C9E9DF51AB56E9ABA79EAE16CA03FB360F66736C381ED707EFBA5D5B4DE5C81C57B8A54591B636ABD8E0AC3D041000F6C4DA3A4F4D5117B31620D7EA6E53DDEDAFCFDFA8B774F558C7C766879DB7FF3B6ECB9D';
wwv_flow_imp.g_varchar2_table(118) := '1B91A833F71F401CDA9C2ABEF61D01E0EBF0E25CBE03820CA1752B57EAEBA79EAEB61875016CC818F3F6FFDBB7DDA2DD7B76E774D7BCF99B11002E08F8950002C0AF91C52F878039267866EB36F7F3DD258582217DF2DCF3F4D6A5CBA06601811F6EDFA6';
wwv_flow_imp.g_varchar2_table(119) := 'BFBFE336A53319776F8366EE7FA502C1A0054470D1560208005B236F91DF858C02ACEAEAD2D7CF3A47BDB5947AF5736AEC9E99D67BAFBF5663FBF6E57493637FFD9C05F8F61A010400B9E07B02A63C707CC7CE9C3B020C84F38E384A5F38F124850201DF';
wwv_flow_imp.g_varchar2_table(120) := '33B1D1C16C36AB3F79608BEE78E6E99CEE07CCDCFFF265BCFDDB982496F98C00B02CE0B6BA9B1A1B53727030A7FB35D198FEE29C73F5966E1604FA314F6E18D8A34FDF74A3D239B6861ABF231D1D0A3735F911013E41E09708200048082B0898B500895D';
wwv_flow_imp.g_varchar2_table(121) := '7DCAC46772FABBB2BB5BDF38F36CA6027C9615FB1209BDEDDAABF30EFD076B6B15EDE9E1EDDF67F1C79DD9092000C80C6B08A4A7A694E8EBCBEBEF05471FA3FF7BFC8979EFE386EA206086FE3FFDC843BAEE89C7F31A1CEBED5590237FF372E2067F1040';
wwv_flow_imp.g_varchar2_table(122) := '00F8238E78512081C4EEDD4A1F3890F3EEDA58ADFEEA9C73B4A9ABBBC056B9CDCB04EE1ADCAB8FDF78BD5249F7AA90C6FED0A2C58A767136849763896DA5258000282D4F5AF338015314C8290E9448E4B474797B87BE7DFE262DA9A9F1B84798978BC09E';
wwv_flow_imp.g_varchar2_table(123) := '9969FDFA4FAFD6D8C4444E50A6D84F6CE95299D2BF5C10B0850002C09648E3E7EB04D293934AF4F7E72572C2AAD5FAF699672BC8AE80BCACBC78C3FE54527F76EF3DDA92EBA8DF570D8FF6F62AC4D0BF17C3884D6524800028235C9AF62E81C49E01A5F7';
wwv_flow_imp.g_varchar2_table(124) := 'E77E2B34D6BFF3B837E92F8F398EC360BC1BCA592D4B64D2FAC6D34FE9070F3D98D772B3E2DFACFCE782806D041000B6451C7F1D026657407CFB8EBCB501CCBD7F7AD639FAF555AB2157250432D9AC7EBC7DABBE7CFB6DCAE6B1D9ECF9AF59B11C815725';
wwv_flow_imp.g_varchar2_table(125) := 'B1C5CCD2124000949627AD551101B3183031B037679960E34E2814D6B72EBA5827B6B5579177F69A7AF7E05EFDE90DD729914AE58460E6FB235D5D0CFDDB9B2AD67B8E00B03E05EC0690DAB74FC9A1A1BC10DA1A1BF5EF9B2F560FF3C4795955F2869D93';
wwv_flow_imp.g_varchar2_table(126) := '93FADD1BAED5F0F8785E33221D9D0A3735E6BD8F1B20E057020800BF4616BF0A2690D8BB57E9027E300EEFEAD277CFDFA48670A4E0B6B971E1088C26E2FABD9B6ED02B792A3E1A8BC2CDCD8AB433A2B370D1A1272F12400078312AD8343B81FF29E8628A';
wwv_flow_imp.g_varchar2_table(127) := 'F964A6A79D6D7CA1458B146A6828C9FC6D21F5018C5127AD58A92F6E38434D9C11EFA92C3D904CEA0FEEB8558FEFDA95D72E9333D1EE12D47830F93839A9F4FEFD0AD6D4BCFE4FEC1AC91B036EF00601048037E28015790864E27125F70E2A3333FD4B77';
wwv_flow_imp.g_varchar2_table(128) := '86EAEB9DD2ADF3BD9C03834C7D80783C6F53272C5FA1BFD970BADA63D408C80B6B016E184F26F4A15B6ED6F37B76E7ED2D18AB51B4B767FEFBFDB359C5FBFB95999AFAA53E8335B58A747628188BE5B5851B2050690208804A4780FE7313C866951C1D55';
wwv_flow_imp.g_varchar2_table(129) := '6ADF98EB62BD52CDE5669349C577EE941103F9AEE3972ED367379CAE6E8E0FCE87AAAC7F3735FE3F78D38D7A6970206F3F66D19F53ECA704A337C99151A5468667EF331852B8B949919696928C4EE5758C1B2030470208803982E3B1F213306FFDA9E161';
wwv_flow_imp.g_varchar2_table(130) := '679835D7E5BCD57577291099FFDCBC19CE4DEC1DCCBB33C0D873DCF2E5FAAB934FD3F2FAFAF2C3A0875F21B07B7A4A1FBBFD36BD3CB0273F9D6048D1CE0E67DA68BE97231477ED92A92A99EB32A353E1B6364603E60B9CE7CB4600015036B4343C1F02E9';
wwv_flow_imp.g_varchar2_table(131) := '89092506870AFA215609BFDC8DCD39DFEEDEE0D4D13DBDFAD4691BB4A661FE3F2CF3E165DBB3BBA626F587B7DEAAED437B0B723DD2D6A6B079232FC1E588C43D05880ED3578973B304E6D304045E27800020193C45C0BC5D254746640440A157201653AC';
wwv_flow_imp.g_varchar2_table(132) := 'BBBB2423004E9F66DA617858668B6021D7115D3DFACCE9A723020A8155827BF64C4FEB03375EAFFED191825A0BB7B629D2D25CB2E1F84247007ED1B85063A322ADAD0A84C305D9CC4D10580802088085A04C1F0511302BFC5343C3CAC4670ABAFFB59B22';
wwv_flow_imp.g_varchar2_table(133) := '9D9D0A3796783FB7110143C34A8D8F398220DFB5BE77A93E77DA06ADAC6FC8772B7F9F0781A1F88CDE77D38DEA1F1ACCDF4A2020A7CC6F5B5BC97EFC5FEB34353EAEA4D96E58406EBCF68C99AA8AB4B771DC70FEC871C7021140002C1068BAC941E0B51F';
wwv_flow_imp.g_varchar2_table(134) := 'DBB1C2DEB87FB1A5520EEDCE666131D301EB7B7AF5F5B3CF516B9415E0E5C8F7D144421FBEF926BDB8B7B0E177B3CFDFECF72FD7E58880BD854D41FCA20DE1265383A0F4A2A45C7ED2AE7F092000FC1BDBAAF0CC6D7B5F3EE34D0D77F325EAD40128E7E5';
wwv_flow_imp.g_varchar2_table(135) := 'EC42D8A7D4E8A83940206F4FC7AD5CA96F9C7E96EA19EACDCBAA981BCC56BF3FBAE30E3DBE6B47FEC7024127379C51A132EFC9370B54CDF6D46C2A99DFAE5FB8C3190D30DB05396EBA286EDC5C5A020880D2F2A4B5420964B34A8D4F1C2CC35BC00FEB2F';
wwv_flow_imp.g_varchar2_table(136) := '366B7EF4CDE96D0B399F6A0480599B50C890EF89ABD7E81B1BCE508CB3E50BCD869CF74D2493FAC47DF7E881028EF595F9F16F6B2DEB9BFF1B8D35BB01CC7480395BA2A8CB112AED94232E0A1A3797920002A0943469AB2002A68A5F6270F0578AA8E47B';
wwv_flow_imp.g_varchar2_table(137) := 'D8FCE09B2FCC526CE5CAD7D76C7F7776269821DF02E67D4F5D7388BE79FA990A94F90D742E7E54D3330752297D6ACBBDBAEBC517F29B1D082ABAA4B332F961AA021E38E0088142EA48FCA233C1BA7A453BDA4B529F203F24EE80C0CF092000C886052560';
wwv_flow_imp.g_varchar2_table(138) := 'E64D53232379F750BFD128E74BB2B3A3742BFDE7E8756A6C4CC9E19182B6279EBDFE48FDDD496F2EFB30F41C5DF1FC6393A9943EF3F043BAED99A7F2DB6AB6DB75B42BB47871FE7BCB78C741713BA4CC54EEDA156F3421108E38231795B6BF8C6868DA83';
wwv_flow_imp.g_varchar2_table(139) := '0410001E0C8A2F4D7216FA0DC9FC8016759995DC2DAD8AB496660F77517DBBDCEC880067EA22CFEE8040407F78E6D97ADFAAD5A5E8D6BA36BEFBF28BFAF6DD77295B00E7487B87A786D29DC5A3669B623EDBDF105567D78239A4889123EBF2BD120E2300';
wwv_flow_imp.g_varchar2_table(140) := '2A41DDB23ECDD0686A64B4E8ED7DC1DA5A670B97F9AFD7AE42A7039A1637EA9F2FB8506BCABD58D16B80E669CFF3FB27F447B7DCACBDFB4673B7140838EB414ABE0D749EF69BC7CDA155A69E84F96F319759201836A30154982C061BF7CE810002600ED0';
wwv_flow_imp.g_varchar2_table(141) := '78A44002D9AC33D79FDE7FA0A021F3D75B75DEFA5B9C3DDCA67EBB57AF42DFF22E3CEA68FDD59B8E5734E85D5FBCC43893CDEA63F7FE4CF7BCF07CDE1F7FAF8D0EBDD160B340D099F61ADD57D4625793F7660BA3B38D91D1002FA5A7AF6C4100F82A9C1E';
wwv_flow_imp.g_varchar2_table(142) := '72C6E5B4B4BC169AB9DCEE2E85EAEAF2DEEA851B9CDD01C32E87C2BC666020A0AF5C78B1CEE95CE205933D6FC375BBFBF5B95B6E523C4FAD7DA7C29F87A686728135A706C677EF294E084B321504A31D1D8800CF676D751A8800A8CEB879DEEAD4D8B892';
wwv_flow_imp.g_varchar2_table(143) := 'A65A5B1173A0C1BA3A67FEB3AA8E527D6D94637C3C674C8E5EBE427F77FA191409CA93B9D3E994DE77CBCD7AA1BF2FE79D66B15CB4B3B3AA7E18E7B4FBC56C15EC68F7E41487E7BF8430302F0104405E44DC301702E6B01473684A2157B50F77663319C5';
wwv_flow_imp.g_varchar2_table(144) := 'B76DCBBBFDEBA31B4ED7FBD71E5608126BEFF9FAB34FEBFF6DB94F3997570682AA59B5D2D3D343AE0134F52FF6ED73FE15BA5DD06C7B8D7675599B13385E3E020880F2B1B5BAE5C4C0404107FA98B77EF326578AA37C2B09BC90B2B0DD8B1BF5CDCD176A';
wwv_flow_imp.g_varchar2_table(145) := '15E705CC1AAA1D93937AFFB5576B384F419DB29CFDB0C0C9630E14323525CCD440BECB990630A31D5C1028310104408981D2DC4102E6609F44AE39CF4050E1E626E784345F2C72325301037B95DE9FFB14C33FDA70867E7BEDA1A4C92C04BEF3EC33FAF6';
wwv_flow_imp.g_varchar2_table(146) := '967B73B2A9C6A1FF5CA301A6BA646A9F3970CAA5CC7430A45877170708F189290B01044059B0D2A82160DE70D2B3CC8D07A25167619379FBF7D365CE3588EFDC9573B5F79BBA7BF42F176C9614F093EB25F1E5DD575FA9178687DCDB3243FFCB97F9AE62';
wwv_flow_imp.g_varchar2_table(147) := '9E739EC0E090B2C9C4AFF8EE089E252C1E2D4982D1C8AF1040009014E523F0EA02B9CCD4B433DF1908069C55CD5EDFDE371F20666ED72912E472B5D4D4EAEF375FA8A39BBD53D8683EFE96EAD9A7C7F6E977AFBA428974DAB54967BF7F5353A9BAF4543B';
wwv_flow_imp.g_varchar2_table(148) := 'E6F36116CEA6C7C794CD649DF50DA1FA838B627D3142E629DA18F31A010400B9505E02D9AC3289C44101100A55D70AFFB990C96635B36387CC8A6FB7EB83279FA20FAD3B622EADFBF6996F3CFDA4FEED81FB5DFD33A5726B56AEF0FD8FA119457AFDB312';
wwv_flow_imp.g_varchar2_table(149) := '8DFADE5FDF267495388600A892406166F510C8571BE0D0AE6EFDF3791BB52812A91EA7CA68A929F57BF13557AA3F473D8570AB2907DD5A462B681A02F6114000D817733C2E3301A7E84B7FBF6B0D84C535B5FADBF337E9CD6678974BCF8CEDD36F5D7985';
wwv_flow_imp.g_varchar2_table(150) := '321997E1FF4040B19E1EDFAD1921F410A834010440A52340FFBE236086704D1D845C5BBC7EEBF813F4C7471FEB3BDFE7E2D0971E7B443F7AF411D7479D9320BBBB140806E7D23CCF4000022E041000A40604CA4020DF34C021ED1DFAC9C597583FC79BCC';
wwv_flow_imp.g_varchar2_table(151) := '6474C1E53FD1488EED9366219C53139F0B021028290104404971D218040E1270B604EED8E18AA3BD7E91FEE1A28BB4B66191D5C8FAA6A674E97FFD58E954D29543CD8A15BEDBFA6775D071DE330410009E090586F88A80D90D60CA03BB1C68D35853A33F';
wwv_flow_imp.g_varchar2_table(152) := '3FFB5C6DEAEAF695DBC53AF3D8E8883E70F5554ABBCCFFDBB2FABF586EDC0F81521040009482226D40601602F15DBBDCCF820F04F4BFCF3C5BBFB96AB5D5EC6EDDDDAF3FBFF946A55DF6FF87EACDFC7FB7F55325562709CE978D0002A06C6869D8760289';
wwv_flow_imp.g_varchar2_table(153) := '3D03EEA5810301FDCE4927EB63EBEDAE07F0FD975FD4D77E76B73299D94BE19AC23FA60010170420507A020880D233A54508380492C3C3328B01DDAE4B8E39567FFDA613ACA56516007EF589C775D9A30FCF7EFA9F392FA2A5459156AA265A9B24385E56';
wwv_flow_imp.g_varchar2_table(154) := '020880B2E2A5719B09A4C6C6941C1C744570DADA43F5CD0D67588B289149EBCFEFBD4777BCF8C2EC0C822145DADB146E6CB496118E43A09C041000E5A44BDB561348EFDFEF9C0BE0B610F0F09E5EFD70D305D61E0C34954AE90337DFA867F7EC9E354F02';
wwv_flow_imp.g_varchar2_table(155) := 'E1B073108EDF0E8DB2FA4381F39E228000F0543830C64F043233334A0C0CB89E0BB0B4A555575FFA360502769E0C38994AEAED57FEB7F64ECC7E84B2393532D6DB2B2304B8200081D2134000949E292D42C02160DEFC4D49E06C3C3E2B919EC6465DF9B6';
wwv_flow_imp.g_varchar2_table(156) := '772A626985BBFDC9A4CEBFEC879A49CCCE2718AB5174692F1500F93C41A04C04100065024BB3105036ABF8AE3E6566A66785D1BBB85197BFED1D8A854256C2DA97886BF3653FD24C72F693138335B58A2DED650BA095D981D30B410001B01094E9C34E02';
wwv_flow_imp.g_varchar2_table(157) := '08809C714700D8F9B1C06BEF10400078271658E2370208000480DF721A7F7C450001E0AB70E28CA708200010009E4A488C81C02F134000901110281701040002A05CB945BB1028010104400920D20404662580004000F0D18080870920003C1C1C4CAB72';
wwv_flow_imp.g_varchar2_table(158) := '020800044095A730E6FB9B0002C0DFF1C5BB4A12400020002A997FF40D813C041000A40804CA450001800028576ED12E044A400001500288340181B9AC01E86C58A4CBDFFE0E35842356023467019CF3C3FFA4109095D1C7692F10400078210AD8E04F02';
wwv_flow_imp.g_varchar2_table(159) := '7946006AC2617D73F3455ADBD42CF36368D3150905954D67B4E947FFA974363BABEB5402B42923F0B51204100095A04E9F7610C823000C84E69A1AC9C211806020A0447C46FB13B39701366C1000767C4CF0B27204100095634FCF7E27508000F03B82F9';
wwv_flow_imp.g_varchar2_table(160) := 'F88700980F3D9E85407E020880FC8CB8030273238000981BB7579F4200CC0B1F0F43202F0104405E44DC008139124000CC11DCC1C71000F3C2C7C310C84B00019017113740608E041000730487009817381E8640810410000582E23608144D00015034B2';
wwv_flow_imp.g_varchar2_table(161) := '5F7C80118079E1E36108E4258000C88B881B20304702088039826304605EE07818020512400014088ADB20503481420540205074D3BE78C065FFFF6BBE3102E08B28E384870920003C1C1C4CAB72020508808BD71EAABAA62665331965F3FC2056398DD7';
wwv_flow_imp.g_varchar2_table(162) := 'CD0F04020A04839A1E1BD7352F3EEFEA1602C02F11C70FAF124000783532D855FD04F209804050EF79F39B158AD8590A389D4AE9475BEE93A80458FDB98E0755490001509561C3E8AA2050800078F74927291C8D56853BA536329D4CEA47F7DF2F6533B3';
wwv_flow_imp.g_varchar2_table(163) := '36CD0840A989D31E047E990002808C8040B9081420007EED84131431E5802DBC923333FAF1430F21002C8C3D2E7B830002C01B71C00A3F124000E48C2A02C08F498F4FD5440001504DD1C2D6EA22800040005457C662AD6504100096051C771790000200';
wwv_flow_imp.g_varchar2_table(164) := '01B080E946571028960002A05862DC0F8142092000100085E60AF741A00204100015804E979610400020002C4975DCAC4E020880EA8C1B56570301040002A01AF2141BAD258000B036F4385E760208000440D9938C0E203077020880B9B3E34908E42680';
wwv_flow_imp.g_varchar2_table(165) := '004000F0198180870920003C1C1C4CAB72020800044095A730E6FB9B0002C0DFF1C5BB4A12400020002A997FF40D813C0410230D0F7600000FB64944415400A40804CA450001800028576ED12E044A4000015002883401815909200010007C3420E06102';
wwv_flow_imp.g_varchar2_table(166) := '08000F0707D3AA9C0002000150E5298CF9FE268000F0777CF1AE9204100008804AE61F7D43803500E400042A440001303F0110AB516CD9522910A85000E91602FE26C00880BFE38B77952490570004F4AEE34F50B4B6B6925656ACEF83C7013F2865B3B3';
wwv_flow_imp.g_varchar2_table(167) := 'DA10ACA9556C692F02A06211A263BF134000F83DC2F8575102F1BE7E65A6265D6DB8F4F813D4505757511B2BD5F981A9295DF5F043AEDD07EBEA14EBEDAD9479F40B01DF134000F83EC438584902893D7B94DEBFDFD584CDC7BD492D0D0D9534B1627D8F';
wwv_flow_imp.g_varchar2_table(168) := '1C38A01B1E7DC4B5FF504383A2DDDD15B38F8E21E077020800BF4718FF2A4A203938A8D4D898AB0D67AC5BA7A56DED15B5B1529DEF181ED6CF9E7DC65D0034362ADAD95929F3E81702BE278000F07D8871B092049223A34A8D0CBB9AB0AEBD5DC71E7A98';
wwv_flow_imp.g_varchar2_table(169) := '02C16025CD5CF0BE33E9B41E7BF1253D37B4D7B5EF704B8B226D6D0B6E1B1D42C0160208005B228D9F1521901A1B5772D0FD47CE18158CD528100ED9B3D82D9B55269552361ECF1993487BBBC2CDCD15891B9D42C0060208001BA28C8F152360E6FFCD3A';
wwv_flow_imp.g_varchar2_table(170) := '00AEE20944972C5168F1E2E21FE4090840A0200208808230711304E646203D35A5445FDFDC1EB6FCA9684F8F42F5F59653C07D08948F0002A07C6C691902CACCCC28BEAB4FCA66A0510C8140D0A90110ACA929E629EE8500048A208000280216B742A058';
wwv_flow_imp.g_varchar2_table(171) := '02D96452F1FE7E651389621FB5FAFE4034AA5877B7CC7FB9200081F210400094872BAD42E020816C568981BD4AEF9F80481104CCDCBFB3059032C04550E3560814470001501C2FEE8640D104D213134A0C0C14FD9CCD0F44BBBA145AB4C86604F80E81B2';
wwv_flow_imp.g_varchar2_table(172) := '134000941D311DD84E209BC968E6E5970BC3E0F7375E97BAFFBF04271852EDEA55BCFD179631DC058139134000CC191D0F42A07002F15DBB94999E767DA03618D239AB5669517BBB4C919CACF9A12CE4C7B270132A776720A04020A06028A403C3C3BAE9';
wwv_flow_imp.g_varchar2_table(173) := '955794C8A45DED092D5AAC68D792CAD94BCF10B0840002C09240E3666509A4C64D41A0C19C3FEAA7AF5BAF653EAF7CB76B6444773DF3B47B30822145BBBB14B2F480A4CA6629BDDB460001605BC4F1B72204B2A9D4C1DD0039AADFB52E5AAC4DC71CE3BC';
wwv_flow_imp.g_varchar2_table(174) := '2DFBF132A31AD73FF1B8F64DB82F88744E00ECE961F8DF8F09804F9E238000F05C4830C8AF049223234A8D8CB8BB1708E8CCC30E576FBB3F0F07DA3938A4BB5F782EE72848A4A353E1A646BFA6007E41C0530410009E0A07C6F89940261E577CC78E9C2E';
wwv_flow_imp.g_varchar2_table(175) := 'B6342CD2E6E38EF325866B1F7D4463070EE41CFEAF59B15C8170D897FEE31404BC460001E0B588608F7F0964B34E55C0CC8CFB6240E3FC59EB8F504F6BABAF38F48D8EEACEA79FCAE953B8A959910E7F8E7EF82A9838E31B020800DF841247AA81407A72';
wwv_flow_imp.g_varchar2_table(176) := '5289DDBB730E83B7363669E3114738ABE6FD70995D0D373CFD94F68D8FE77EFB5FBE4C8148C40F2EE30304AA820002A02AC284917E2210DFB92BF72880CFD602EC1A1AD25DCF3D9B33844EE5BF256CFDF3539EE38BF7092000BC1F232CF41981422A03FA';
wwv_flow_imp.g_varchar2_table(177) := '692DC0758F3DA67D394A21074266EB5FB782B5B53E8B34EE40C0DB041000DE8E0FD6F99080A90C98D8BD4799A9C99CDEF9612D40216FFFE1A626453A3A7C18695C8280B7092000BC1D1FACF32981F4D494127D7D39BDABF6BA0066DFFF758F3D9A7BE57F';
wwv_flow_imp.g_varchar2_table(178) := '20A09A152B98FBF7699EE396B7092000BC1D1FACF32B810277049CB96EBD7AABB43AE0AED151DD9567E53F657FFD9AE0F8550D041000D510256CF42581C27604346AD3914729100C5615838256FE0782AA312BFFA3D1AAF20D6321E017020800BF44123F';
wwv_flow_imp.g_varchar2_table(179) := 'AA9280D91298CE551C2710D019871EA6A5553647BE6370483FCB53F52FD4D8A868676755C60DA321E0070208003F44111FAA964021A300D5B82320DFCA7F05438AF5F628585353B5B1C37008543B010440B54710FBAB9B4036ABC4C05EA5736C93330E9E';
wwv_flow_imp.g_varchar2_table(180) := '75C491EA6969A90A5FF39EF8278995FF55114A8CF439010480CF038C7BDE27909999517CD7AE3CD501AB632D80D9E278FD134FE4DCF72FB3F27FE54A6AFE7B3F35B1D0E70410003E0F30EE550781785F9F325353398D3DF3F0759E3F29B090B7FFD0A245';
wwv_flow_imp.g_varchar2_table(181) := '8A7675554760B012023E268000F0717071AD7A08387501FACD19011957A3CD5A800B8E3D568140C0938E15F4F66FE6FE97F62A188B79D2078C82804D04100036451B5F3D4D20B16720EF5A8053D71CA295DDDD9EF4E395BE3E6DD9FA4A4EDB98FBF764E8';
wwv_flow_imp.g_varchar2_table(182) := '30CA520208004B038FDBDE2390999E3EB81620C7551B8E68F3D147ABB6BEDE530E4C4D4EEA86271ED7742AE56E5720A8D8B2A5BCFD7B2A72186333010480CDD1C7776F11287047406FC3629DBAEE70453CB2852E3135A57B9E7B56BB27739F6DE0BCFDB7';
wwv_flow_imp.g_varchar2_table(183) := 'B7CB2C02E48200042A4F000150F9186001045E2760E6D1E3DBB6299B4EE7A4D2565FAF93D71EAA4575750A8642152168AAFD8DEFDFAF2D2FBDACD1E9DC3FFE66DF7FCDCA153227FF71410002DE208000F0461CB00202AF13488E8C2835329297483010D0';
wwv_flow_imp.g_varchar2_table(184) := 'B2458BB572C912353737AB6E0116D699037E26A7A7353636AEAD7B07B4334FFD82D79C08B7B42852A5671AE40D043740A04A092000AA347098ED5F02D954CAD9119089CF14EE642070F0BC806099DFB0336999510A65B305DB16ACA955B4BB8B7DFF0513';
wwv_flow_imp.g_varchar2_table(185) := 'E346082C0C0104C0C270A617081445C09C0F60CE09F0C315EDEE56A8A1C10FAEE003047C450001E0AB70E28C9F0824F6EE557A7CBCAA5D0A37371F5CF8C7050108788E0002C07321C12008BC4AA0C05D015EE5C5697F5E8D0C7641E0200104009900012F';
wwv_flow_imp.g_varchar2_table(186) := '13C866951C1A566A6C9F97ADFC15DB9C377FB3E88F2D7F5515378CB58B0002C0AE78E36D951248EFDF2FB33B209B4878DA834034AA484B8B428B177BDA4E8C83000418012007205035044C6D00532DD0AC0BC8C4E3076B0514B11ABF5C8E06C261A7BA9F';
wwv_flow_imp.g_varchar2_table(187) := '19F20FD6D6B2D7BF5CA06917022526C008408981D21C041682801100E6F4C0CC4CDC1915C82493390F122A894D466CBCBADD30108EC8BCED076B620A9A62440B5083A0243ED0080420F03A010400C900816A27F0EA288029D253F6110123005E9BD7677E';
wwv_flow_imp.g_varchar2_table(188) := 'BFDA3307FB2D278000B03C01701F0210800004EC248000B033EE780D010840000296134000589E00B80F010840000276124000D81977BC860004200001CB0920002C4F00DC8700042000013B092000EC8C3B5E430002108080E5041000962700EE430002';
wwv_flow_imp.g_varchar2_table(189) := '1080809D04100076C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED710800004206039010480E50980FB108000042060270104809D71C76B0840000210B09C0002C0F204C07D0840000210B0930002C0CEB8E3350420000108';
wwv_flow_imp.g_varchar2_table(190) := '584E0001607902E03E0420000108D84900016067DCF11A02108000042C278000B03C01701F0210800004EC248000B033EE780D010840000296134000589E00B80F010840000276124000D81977BC860004200001CB0920002C4F00DC8700042000013B09';
wwv_flow_imp.g_varchar2_table(191) := '2000EC8C3B5E430002108080E5041000962700EE4300021080809D04100076C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED710800004206039010480E50980FB108000042060270104809D71C76B0840000210B09C0002C0';
wwv_flow_imp.g_varchar2_table(192) := 'F204C07D0840000210B0930002C0CEB8E3350420000108584E0001607902E03E0420000108D84900016067DCF11A02108000042C278000B03C01701F0210800004EC248000B033EE780D010840000296134000589E00B80F010840000276124000D81977';
wwv_flow_imp.g_varchar2_table(193) := 'BC860004200001CB0920002C4F00DC8700042000013B092000EC8C3B5E430002108080E5041000962700EE4300021080809D04100076C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED710800004206039010480E50980FB10';
wwv_flow_imp.g_varchar2_table(194) := '8000042060270104809D71C76B0840000210B09C0002C0F204C07D0840000210B0930002C0CEB8E3350420000108584E0001607902E03E0420000108D84900016067DCF11A02108000042C278000B03C01701F0210800004EC248000B033EE780D010840';
wwv_flow_imp.g_varchar2_table(195) := '000296134000589E00B80F010840000276124000D81977BC860004200001CB0920002C4F00DC8700042000013B092000EC8C3B5E430002108080E5041000962700EE4300021080809D04100076C61DAF2100010840C072020800CB1300F72100010840C0';
wwv_flow_imp.g_varchar2_table(196) := '4E0208003BE38ED710800004206039010480E50980FB108000042060270104809D71C76B0840000210B09C0002C0F204C07D0840000210B0930002C0CEB8E3350420000108584E0001607902E03E0420000108D84900016067DCF11A02108000042C2780';
wwv_flow_imp.g_varchar2_table(197) := '00B03C01701F0210800004EC248000B033EE780D010840000296134000589E00B80F010840000276124000D81977BC860004200001CB0920002C4F00DC8700042000013B092000EC8C3B5E430002108080E5041000962700EE4300021080809D04100076';
wwv_flow_imp.g_varchar2_table(198) := 'C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED710800004206039010480E50980FB108000042060270104809D71C76B0840000210B09C0002C0F204C07D0840000210B0930002C0CEB8E3350420000108584E0001607902E0';
wwv_flow_imp.g_varchar2_table(199) := '3E0420000108D84900016067DCF11A02108000042C278000B03C01701F0210800004EC248000B033EE780D010840000296134000589E00B80F010840000276124000D81977BC860004200001CB0920002C4F00DC8700042000013B092000EC8C3B5E4300';
wwv_flow_imp.g_varchar2_table(200) := '02108080E5041000962700EE4300021080809D04100076C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED710800004206039010480E50980FB108000042060270104809D71C76B0840000210B09C0002C0F204C07D08400002';
wwv_flow_imp.g_varchar2_table(201) := '10B0930002C0CEB8E3350420000108584E0001607902E03E0420000108D84900016067DCF11A02108000042C278000B03C01701F0210800004EC248000B033EE780D010840000296134000589E00B80F010840000276124000D81977BC860004200001CB';
wwv_flow_imp.g_varchar2_table(202) := '0920002C4F00DC8700042000013B092000EC8C3B5E430002108080E5041000962700EE4300021080809D04100076C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED710800004206039010480E50980FB108000042060270104';
wwv_flow_imp.g_varchar2_table(203) := '809D71C76B0840000210B09C0002C0F204C07D0840000210B0930002C0CEB8E3350420000108584E0001607902E03E0420000108D84900016067DCF11A02108000042C278000B03C01701F0210800004EC248000B033EE780D010840000296134000589E';
wwv_flow_imp.g_varchar2_table(204) := '00B80F010840000276124000D81977BC860004200001CB0920002C4F00DC8700042000013B092000EC8C3B5E430002108080E5041000962700EE4300021080809D04100076C61DAF2100010840C072020800CB1300F72100010840C04E0208003BE38ED7';
wwv_flow_imp.g_varchar2_table(205) := '10800004206039010480E50980FB108000042060270104809D71C76B0840000210B09C0002C0F204C07D0840000210B0930002C0CEB8E3350420000108584E0001607902E03E0420000108D849E0FF03E9D02796C1C1A3960000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(69114777915793811885)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114769006105811870)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15642827308538
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114769384364811872)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15642827308550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114769664406811872)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15642827308552
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114769914041811872)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15642827308555
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114770352979811872)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15642827308562
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114770643143811872)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15642827308564
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114770931639811873)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15642827308568
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114771283314811873)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15642827308568
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114771591463811873)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15642827308569
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114771882205811873)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15642827308573
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114772120091811873)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15642827308573
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114772497211811874)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15642827308575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114772750808811874)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15642827308580
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(69114773040989811874)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15642827308580
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(69114780800132811890)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15642827308855
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(69114780958400811890)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15642827308867
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(69114781012496811890)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15642827308867
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(69114780484615811889)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15642827308833
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(69114780658577811889)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15642827308836
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(69114780756707811889)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15642827308849
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(69114781853478811891)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_version_scn=>15642827308870
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(69114782170055811892)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15642827308872
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115940085237816574)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15642827391659
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115829148014815740)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15642827378958
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115947644375816582)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(69115947644375816582)||'.'
,p_location=>'STATIC'
,p_version_scn=>15642827391760
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115947981886816582)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115965409352816937)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(69115965409352816937)||'.'
,p_location=>'STATIC'
,p_version_scn=>15642827396678
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115965793444816937)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115966132572816937)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115966566897816937)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115977824271816946)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(69115977824271816946)||'.'
,p_location=>'STATIC'
,p_version_scn=>15642827396875
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115978150338816946)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115978531996816947)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115978943560816947)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115979351194816947)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/milestones_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115353089688814244)
,p_lov_name=>'MILESTONES.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'MILESTONES'
,p_return_column_name=>'MILESTONE_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15642827344203
);
end;
/
prompt --application/shared_components/user_interface/lovs/projects_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115336198178813533)
,p_lov_name=>'PROJECTS.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PROJECTS'
,p_return_column_name=>'PROJECT_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15642827331524
);
end;
/
prompt --application/shared_components/user_interface/lovs/team_members_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115313007073812814)
,p_lov_name=>'TEAM_MEMBERS.USERNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TEAM_MEMBERS'
,p_return_column_name=>'TEAM_MEMBER_ID'
,p_display_column_name=>'USERNAME'
,p_default_sort_column_name=>'USERNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15642827320837
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115858959697816477)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15642827389546
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115829722071815754)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(69115829722071815754)||'.'
,p_location=>'STATIC'
,p_version_scn=>15642827378983
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115830000403815754)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(69115906760245816536)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(69115906760245816536)||'.'
,p_location=>'STATIC'
,p_version_scn=>15642827390839
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115907076791816537)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69115907438636816537)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(69114782403574811892)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(69116045858307817682)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(69114773918797811875)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69114774173706811875)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69114806196120812100)
,p_short_name=>'Team Members'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69115327577585812827)
,p_short_name=>'Projects'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69115348490804813545)
,p_short_name=>'Milestones'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69115370476216814260)
,p_short_name=>'Tasks'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69115698203240814965)
,p_short_name=>'Links'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69115750030815815667)
,p_short_name=>'To Dos'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(69116003846477816977)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(69114774812833811876)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114773326513811874)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15642827308582
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114778161349811886)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827308795
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114778254252811886)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827308803
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114778352368811886)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827308808
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114778590601811886)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827308782
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114778889972811886)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827308817
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69114778932046811886)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827308820
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69116046080781817682)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827408352
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(69116046329093817682)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15642827408360
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(69114773651921811875)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15642827308598
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Vivi Project'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69114790489029811906)
,p_plug_name=>'Vivi Project'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115816014367815723)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(69115813303896815720)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Team Members'
,p_alias=>'TEAM-MEMBERS'
,p_step_title=>'Team Members'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69114801150791812094)
,p_plug_name=>'Team Members'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TEAM_MEMBERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Team Members'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69114801206734812094)
,p_name=>'Team Members'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'TEAM_MEMBER_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_TEAM_MEMBER_ID:\#TEAM_MEMBER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(69114781012496811890)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69114801206734812094
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69114801967504812096)
,p_db_column_name=>'TEAM_MEMBER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Team Member ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69114802303364812097)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69114802747798812097)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69114803197348812097)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69114803549750812098)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Phone Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69114803909281812098)
,p_db_column_name=>'PROFILE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Profile'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115751899571815670)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691157519'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:FULL_NAME:EMAIL:PHONE_NUMBER:PROFILE'
,p_sort_column_1=>'USERNAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69114805636871812099)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69114804456308812098)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69114801150791812094)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69114804777420812099)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69114801150791812094)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69114805267783812099)
,p_event_id=>wwv_flow_imp.id(69114804777420812099)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69114801150791812094)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Team Member'
,p_alias=>'TEAM-MEMBER'
,p_page_mode=>'MODAL'
,p_step_title=>'Team Member'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(69114781012496811890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69114792225051812084)
,p_plug_name=>'Team Member'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TEAM_MEMBERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69114796756067812091)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69114797177399812091)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69114796756067812091)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69114798564866812092)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69114796756067812091)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_TEAM_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69114798961855812093)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69114796756067812091)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_TEAM_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69114799304855812093)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69114796756067812091)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_TEAM_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114792513722812085)
,p_name=>'P3_TEAM_MEMBER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_item_source_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Member ID'
,p_source=>'TEAM_MEMBER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114792930517812088)
,p_name=>'P3_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_item_source_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114793332215812088)
,p_name=>'P3_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_item_source_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114793713620812089)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_item_source_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114794141783812089)
,p_name=>'P3_PHONE_NUMBER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_item_source_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114794512298812089)
,p_name=>'P3_PROFILE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_item_source_plug_id=>wwv_flow_imp.id(69114792225051812084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Profile'
,p_source=>'PROFILE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69114797213423812091)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69114797177399812091)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69114798017259812092)
,p_event_id=>wwv_flow_imp.id(69114797213423812091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114800138432812093)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69114792225051812084)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Team Member'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69114800138432812093
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114800522959812094)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>69114800522959812094
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114799743601812093)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69114792225051812084)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Team Member'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69114799743601812093
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Projects'
,p_alias=>'PROJECTS'
,p_step_title=>'Projects'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115322181820812822)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROJECTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Projects'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115322225845812822)
,p_name=>'Projects'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'PROJECT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_PROJECT_ID:\#PROJECT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(69114781012496811890)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115322225845812822
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115322970059812824)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115323318478812825)
,p_db_column_name=>'PROJECT_LEAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Lead'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115313007073812814)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115323785445812825)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115324131755812825)
,p_db_column_name=>'BUDGET'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115324584904812825)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8,RR:IR_PROJECT_ID:\#NAME#\'
,p_column_linktext=>'#STATUS#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115324943327812826)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Completed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115325354630812826)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115761544007815678)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691157616'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_LEAD:NAME:BUDGET:STATUS:COMPLETED_DATE:DESCRIPTION'
,p_sort_column_1=>'PROJECT_LEAD'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115327099195812827)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115325802522812826)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115322181820812822)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115326116592812826)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115322181820812822)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115326637155812827)
,p_event_id=>wwv_flow_imp.id(69115326116592812826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115322181820812822)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Project'
,p_alias=>'PROJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Project'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(69114781012496811890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115312271516812812)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROJECTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115317755461812818)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115318126583812819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115317755461812818)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115319518359812820)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115317755461812818)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_PROJECT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115319971663812820)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115317755461812818)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_PROJECT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115320348807812820)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115317755461812818)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_PROJECT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115312507881812813)
,p_name=>'P5_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project ID'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115312989512812814)
,p_name=>'P5_PROJECT_LEAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Lead'
,p_source=>'PROJECT_LEAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM_MEMBERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115313686120812815)
,p_name=>'P5_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115314090169812815)
,p_name=>'P5_BUDGET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115314492837812816)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115314896193812816)
,p_name=>'P5_COMPLETED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Completed Date'
,p_source=>'COMPLETED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115315213065812817)
,p_name=>'P5_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_item_source_plug_id=>wwv_flow_imp.id(69115312271516812812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115318223818812819)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115318126583812819)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115319037345812820)
,p_event_id=>wwv_flow_imp.id(69115318223818812819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115321156181812821)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69115312271516812812)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115321156181812821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115321576839812821)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>69115321576839812821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115320706074812821)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69115312271516812812)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Project'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115320706074812821
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Milestones'
,p_alias=>'MILESTONES'
,p_step_title=>'Milestones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115343879335813540)
,p_plug_name=>'Milestones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MILESTONES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Milestones'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115343918333813540)
,p_name=>'Milestones'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'MILESTONE_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_MILESTONE_ID:\#MILESTONE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(69114781012496811890)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115343918333813540
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115344642261813542)
,p_db_column_name=>'MILESTONE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Milestone ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115345050273813542)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115336198178813533)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115345497318813543)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115345835163813543)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Due Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115346262934813543)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115772406866815687)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691157725'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_ID:NAME:DUE_DATE:DESCRIPTION'
,p_sort_column_1=>'PROJECT_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115347976812813545)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115346779766813544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115343879335813540)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115347093221813544)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115343879335813540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115347596779813544)
,p_event_id=>wwv_flow_imp.id(69115347093221813544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115343879335813540)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Milestone'
,p_alias=>'MILESTONE'
,p_page_mode=>'MODAL'
,p_step_title=>'Milestone'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(69114781012496811890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115335251934813531)
,p_plug_name=>'Milestone'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MILESTONES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115339429857813537)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115339850113813537)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115339429857813537)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115341277686813538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115339429857813537)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_MILESTONE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115341679702813538)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115339429857813537)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_MILESTONE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115342000876813539)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115339429857813537)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_MILESTONE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115335516416813533)
,p_name=>'P7_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_item_source_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone ID'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115336051347813533)
,p_name=>'P7_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_item_source_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS.NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115336703735813534)
,p_name=>'P7_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_item_source_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115337100611813535)
,p_name=>'P7_DUE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_item_source_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Due Date'
,p_source=>'DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115337596530813535)
,p_name=>'P7_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_item_source_plug_id=>wwv_flow_imp.id(69115335251934813531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115339940449813537)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115339850113813537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115340785806813538)
,p_event_id=>wwv_flow_imp.id(69115339940449813537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115342883436813539)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69115335251934813531)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Milestone'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115342883436813539
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115343223202813539)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>69115343223202813539
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115342439404813539)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69115335251934813531)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Milestone'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115342439404813539
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Tasks'
,p_alias=>'TASKS'
,p_step_title=>'Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115363736738814254)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TASKS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tasks'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115363886346814254)
,p_name=>'Tasks'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'TASK_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_TASK_ID:\#TASK_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(69114781012496811890)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115363886346814254
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115364555737814256)
,p_db_column_name=>'TASK_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Task ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115364908742814256)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115313007073812814)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115365307633814256)
,p_db_column_name=>'MILESTONE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115353089688814244)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115365718525814257)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115336198178813533)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115366169242814257)
,p_db_column_name=>'NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115366591852814257)
,p_db_column_name=>'START_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115366943494814257)
,p_db_column_name=>'END_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115367364265814258)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115367764676814258)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115368109276814258)
,p_db_column_name=>'IS_COMPLETED_YN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Is Completed '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115780772321815694)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691157808'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGNED_TO:MILESTONE_ID:PROJECT_ID:NAME:START_DATE:END_DATE:COST:DESCRIPTION:IS_COMPLETED_YN'
,p_sort_column_1=>'ASSIGNED_TO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115369976189814259)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115368740109814259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115363736738814254)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115369046525814259)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115363736738814254)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115369557406814259)
,p_event_id=>wwv_flow_imp.id(69115369046525814259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115363736738814254)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Task'
,p_alias=>'TASK'
,p_page_mode=>'MODAL'
,p_step_title=>'Task'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(69114781012496811890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115351855561814241)
,p_plug_name=>'Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TASKS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115359490632814250)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115359806571814250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115359490632814250)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115361252734814251)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115359490632814250)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115361671390814252)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115359490632814250)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115362000760814252)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115359490632814250)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_TASK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115352135500814243)
,p_name=>'P9_TASK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task ID'
,p_source=>'TASK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115352587893814243)
,p_name=>'P9_ASSIGNED_TO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM_MEMBERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115352920130814244)
,p_name=>'P9_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MILESTONES.NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115353659712814245)
,p_name=>'P9_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS.NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115354015677814245)
,p_name=>'P9_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115354433270814245)
,p_name=>'P9_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115354894984814246)
,p_name=>'P9_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115355228454814246)
,p_name=>'P9_COST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115355658758814247)
,p_name=>'P9_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115356077543814247)
,p_name=>'P9_IS_COMPLETED_YN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_item_source_plug_id=>wwv_flow_imp.id(69115351855561814241)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Completed '
,p_source=>'IS_COMPLETED_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115359951059814250)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115359806571814250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115360729882814251)
,p_event_id=>wwv_flow_imp.id(69115359951059814250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115362745534814253)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69115351855561814241)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Task'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115362745534814253
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115363122068814253)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>69115363122068814253
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115362480030814252)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69115351855561814241)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Task'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115362480030814252
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Links'
,p_alias=>'LINKS'
,p_step_title=>'Links'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115693264917814959)
,p_plug_name=>'Links'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LINKS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Links'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115693313005814959)
,p_name=>'Links'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'LINK_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_LINK_ID:\#LINK_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(69114781012496811890)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115693313005814959
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115694058748814961)
,p_db_column_name=>'LINK_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Link ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115694426324814961)
,p_db_column_name=>'LINK_TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Link Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115694819479814962)
,p_db_column_name=>'URL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'URL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115695289611814962)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115695618081814963)
,p_db_column_name=>'APPLICATION_PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Application Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115696044840814963)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115795281597815705)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691157953'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_TYPE:URL:APPLICATION_PAGE:DESCRIPTION'
,p_sort_column_1=>'LINK_TYPE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115697734711814964)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115696539159814963)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115693264917814959)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115696828333814963)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115693264917814959)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115697391147814964)
,p_event_id=>wwv_flow_imp.id(69115696828333814963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115693264917814959)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Link'
,p_alias=>'LINK'
,p_page_mode=>'MODAL'
,p_step_title=>'Link'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(69114781012496811890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115484449215814950)
,p_plug_name=>'Link'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LINKS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115488833304814956)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115489272873814956)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115488833304814956)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115690642799814957)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115488833304814956)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_LINK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115691072185814957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115488833304814956)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_LINK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115691430600814958)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115488833304814956)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_LINK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115484724845814952)
,p_name=>'P11_LINK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_item_source_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link ID'
,p_source=>'LINK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115485174061814952)
,p_name=>'P11_LINK_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_item_source_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Type'
,p_source=>'LINK_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115485493611814953)
,p_name=>'P11_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_item_source_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115485816485814953)
,p_name=>'P11_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_item_source_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application ID'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115486245363814954)
,p_name=>'P11_APPLICATION_PAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_item_source_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Page'
,p_source=>'APPLICATION_PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115486636420814954)
,p_name=>'P11_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_item_source_plug_id=>wwv_flow_imp.id(69115484449215814950)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115489357804814956)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115489272873814956)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115690188566814957)
,p_event_id=>wwv_flow_imp.id(69115489357804814956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115692275887814958)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69115484449215814950)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Link'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115692275887814958
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115692604194814958)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>69115692604194814958
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115691837481814958)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69115484449215814950)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Link'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115691837481814958
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'To Dos'
,p_alias=>'TO-DOS1'
,p_step_title=>'To Dos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115745496506815663)
,p_plug_name=>'To Dos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TO_DOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'To Dos'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115745505131815663)
,p_name=>'To Dos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'TO_DO_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_TO_DO_ID:\#TO_DO_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(69114781012496811890)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115745505131815663
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115746263667815665)
,p_db_column_name=>'TO_DO_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'To Do ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115746686373815665)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115313007073812814)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115747098021815665)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115747454563815666)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115747828163815666)
,p_db_column_name=>'IS_COMPLETED_YN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Is Completed '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115805438556815714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691158055'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ASSIGNED_TO:NAME:DESCRIPTION:IS_COMPLETED_YN'
,p_sort_column_1=>'ASSIGNED_TO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115749503204815667)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115748317079815666)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115745496506815663)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115748655481815666)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115745496506815663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115749192663815667)
,p_event_id=>wwv_flow_imp.id(69115748655481815666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115745496506815663)
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'To Dos'
,p_alias=>'TO-DOS'
,p_page_mode=>'MODAL'
,p_step_title=>'To Dos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(69114781012496811890)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115737218089815655)
,p_plug_name=>'To Dos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TO_DOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115741048466815660)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115741464273815660)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115741048466815660)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115742872303815661)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115741048466815660)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_TO_DO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115743217151815661)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115741048466815660)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_TO_DO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115743671927815661)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115741048466815660)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_TO_DO_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115737575815815657)
,p_name=>'P13_TO_DO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_item_source_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To Do ID'
,p_source=>'TO_DO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115737968760815657)
,p_name=>'P13_ASSIGNED_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_item_source_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM_MEMBERS.USERNAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115738335196815658)
,p_name=>'P13_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_item_source_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115738774575815658)
,p_name=>'P13_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_item_source_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115739161524815658)
,p_name=>'P13_IS_COMPLETED_YN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_item_source_plug_id=>wwv_flow_imp.id(69115737218089815655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Completed '
,p_source=>'IS_COMPLETED_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115741500529815660)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115741464273815660)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115742368669815661)
,p_event_id=>wwv_flow_imp.id(69115741500529815660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115744452820815662)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69115737218089815655)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form To Dos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115744452820815662
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115744878863815662)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>69115744878863815662
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115744068685815662)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69115737218089815655)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form To Dos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115744068685815662
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Vivi Project - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69114783079235811896)
,p_plug_name=>'Vivi Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69114785179459811900)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69114783079235811896)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114783547304811898)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69114783079235811896)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114783980501811899)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69114783079235811896)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114784394651811899)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69114783079235811896)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69114784759838811899)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69114783079235811896)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114787399187811901)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69114787399187811901
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69114787896460811902)
,p_page_process_id=>wwv_flow_imp.id(69114787399187811901)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69114788353905811902)
,p_page_process_id=>wwv_flow_imp.id(69114787399187811901)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114785427127811900)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69114785427127811900
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69114785946749811900)
,p_page_process_id=>wwv_flow_imp.id(69114785427127811900)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69114786436967811901)
,p_page_process_id=>wwv_flow_imp.id(69114785427127811900)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69114786943831811901)
,p_page_process_id=>wwv_flow_imp.id(69114785427127811900)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114789267128811903)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69114789267128811903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69114788840342811903)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69114788840342811903
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116003310184816976)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(69114773918797811875)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116009913037816980)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116010300853816981)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(69116009913037816980)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(69116004090433816977)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(69114778590601811886)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116010732520816981)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(69116009913037816980)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(69116004791707816977)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(69114778932046811886)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116011147572816981)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(69116009913037816980)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(69116005429049816978)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116011505287816982)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116011950495816982)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(69116011505287816982)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116012701167816983)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(69116011950495816982)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69116013195139816983)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(69116011950495816982)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69116013895665816985)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69116014260519816986)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69116014653527816986)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116037498908817327)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(69116011950495816982)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(69116008140778816979)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116037851283817327)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(69116011505287816982)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69116038286214817328)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(69116037851283817327)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69116039148945817337)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69116039559079817337)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116045426731817681)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(69116037851283817327)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(69116009274907816980)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69116012371718816982)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69116011950495816982)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69116036543433817326)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69116012371718816982)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69116037020689817327)
,p_event_id=>wwv_flow_imp.id(69116036543433817326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69116013195139816983)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778590601811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115816400634815723)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115816686944815723)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115817200288815724)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115817200288815724
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115817957125815728)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115818316944815728)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115818789108815728)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115819184275815729)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115819534074815729)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115819937903815729)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115820365924815730)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115823182638815735)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691158232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115824767049815737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115816400634815723)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115824078427815736)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115816686944815723)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69115825571258815737)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115825128840815737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>69115825128840815737
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778932046811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115825857351815737)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115825977654815737)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115828330853815740)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115825857351815737)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115826908425815739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115825857351815737)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69115828784057815740)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115829027253815740)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115825977654815737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115829624467815754)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115825977654815737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(69115829722071815754)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115827050422815739)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115826908425815739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115827705440815739)
,p_event_id=>wwv_flow_imp.id(69115827050422815739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115830833006815755)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>69115830833006815755
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115831272167815755)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>69115831272167815755
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115831528220815756)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(69115831622748815756)
,p_region_id=>wwv_flow_imp.id(69115831528220815756)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(69115833751586815757)
,p_chart_id=>wwv_flow_imp.id(69115831622748815756)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(69115834336155815758)
,p_chart_id=>wwv_flow_imp.id(69115831622748815756)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(69115834931953815758)
,p_chart_id=>wwv_flow_imp.id(69115831622748815756)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115831773619815756)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(69115831867956815756)
,p_region_id=>wwv_flow_imp.id(69115831773619815756)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(69115838700835815761)
,p_chart_id=>wwv_flow_imp.id(69115831867956815756)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(69115839932873815762)
,p_chart_id=>wwv_flow_imp.id(69115831867956815756)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(69115839335606815761)
,p_chart_id=>wwv_flow_imp.id(69115831867956815756)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115831902719815756)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(69115832061907815756)
,p_region_id=>wwv_flow_imp.id(69115831902719815756)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(69115836208699815759)
,p_chart_id=>wwv_flow_imp.id(69115832061907815756)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(69115836807135815760)
,p_chart_id=>wwv_flow_imp.id(69115832061907815756)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(69115837410145815760)
,p_chart_id=>wwv_flow_imp.id(69115832061907815756)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69115832116303815756)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115841078098815767)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115841486192815767)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69115832241511815756)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115845653394816131)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115846068816816132)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115832352629815756)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115857189497816476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115831528220815756)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115857576186816476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115831773619815756)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115857941155816476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115831902719815756)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115858346642816476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115832116303815756)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115832462057815756)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115832352629815756)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115832502228815756)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115859966578816478)
,p_event_id=>wwv_flow_imp.id(69115832502228815756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115831528220815756)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115860478774816479)
,p_event_id=>wwv_flow_imp.id(69115832502228815756)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115831902719815756)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115860929783816479)
,p_event_id=>wwv_flow_imp.id(69115832502228815756)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115831773619815756)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115861432844816479)
,p_event_id=>wwv_flow_imp.id(69115832502228815756)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115832116303815756)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115861959717816480)
,p_event_id=>wwv_flow_imp.id(69115832502228815756)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115832241511815756)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115894918737816518)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115896057812816519)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115896057812816519
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115896769216816522)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115897176638816523)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115897561428816523)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115897934516816524)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115898358455816525)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115898741588816525)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115899144054816526)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115899502308816526)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115902699947816532)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691159027'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115895014253816518)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115895267465816518)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(69115895352978816518)
,p_region_id=>wwv_flow_imp.id(69115895267465816518)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(69115906276588816536)
,p_chart_id=>wwv_flow_imp.id(69115895352978816518)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115903511998816533)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115894918737816518)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115895428627816518)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115895014253816518)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(69115906760245816536)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115895614926816518)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115895014253816518)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115895147444816518)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115904812396816535)
,p_event_id=>wwv_flow_imp.id(69115895147444816518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115894918737816518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115908262333816538)
,p_event_id=>wwv_flow_imp.id(69115895147444816518)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115894918737816518)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115887993150816508)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115888559395816508)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115888559395816508
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115889265855816513)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115889685162816513)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115890057786816514)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115890446331816514)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115890832349816515)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115891236248816515)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115893777087816517)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691158938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115894625193816518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115887993150816508)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115873890678816493)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115874490930816493)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115874490930816493
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115875129196816495)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115875550668816495)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115875962411816495)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115876310292816496)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115876732170816496)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115877182748816497)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115877588553816497)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115877933560816497)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115878331654816498)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115878787938816498)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115879179762816499)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115879534604816499)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115879925108816499)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115880355155816500)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115885273520816505)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691158853'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115873929130816493)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115886119554816506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115873890678816493)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115873797315816493)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115873929130816493)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115874080277816493)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115887446665816507)
,p_event_id=>wwv_flow_imp.id(69115874080277816493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115873890678816493)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115862450150816480)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115863008139816480)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115863008139816480
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115863796467816482)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115864236790816482)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115864670920816482)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115865016253816483)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115865471608816483)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115865821523816484)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115866264324816484)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115866624833816484)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115867029605816485)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115867435176816485)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115871180131816489)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691158712'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115862587874816480)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115872016045816490)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115862450150816480)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115862370273816480)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115862587874816480)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115862617106816480)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115873375801816492)
,p_event_id=>wwv_flow_imp.id(69115862617106816480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115862450150816480)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115908771614816538)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115909393730816538)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115909393730816538
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115910050726816540)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115910445890816540)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115910885367816541)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115911288140816541)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115911690839816541)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115912081672816542)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115912483567816542)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115912817111816543)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115913263631816543)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115916685664816547)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691159167'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115917597385816547)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115908771614816538)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778254252811886)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115918137540816549)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69115920512123816551)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115920856301816554)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115921203646816554)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115921668071816555)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115922009457816555)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115918561831816549)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115918137540816549)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115918908864816550)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115918137540816549)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115919370320816550)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115918137540816549)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115919736709816550)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115918137540816549)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115920180844816551)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115920180844816551
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115924266126816559)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115924324092816559)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115925556042816561)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115924324092816559)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115925896949816561)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115924324092816559)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69115927208994816562)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115927559829816562)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115924266126816559)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115925979770816561)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115925896949816561)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115926602934816562)
,p_event_id=>wwv_flow_imp.id(69115925979770816561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115927928357816563)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>69115927928357816563
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115928300089816563)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115929120070816563)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115929120070816563
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115929889506816565)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115930296248816565)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115930658491816566)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115932297531816567)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691159323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115933216648816569)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115928300089816563)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115933678885816569)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115928300089816563)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115934055326816569)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115928300089816563)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115928483880816563)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115928300089816563)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115934626774816570)
,p_event_id=>wwv_flow_imp.id(69115928483880816563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115928300089816563)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115935169987816570)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115935262124816570)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115938040423816573)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69115935262124816570)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115938436330816573)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69115935262124816570)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115936263397816571)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115935262124816570)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115937670665816572)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115935262124816570)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115938780266816573)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_item_source_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115939139505816573)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_item_source_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115939503962816574)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_item_source_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115939961385816574)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_item_source_plug_id=>wwv_flow_imp.id(69115935169987816570)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(69115941215199816577)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115936304670816571)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115936263397816571)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115937030721816572)
,p_event_id=>wwv_flow_imp.id(69115936304670816571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115941568018816577)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(69115935169987816570)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115941568018816577
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115941937900816577)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69115935169987816570)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115941937900816577
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115942303653816577)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115942303653816577
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115942786505816578)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115942823838816578)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115942903340816578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115942786505816578)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115945036700816580)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115942786505816578)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69115946348091816581)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(69115942903340816578)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115946782731816581)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115942823838816578)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115947161784816581)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115942823838816578)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115947553337816582)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115942823838816578)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(69115947644375816582)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115945147852816580)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115945036700816580)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115945880421816580)
,p_event_id=>wwv_flow_imp.id(69115945147852816580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115948692307816583)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69115942903340816578)
,p_internal_uid=>69115948692307816583
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778161349811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115943075042816578)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115943175942816578)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69115943353152816578)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(69115943175942816578)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115950558180816586)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69115950926780816587)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115943453741816578)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(69115943175942816578)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115943566317816578)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115954516497816929)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115955238946816930)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115943692399816578)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115943075042816578)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115955911987816931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115943075042816578)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115956330732816931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115943075042816578)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115957683564816932)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115943566317816578)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115958016523816932)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115943566317816578)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115958437786816933)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115943566317816578)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115956417935816931)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115956330732816931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115957158444816932)
,p_event_id=>wwv_flow_imp.id(69115956417935816931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115958882555816933)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69115943692399816578)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>69115958882555816933
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115959298065816933)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115959298065816933
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115959679215816933)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115959720407816933)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115959839233816933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115959720407816933)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115962821865816935)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115959720407816933)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69115970576920816940)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115964128470816936)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115959679215816933)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115964521374816936)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115959679215816933)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115964944860816936)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115959679215816933)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115965317778816937)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(69115959679215816933)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(69115965409352816937)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115967261772816938)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115959679215816933)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(69115970121518816940)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115962966899816935)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115962821865816935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115963661783816935)
,p_event_id=>wwv_flow_imp.id(69115962966899816935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115967677055816938)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69115959839233816933)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>69115967677055816938
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115968160336816939)
,p_page_process_id=>wwv_flow_imp.id(69115967677055816938)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115968622340816939)
,p_page_process_id=>wwv_flow_imp.id(69115967677055816938)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115969156371816939)
,p_page_process_id=>wwv_flow_imp.id(69115967677055816938)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115969698004816940)
,p_page_process_id=>wwv_flow_imp.id(69115967677055816938)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115960250804816933)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115960149648816933)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115960250804816933)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115960332337816933)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115960149648816933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115972176887816942)
,p_event_id=>wwv_flow_imp.id(69115960332337816933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115961578516816933)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69115984953399816953)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>69115984953399816953
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115985661284816956)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115986002697816956)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115986467389816957)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115986887763816957)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115987248564816958)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115987665264816958)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115965409352816937)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115988036764816958)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115988424482816959)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(69115977824271816946)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115988809207816959)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115989226376816959)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115989636963816960)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115990070256816960)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69115990405716816960)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69115995086350816965)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691159951'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115995928055816966)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115961578516816933)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115961427584816933)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(69115961578516816933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115996686145816966)
,p_event_id=>wwv_flow_imp.id(69115961427584816933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69115961578516816933)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69114780800132811890)
,p_required_patch=>wwv_flow_imp.id(69114778352368811886)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115960833597816933)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115960968209816933)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115961016548816933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115960968209816933)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115973736953816943)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69115960968209816933)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69115961237600816933)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69115960968209816933)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115975350151816944)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115975753942816945)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115976111477816945)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115976522522816945)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115976922008816946)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115977377552816946)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115977738021816946)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(69115977824271816946)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115980082330816948)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69115960833597816933)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69115973886079816943)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69115973736953816943)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69115974512386816944)
,p_event_id=>wwv_flow_imp.id(69115973886079816943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115980579373816948)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115980579373816948
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115980801450816948)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69115961016548816933)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>69115980801450816948
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115981381894816949)
,p_page_process_id=>wwv_flow_imp.id(69115980801450816948)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115981833991816949)
,p_page_process_id=>wwv_flow_imp.id(69115980801450816948)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115982334813816949)
,p_page_process_id=>wwv_flow_imp.id(69115980801450816948)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115982760772816950)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69115961237600816933)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>69115982760772816950
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(69115983244793816950)
,p_page_process_id=>wwv_flow_imp.id(69115982760772816950)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115983707209816950)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69115961237600816933)
,p_internal_uid=>69115983707209816950
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69115984155917816950)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>69115984155917816950
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69114782403574811892)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(69114778889972811886)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115997552264816970)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(69114778889972811886)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69115998282847816971)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69115998665304816971)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69115998282847816971)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69116045858307817682)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(69116046329093817682)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116051242998817689)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116051685954817689)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(69116052142848817690)
,p_region_id=>wwv_flow_imp.id(69116051685954817689)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116052658158817690)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(69116050267262817687)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(69116045858307817682)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(69116046080781817682)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116047381575817683)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69116047757690817684)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69116047086176817683)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69116048346979817685)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69116047757690817684)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69116048688284817685)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69116049170456817685)
,p_event_id=>wwv_flow_imp.id(69116048688284817685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69116049694777817686)
,p_event_id=>wwv_flow_imp.id(69116048688284817685)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
