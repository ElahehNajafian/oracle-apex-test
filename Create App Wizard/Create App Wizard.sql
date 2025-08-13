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
,p_default_application_id=>214241
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ELAHEH'
);
end;
/
 
prompt APPLICATION 214241 - Create App Wizard
--
-- Application Export:
--   Application:     214241
--   Name:            Create App Wizard
--   Date and Time:   17:52 Wednesday August 13, 2025
--   Exported By:     ELAHEHNAJAFIAN@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     35
--       Items:                   64
--       Validations:              6
--       Processes:               28
--       Regions:                 85
--       Buttons:                 47
--       Dynamic Actions:         20
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Create App Wizard')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CREATE-APP-WIZARD')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B9E925182A38047C8CCD55FC17919B821EEE8901F45A52C3C92F6D40611BCAE9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(74321342265124535372)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Create App Wizard'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(74321349521077535383)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Create App Wizard'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15646353725584
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(74321714071824537151)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(214241)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(74321343035668535373)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(74321344258647535376)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_214241_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(74321714071824537151)
,p_name=>'App 214241 Push Notifications Credentials'
,p_static_id=>'App_214241_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321343035668535373)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15646353725162
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321362841382535398)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321364333088535400)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321374420462535408)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321377247490535415)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321392394113535429)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321423791940536209)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321425789825536212)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Project Costs'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321686689811537125)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(74321349491898535383)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321344258647535376)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15646353725457
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321682859602537122)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321683249345537123)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321683514726537123)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(74321347435227535381)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321684004623537123)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(74321683514726537123)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(74321347435227535381)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321684444852537123)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(74321683514726537123)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321684852001537124)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(74321683514726537123)
,p_required_patch=>wwv_flow_imp.id(74321347435227535381)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321685188350537124)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321713715643537150)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(74321685188350537124)
,p_required_patch=>wwv_flow_imp.id(74321707248626537144)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321685600622537124)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(74321685188350537124)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321686033546537124)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(74321685188350537124)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321504907295536951)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15646353722845
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321505352505536951)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321505792527536952)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321506171903536952)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321506590257536952)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321506955045536952)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321507358433536952)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Project Costs'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321687754682537126)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(74321347130240535381)
,p_version_scn=>15646353725168
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321688172894537126)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(74321347130240535381)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321688407391537126)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(74321347542544535381)
,p_version_scn=>15646353725172
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321688859287537127)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(74321347542544535381)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321689167629537127)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
,p_version_scn=>15646353725179
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321689530543537127)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321689912689537127)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321690321831537128)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321690743068537128)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321691120786537128)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321691591300537128)
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
 p_id=>wwv_flow_imp.id(74321691805975537129)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
,p_version_scn=>15646353725187
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321692202085537129)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321692681317537129)
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
 p_id=>wwv_flow_imp.id(74321692919385537129)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_version_scn=>15646353725187
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321693345518537129)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321693645410537129)
,p_name=>'Application Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>15646353725188
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321694039334537130)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Statuses'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(74321710893662537148)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(74321707248626537144)
,p_version_scn=>15646353725426
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(74321711261842537148)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(74321706929839537144)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000252494441545847ED94CD6BD37018C7BF6992A6356BCC2C2B9DC676C393F6A49DB33204117C7FC3373CF837785110C19B07F1A2';
wwv_flow_imp.g_varchar2_table(2) := '17FF053D88A8F85AC1A30C6BE74E5ADB836EEDE8FAEAB05DC9DABC35D20891D66282ED264A7309FCF2F03C9F7C9EE7F710C50B6775FCC58718000C0C0C0CFC13069ABA8E92AAC139E2835C2EC147917010445FB687AD3D509165F09129B8380F1ACB3554';
wwv_flow_imp.g_varchar2_table(3) := '62D346F1E6E846E3EDC8E7C03B9D7F04641BC03BB50734CB4211452C4DBF812E04201C3966145D8C3E0757C8A34C39B17EE72E5467DE6144956D59B205D06A418566400D0F43AD7C032F4B1085CDF0EF3F6400145EBF82363F87C0CD5BA00341280B192C';
wwv_flow_imp.g_varchar2_table(4) := '5CBD6CCB8A2D809AA240545553B18B2441D23488F12D80AE03E939A88A82E0ED3BA0FCA3500B79642E5DEC0F405556C08527E0F67A4D80AF5F3EA3924A8172FC18440708704E1AB21004BB2D84954F1FC1E6B2FD6941A15EC7D8E1A36D03964B26211C38';
wwv_flow_imp.g_varchar2_table(5) := '0882A48C734D6A2075EF2E5C52DD8C63290A1E9AB61C4CCB167403582A15E19BDC6D26AF2613E0F7EE03B335649E35121F90BF711D9C05445F004AF1B7085CB9F6CBDF26CE9F82DFEDFEAD054B0049D3901557103A71D24CD4696055018C6BD6310789A7';
wwv_flow_imp.g_varchar2_table(6) := '4FE08F44CC36AC39403AFA029EF0441B402116C3E4A367A6A5F8E9E310D8756048B2B71674339089BEC450386C0294E3312CCFCE2074FFB159CC4EFF5BC19633D00A5A92245063E366722D3D0F66FB8E3603B5D9F7AB07D0CD6191E331246C323E89D945';
wwv_flow_imp.g_varchar2_table(7) := '348BF9B505E8846A59E2CF9CFBB91B1E3EC00686E97D115966E831C0D60CF458A3F75B30001818F8AF0D7C075935361079615B660000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74321345377507535379)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000120749444154785EED9D797454D77DC7BFF7CD8C348B460BDAD1C22210BB0153C01027E0D625B69B408C3429200E569C18D39E9E';
wwv_flow_imp.g_varchar2_table(2) := '53DB7592F6AFA6E7B4276E7DD23A4DEAD8AAEB5082C03992D8BC408C6320094DC06036B31AB1180969B4A2D934DB7BB7BE83052318A199FBDE2C61EEFB477FE8FEEEEF77BFF733777FF711884728A04201A2C256980A0520001210A8524000A44A3E612C';
wwv_flow_imp.g_varchar2_table(3) := '00120CA8524000A44A3E612C00120CA8524000A44A3E612C00120CA8524000A44A3E612C00120CA8524000A44A3E612C00120CA8524000A44A3E619C9200753FBDDC4A954C0BA59205B23F0BD0590062A1B2624C872A233AC90B503720BBA1CB7011A2B8';
wwv_flow_imp.g_varchar2_table(4) := '89E47317BEB9CB996AE54F2A401420BDAB6BA62812165282859492050478008021D5844A917802143849804304F4B0A4E050FED696F304A0C98A2FA10075D86C8524138B24852EA4842C00E87C0039C92AFC7DE27700201F1128871405870241E9604553';
wwv_flow_imp.g_varchar2_table(5) := '535FA2CA963080586B635F53BB9C107C0FC0E2441530BDFC908314F4A5E2C6E67713D52AC51D20BA7EBDC1EEEEAD27142F8290EAF4AAD0A495F63CA5E4E5E2ACBC4DA4A12110CF28E20A50CF3A5B5950A63B09302F9E851079475680521CA101F2446953';
wwv_flow_imp.g_varchar2_table(6) := '5377BC348A1B401D75B6E912E8FB00CAE215BCC8370A05086D5564AC28DDDA723A8AD43127890B405DAB6D0F5389BE2306C831D747BC0C062485AC28DCDA74406B079A03F445CBF31100B3D6C18AFC5429E05114BA40EB96485380AEAFFFBA59E7CE64F0';
wwv_flow_imp.g_varchar2_table(7) := '4C575554611C2F054ECB16DF82B10D6F7BB472A02940F6BADA8D009ED22A38914F5C14F8DFE2C6E67AAD72D60CA0AE35B67A4AE8CFB50A4CE4133F050825DF2ADAD2C47EECAA1F4D00BA66B3993232683B803CD511890C12A1409F6CF15568D195690290';
wwv_flow_imp.g_varchar2_table(8) := 'BDAE6603407E9688920B1F5A2940FFAAB8B1E535B5B9A906886D5174D5D59E0530456D30C23E710A10D0B3858D2D33D46E79A806A86BADED314AE9EEC4155D78D24A0142C8E3459B9BF6A8C94F3540F63ADB1E807E554D10C236590A905F1537363DA6C6';
wwv_flow_imp.g_varchar2_table(9) := 'BB2A802ED7D71BCD01971B80A42608619B340514BF9F645534350DF246A00AA08EB5B54B258A7DBCCE855DF21550081E29DDDCBC9F3712550075D5D9FE9E82FE90D7B9B04BBE0204E41F8A1A9B5EE28D441540F6BADA1D0056F03A177629A1C0CEE2C6E6';
wwv_flow_imp.g_varchar2_table(10) := '6FF046C20DD017D37776CE249FD7B9B04B0905ECC58DCD25BC917003D4556F2BA101DAC1EB58D8A58E02269D5C90BD697B2F4F44DC00F5AEAE991194C8273C4E854D6A29A057E8CC7CCE0367DC0075D4AD9C2F413A9C5A528868781450A02C286DDCC68E';
wwv_flow_imp.g_varchar2_table(11) := 'E1C4FCF003B4DAB6449228F7F42FE6488541DC145014B2B494F3B4223740620B236EF599F08C75C0A3058DCDBFE671CC0D907D4DED4A10B4F0381536A9A5809A3D316E80BAD7D6D629149B534B0A110D97021435C55B9AB7F1D8720394AA2710154AE10C';
wwv_flow_imp.g_varchar2_table(12) := '04312807311894A197088C3A1D2C7A3DCC7A3D8F46F7BD8D44B0B6707373234F41B901B2D7D5AC05C82F789CC6CBC61508E29ADB0DBFA2447491979181B11633F484BBD8F10A3DA9F90A8000F4787D68F7DC7CD9A074DC38E48E2D87A5201F419F0FEEAE';
wwv_flow_imp.g_varchar2_table(13) := '2E5C6F6D85DBE9809E48A8CEB1C22089030443D4A63D405E59C6F901078C4623A62C7E18C6DC08177E50C07EFE2CAE9C39832CBD1E55D9D6517FF52C5FF6B02EF07E7ED21EA00B030E0CCA32A63FFC65588B8AEE59D7170FFE0EBD763BCA2D66E46766DE';
wwv_flow_imp.g_varchar2_table(14) := '95D6130CA2DD3308F637FC6163A8B166D37D398E4A6B80DCC1202E3A9CC82928C0D4AF2C19B5A1F0399C38FEC1FB30EB74989C933D2C7DB7D78BEB9E9B67AB2C7963905F51090A8AFE6BD7E0EABF79E50E83A8D0787F5D9496D6000DF803B8E272A162F2';
wwv_flow_imp.g_varchar2_table(15) := '648C9DC52E371BE5A1C0E11DDB4203E9E9615DDDD0182AD364C6D4BFF81A2C95E38665E4BADC8A73BBDF83DFEB4599D98C02E3DDADD768AE53F5FF690D50BFCF8FCFDC6E54CD9E8B82AA8951D5D1E90FF6C2E37462565E6E28BD4F9671C1E18421D388D9';
wwv_flow_imp.g_varchar2_table(16) := '4F3D05BD25F2F828E872E2C42F3621E01DC4949C6C64DC6320CE9610D8182A481598747A98F43AE85274F697D600B1B1CAA70E27CAAB26A16CF6EC5101A20AC5919D3B6094C8AD2EACDDED418FCF87594FD6C03AE1DE103A2F9EC7A95DBB5068CCC458F3';
wwv_flow_imp.g_varchar2_table(17) := 'DDF747F4FA7CE8F00C42A6775F5B98AACB08690D105B383CD57F0339F90598BA248A31D08003C77FBD373480660369F6B04138B19831E73B1B46059025F8F8F55741BC5E54878DA1581C979D2EB88241480603C67DE961E4CD7A00869C3C38CE9C46FBFF';
wwv_flow_imp.g_varchar2_table(18) := 'FD168ECECED032C278AB25B4B0992A4F5A03C42AA1CDED41AFDF8F698BBE84EC92E291EB8502ADBF3F889ECE4E54676787BA9520A538DD7F0325D5D598F8B5E84EE7B6EEDA01FBC54F31232FF7D6A2E4758F07DD5E1FCA173C84AA67FF1ABAC2C2E171C8';
wwv_flow_imp.g_varchar2_table(19) := '32FA7EF51E4EBED1009DA284BAC054E9D2D21E20D65DB0752045923069CE5CE45656DE0591120CE2CAD123E86E6F4791D18852B3299426A028387363002593AB31F1EBB101C406E16C41D21908E092D385DCB232CCFDC96B20F7685D7AB637E3E4CFFF07';
wwv_flow_imp.g_varchar2_table(20) := 'AC3BABCCB2A4442394F600B15A60DB18575DEED0A0B5A8AC0CB925A530984C60E078DD6E74B45E84D7E389B88878BA7F0019D956CCF9F6FAA82AF4E386D71074BB3123EFE682259B05B2D9E0E2975E8671FACC7BE741298E6E7806031DED9899979B12AD';
wwv_flow_imp.g_varchar2_table(21) := '9000E88B2A63DD111B10DFF0FBEFAA44D65DB0359C3111160F5B1DCED0D8E5812757226B42D53D01705EBE8453DB5B60351830D19A154A7BEE86030149C2D2969D401433AD6B3FFB293EDDFD2E26655B53622C2400BAA3CA194883ACE591E5D0A0956D45';
wwv_flow_imp.g_varchar2_table(22) := 'B0F1CE480F6BBD5A9D4E6498CD78705D3D2473E4AE25E876E1D8C63711F0F986557E68105F5E81B9FFF57A542D58EF3B3B71A2E1358CCBB2203723232A9B7826120069A0AE7DD08BCEC141649A2D98FAC413B0548E1F96ABFBB3AB38F3F6CE103CA52613';
wwv_flow_imp.g_varchar2_table(23) := '8A4CB757A3D92CCE47A26F81DA5E7F1517DE7DFBD6405E83F0556591D600B1E933DBCEF004E5D0B643348F04824C9D0E56831E525897D3E7F385B632D8A0DC9A5F80BC8A0A5045C68DB67638FB7A43E39548DD203B42D2E7F3E32BAF36405F5E316A08A7';
wwv_flow_imp.g_varchar2_table(24) := 'BEFB3CBACF9FC3EC31A9711F575A02C4C061AD4697D73B6A858D9480756F6516D3B06E84757F5D8383A14369E1BBF10CB6229329E259A2A1FDB849CB96A1F26F9EBF673CBEF3E770F07B2F203F23E3D63A14770134324C4B808606BEF9C52528A82887C1';
wwv_flow_imp.g_varchar2_table(25) := 'C4BE0815DD4131391880ABA71BF62B57E1F7FB506131471C5CB3293E7BA2393B34D40ACD59BF016346584F0A76D971F4FB2F62B0AF17D3727352E6605BDA01C4B60BD8E26179F51494CD1C65DA7C8F5FA9A7B70FA77EB31F6C78CD2A54CDC21E83EDC280';
wwv_flow_imp.g_varchar2_table(26) := '33B48C50B968312ABFB91AFAA26290CC4CC8BD3D701C3B8A936FBE01C5EF1F11588D1A9498B3493B8058EBE356142C58FE0D408AAED589A8AA42F1E9C1DFA1AFBB2B66D1D9CCEECE6E8D757FD7DD1EF4475846600ED8E62B5B3C4CA56D0C1657DA01C4A6';
wwv_flow_imp.g_varchar2_table(27) := 'CD66AB15331EFDF3982B7EC820E076E3CC6F0EC03B38880C930959F9059074D11D73658B93FDD7AF83521A5A2660EB41E1CB046C83978D8B42BBF10A0DFD8FEDC8DF3968E70E5E63C3B403E8445F3F72F2F230F5913FE5925291157CF2C15E04027E4C7B';
wwv_flow_imp.g_varchar2_table(28) := 'EC715827C5FE152A2A07D177E238CEEFDF171A23859F2DE20A2A894602A018C5EF6EBD884B274E60DAB2AF226F661487D0EE91FF95DDEFE0FAD9B328C8CC842ECAEE9480C0ACBFF9AA51F832428CC5D02CB9002846292F1F3E84AEB6362C78E659E8ADC3';
wwv_flow_imp.g_varchar2_table(29) := '8FB5C69295EBEA655C3970008E1EFECF718D74363B9638D4A61500C5A8E0B903FB31D0DB8BC5CFFF1D40A21BF7DCE9C275A91527776E071BC297CD5F88EC71E32199A23BE64A140A4F67273A8E1E81A7BF2F74C69A2D5026EB1100C5A8FCB97DFB30D0DF';
wwv_flow_imp.g_varchar2_table(30) := '87C52F7C3746CB9BC915BF0F47FFBB013255B0E85FFE159953A672E5433D1E9C7BE99FD171FC18AAAC5664199273C84C001463F5A905A8FF935338FBFE1ECCAA7F1A852B6D317A1F9E5CBED18F03EBD620DB60C0842F76F75565C8612C008A5134B50075';
wwv_flow_imp.g_varchar2_table(31) := '1CFC2D2E1FFA0316FFF0DF609C312B46EF7727FFE8997A78BBBB9336931300C558856A016AFBF0037C76FC18BEFC9FAFC2307E428CDEEF4E7EEAC5E7D07DE17CD2365705403156A10068B860022001508C0AA439406C2B23C36844C9C4DBEF70E5149746';
wwv_flow_imp.g_varchar2_table(32) := 'BE542182B4A2054A738042AFF1F87CC354A89E370F79E3869F221CE96729004A738058F1D9C179B659C95E217604021000F1F7626937060A976AE86C90004800C4A5003BC77CCDEDE16A810AC6DDBE8123BFAA0AF973E6451543DB877BF1D9F1E3621A0F';
wwv_flow_imp.g_varchar2_table(33) := '84B672B89E54B923514D0B145EF0CAB90FA2FC913F8B4A0BB10E745BA6B40688BD15C1C650171C0E0880D2F49656355D583840E3E63E88B2185BA079CFBD00636959E8E728994C51AF4AB3FDAF60C7ED0F1D9DF9C92BE86FBB2656A2A36AFF354EA4A60B';
wwv_flow_imp.g_varchar2_table(34) := '53DB028517A570CA54CC7AF93FA22ADDC0877B71F4957F1F9636FC55E9A832D130515ACFC292D9020D9D4264EFA7F100C476E0D9796976D89EBDE29CACD389690D50325BA0A13B86D8196D1E80467A1F4DC3C625AAAC04409CD378B55D980028CDA7F102';
wwv_flow_imp.g_varchar2_table(35) := 'A09B0D946881440B1455573552220190004800C4AB801844F32A77DB2EAD5BA0A1697C65F51464979446A5E695E31FC3E5708416EE8656A2791612C520FA3E1844B36F839DBD31101538E1898616EED46C650880EE03801814EC5305EC965425CA1BCAC2';
wwv_flow_imp.g_varchar2_table(36) := '17EE440B94E6B3B0989B9E3B0C440B240052C5106BBDCE0D38905B5282824993A2CAABE7E245DCE8ECC4D49CECD05D8B62253A2AD986274A95F3401CA1DF65C23ED672E707E646CB97DDACC1EE79668F006834B522FCFF7E0288158F756591BEB013491A';
wwv_flow_imp.g_varchar2_table(37) := '76155EF88552022001108702B74D04401CF2DD6F2D108704B74C86BED91A6B1E93B3AD29F10DD6B45E488CB5D2E2919E757FEC7BAB43D7028FE6831082DC0C43C4AB8547B38DC7FF9303D09ADA952068894781449E095680A2A6784BF3361EAFDC87EABB';
wwv_flow_imp.g_varchar2_table(38) := 'D6DA1EA394EEE6712A6C524B0142C8E3459B9BF6F044C50D50C76ADB1249A2FB799C0A9BD4524051C8D2D2AD4D0778A2E207A86EE57C09D2611EA7C226B51450A02C286DDCF6114F54DC00F5AEAE991194C8273C4E854D6A29A057E8CCFCAD2DA779A2E2';
wwv_flow_imp.g_varchar2_table(39) := '06C8BE66E54410A995C7A9B0493105A85255BC65DB259EA8B801EAAAB795D000BDFD761C8F776193120A1003292DDAD8D4C9130C374047D6AF3754B8FB1C006E7FBA8F270261936C05BCD72C63B2FFA4A121C013083740CC59E7DADAFD8462098F636193';
wwv_flow_imp.g_varchar2_table(40) := '1A0A508203259B9B97F246A30A20FBDADA1F7CFE9DC97FE4752EEC524001827F2ADEDCFC03DE485401D4B1B676A944B18FD7B9B04BBE020AC123A59B9BB9D7F3540174B9BEDE680EB8FAC53828F9207046E0F518B2F2266CDCC8FDE159550085C6417535';
wwv_flow_imp.g_varchar2_table(41) := '6F1190BFE42C80304BA20214F497258D2DABD484A001402B1F22907EAF2608619B1C05289445258DDBFEA0C6BB6A8098737B5D2D0B62A19A40846DC2153854DCD8FC905AAF9A00D4B9A6761521D8AA3618619F380528C5EA922DCD6FA9F5A8094074E952';
wwv_flow_imp.g_varchar2_table(42) := '7D5759C16500E56A0312F60951A0BDA8BD673CD9BF3FA8D69B26008506D36B6A5710821D6A0312F6F157802A7479C9D696B7B5F0A419402C98AE3535AF5042FE568BC0441EF1518050FAE3A22D2DCF6995BBA600D1F5EB0DDDEEFE831474BE56018A7CB4';
wwv_flow_imp.g_varchar2_table(43) := '538000FB0B2D639611CE7DAF4891680A1073D0B16AD57849173C062057BBA28B9C3450C00EC530BB78EB56BB0679DDCA427380425DD9AA9AB954876D0089EEF3395A9648E4154981AB20F28AE2CDDB4F682D4F5C006241B6AD7B32DF20EBDF02E8A35A07';
wwv_flow_imp.g_varchar2_table(44) := '2DF28B41018A0F037AF99BE59BB6F7C6601575D2B801C422A0369BAE2B83FEF4F349DA86A8231209B554E047457EF27DD2D4246B9969785E710568C891BDAE6603407E0C20235E0511F90E536090827CABA4B1E997F1D6252100B142F4ACB395C932BE4D';
wwv_flow_imp.g_varchar2_table(45) := 'A17C878054C4BB60699A7F1B28DED0E9C91B059B9ADA13A141C2001A2ACCCD6E0DCB3F9FB03D0BD0656A3E39950881FE087CC88490F708F07A810F7BE2D95D45D222E1008507D167B3E5040DF26C45D2CD2594CE05F020806900F47F0415978C10D9D6C3';
wwv_flow_imp.g_varchar2_table(46) := '59501CA304C7740A390693EFE3C237773993110CF3995480462A74F7D3CBAD54C9B4502A5920FBB3009D0520162A2B6971809FE8242F40DD80EC862EC34588E22692CF9D4C5046AAAB94042859BF26E13776050440B16B262CC2141000091C5429200052';
wwv_flow_imp.g_varchar2_table(47) := '259F30160009065429200052259F30160009065429200052259F30160009065429200052259F30160009065429200052259F30160009065429200052259F30FE7F191A26187582758B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74321345688796535379)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000115849444154785EED9D7B6C5CD59DC7BFE319BFC6E3B79338388F26C1494A1212CA23014ADAA2D07D0069775BB5A5A01650AB22';
wwv_flow_imp.g_varchar2_table(2) := 'DADD4ABBEA8A0AB45AA9EA63C5B662B5D0452BC4B268BB3474A1CB63B5A55068124A9390A4CEC3609B3C48E2C44E627BECF1CCD89EE7EA5CDBD3F1C4E3B973AEE7CCC99CEF95FC4732F7771EDFEFF9CCBDF777CF39E33A7FF7E793E041050C55C045000C';
wwv_flow_imp.g_varchar2_table(3) := '759EDDB61420001C08462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F';
wwv_flow_imp.g_varchar2_table(4) := '9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C';
wwv_flow_imp.g_varchar2_table(5) := '03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D27001C03462B40008CB69F9D371E80783289914804239128228984F5278E8A';
wwv_flow_imp.g_varchar2_table(6) := 'B232EBAFBEA21C0D15152873B9385A4A50016301882612B8383E8EC1890812C9E49CD68AC1DF5C598985D555F0108492C2C0480002D1284E054339077EA6D36E970BCB7D35A82D2F2FA9416072678C03407CEB9F0B8FCDF0BCB6A1014D8B5AE16D6AB2FE';
wwv_flow_imp.g_varchar2_table(7) := 'C4111A1C44D8EFC7507F1F82232333CE6FF37AD1525569F2B82999BE1B05C07024627DF34F1F65AE32ACD8B0012DABAE04B2DDE227810BC73EC0A9A34791484E3E1F88435C09C4B3018FCB5B0163009888C7D1351248B9E5ABAB47FBE6CDA8A8ADB5E5E0';
wwv_flow_imp.g_varchar2_table(8) := '44208063FBF62218F863196BEBEB50E976DB8AE7497A2A600C001F068356A6471C2E970B9B3EFD27A8A8A9C9CB954828848E5FBF86E4D4437363450596F9EC97C18C535E722B39D9080044C6E7BDE13FDEC7AFDAB8092DAB5649097CF1F8319C38742815';
wwv_flow_imp.g_varchar2_table(9) := 'BBAEB121676688192729A995041901C0C0F804CE86C396A00D2D0BB066EB5647E276EDDA89918101AB8C25355E2B459AED60C6C991D4050F3602806381518462314BCCB59BB7A0BEADCD91B023BDBDE8DAB7D72AC3E7F16055DDECCF11B3659CEA172E44';
wwv_flow_imp.g_varchar2_table(10) := 'F38A95F0B62E46CDE2C55619E1FE7308F5F563F0C4098C5CBC30A36DCC3839B22A67B011001CF10FA772FE1B6FDD86AA86FA9CC2CC75C298DF8FC36FBD699D22DE0DAC6F6CB8E4F44B324E6E0FDAB7DE82E66BAE154F21598A4F62E0C07E1CDBBD1B8944';
wwv_flow_imp.g_varchar2_table(11) := '3C750E334E8EEC9A33D808000E0DF953225CB7FDB3707B9C656EE29108F6BFFA4AAACC8D4D8D3344CECC38D5B5B460F51DDB51D1D46CCBC9C8D0207A5E790981C1C1D4F9CC38D9922EEF938C0020FD0A70EDED77C033C73DBB1D0563131338F0BFAF66BD';
wwv_flow_imp.g_varchar2_table(12) := '02CCC838B9DDB8EEDEFB515E7FE95562AEBAA223C3D8FFCCD348C627AF04CC38D97126FF738C00A06B388089A95B8A751FBF05BE850BF3572A2D2278E1023ADFDE6DFD4F65991B6B1BEA529F66669CD6DCBA0DCD9BAE91AA6FB0E300BADF9CBCD5120733';
wwv_flow_imp.g_varchar2_table(13) := '4E5232F21628FD1B79C586ABB1B0BDDD919217BA7B70B2F3885586781B2CEED1A78FF48C5353DB12ACFDE297E6B8E7CFD58C24BA9FDF81C1DE33D689CC38E5D22BFFCF8DB8020C4E4CA037349906F5D6F8B06EDB6D287397E5AF1680442281CED75F4738';
wwv_flow_imp.g_varchar2_table(14) := '14B4E297D678D194764B959E71DAB07D3B6AAF5C2355CF7450A0E77D1C7D75F2762BDF8C53F3CA5568BDFE06F8DAD7A07ACD643BC6BABB10ECE941DFBB7B3174F2C48CB6999871320280CC87D2656BAFC2E2AB3E2A3530FB3B3B71AABB2B15FBD1867A6B';
wwv_flow_imp.g_varchar2_table(15) := 'DDC0F431E379E39EAFA072E122A97AA683C6FBFB70F0BFFED3FAA7DD8C93DB538EF5F7DD8FE63B3E235E7BCF5E7F328981977F89A3FFF10C12B1C937E4E2302DE3640400C2D893A341889752E2B0A6426CBBCDF63CA0E9C131313A8A8E375E07A6A642D4';
wwv_flow_imp.g_varchar2_table(16) := '95976345AD6FC6004BCF386DF9AB6FA3ACDCD984B9C4C418F63CF178AA8E5C19A7A665CBB1FEA187E159B2D41678B1DED338F2C3EFC37FE674EA7C93324EC60020567ABD9F361DA2A6B60EABB76CB10D81980CD7B3670FC2C1516BA088453262A094A77D';
wwv_flow_imp.g_varchar2_table(17) := 'FB8BFF4FBF026C7EE041B8BDF6E70ACD3662E3E110F63EF9D3AC5780F4E79B328F071F7FF22978F2BCEAC42E9CC7DB0F7C0D89A99785F9669C6C91A6E949C60020F49F6D3AF447D6AFC7822BDBF39E0EFD119FCF5A2E9979A4679C367EFE0BA859B6DC91';
wwv_flow_imp.g_varchar2_table(18) := 'F5C1532771F885FFB6CAC89571DAF4C08368FAF33BA5EA1B7AF52574FCDB93A9583B1927A98A340B320A00A17DB605318D8B5A51D3D48C9AE62624E309844786AD4531FEFE3E8CE6B12026FD1B79F5D64FA2E5BAEB1D593EB07F2F7A76EDB2CA982BE3B4';
wwv_flow_imp.g_varchar2_table(19) := '68DD06ACFBC13F66BFE7CFD58A64129D0F3F84F3470F5B67E6CA38E52AEE72F9DC38008431859CA0969E71F2353462C3BDF7C15526F7E6399988E3F0BF3F8DD0C8F0AC83323DE374C3438FC077D3CD8EC6DDE8EE9D78F7D11F5965CC957172548966C146';
wwv_flow_imp.g_varchar2_table(20) := '02203C102FACCE84C2189D7A30CEE58B78E015DF8A99F7FC99719919A79537DE8CD61B6FCA55FCAC9FF7FF6E374EECDD93FA6CAE8CD32DFFFC04CA57AC94AA673A28F2410FDEFEDB6F5BFFCC967172548186C1C60230ED45301A433016453816B7A048DF';
wwv_flow_imp.g_varchar2_table(21) := '16450C76AFC76D2D82AFF1786CDB979971BAF6ABF7D99E07345D49D43F343915C266C6E9533B5E84ABBADA761B673B311108E0B7F77C31F55166C6C951E19A061B0F40217CC9CC38D535B760F59DF627C3458706F0DE4B2F21E41FB29A6727E3F489679F';
wwv_flow_imp.g_varchar2_table(22) := '83BB21BFF946997D8F0F0F63E757EEE215A01083C2B4322FC93895B971E5D6AD68F9D81CD3A193090C1C3C70C974683B19A71BBFF703546F949B7334EDCD58C741FCFEEF1FB6FE9999712A55FF780528A0B3D916C434AD5889DAB63678172F463216C7D8';
wwv_flow_imp.g_varchar2_table(23) := '85F3183D770E83C78F23307071468BE69A9E909E71BAFAFEAFA1E5B39F73D49B81177F81C3CF3C6D959199717254B0C6C1250FC0783C8E40248A703C96BACF9F0F3F3CAE3254B9CB50ED71A3AEBC02BEF2D99F1154659CEA5BAFC0C79E78122EC94DBB92';
wwv_flow_imp.g_varchar2_table(24) := 'B1180E3CF87504FAFB2D7998069D8F5152E432FAC263B8303EAEA415556E37AEF056CFBA6B9CAA8CD3BABBEEC1A2BBEE96EAEFF99F3D8BCE1DCFA56233334E52855E064125790510A948B101D6D8D46212553E8887D595B5BEAC19A382679CDC6EDCF22F';
wwv_flow_imp.g_varchar2_table(25) := 'FF6A7B1ED0B42ED1B3BD78FB9BDF40726A63E0D9E638A9D250753D250940F74800E2D667FA58BC7C391ADA96C0DBD8E87835D87499F1680C9160104367CFA0B7A7275597C89FAFAEAF9B3143B490A666669C1A972EC386EF3E621B82D899D338FCFDEF61';
wwv_flow_imp.g_varchar2_table(26) := 'F85CAFD5CC6C19A742F6A19865971C0062DF4FF1F0298ECAAA6AB45F7F036A16B41454E3683084AE777E979A28A7FA01F2928C93980EFDD57BD1B2FD2FB24F8D482430F0CAFF5C321D3A5BC6A9A00216B1F09202406C7D22A6074C1F577FF25654672C58';
wwv_flow_imp.g_varchar2_table(27) := '2F94D6B1F0180EBEF62B24A7F60F5D535F07F15CA0EA982DE32416C42CBAFE06D4ADBD0A55EDABAD8CD3F8896318ED7E1FFD7BF760E8C393339AC70531AADC2A503DA78321F82311ABF4B6152BB1E41A6779F17C9B79FAE001F47DF861BE6139CFD721E3';
wwv_flow_imp.g_varchar2_table(28) := '94B39197E909257505F8602480F0D4BDFF7C2C7EB7EB693414425F7717FA4E9D4A2D96B11B2B735E31324E32EDBC1C624A0A80A3FE61880D68C571DD9D9F813B4B6E7E3E8D090F0EA173D7CE195BA7CF67F9D9CA72C18555756A334E2AFAA5BA8E920220';
wwv_flow_imp.g_varchar2_table(29) := '7D39E2E6BF74F656D48E1191D1511CF9ED5B88A5CD286D5BBF01CDEDEDA85ED4EA7835D8741B129109887D8286BABA70F2DD7DA9A6A9CE38D9D1E4723B87003870ECFDDFBC81C0D462996A9F0F6B6FBF13D56D4B1C94983B343AECC77BBF7C3135514E75';
wwv_flow_imp.g_varchar2_table(30) := 'C629770B2FAF330880A45FC18B17D1B97B72A59638AEF9F2DDA86EBD42B2B4FCC262A323D8FFD453A9DB2ED519A7FC5AABF7D90440D29FB31D1DE83D71DC8A5E76F5262CD9769B64497261675EFF15CE1C99DC9C6B3E0FB10642AC7D10EB20C41BE152FF';
wwv_flow_imp.g_varchar2_table(31) := '051C0220397ABA77EFC2F0C5C9999BF3B1F8DD6E33C4B340FFBE3DE83DDA997AE7603736DFF3C483F682AA4AB47AABB3EE679D6F99BA9D4F00241D39F8F2CB884E6D28B5E55B7F8DB28AC2FF6AE458DF39743CFFF3D486B9924DCF3BACDAEDB636CC2AC5';
wwv_flow_imp.g_varchar2_table(32) := 'AB0101C87B384C06EC7DF18554E44D7FF31DC952EC87892DD33B9EFB19C4CED4D3C7AADB3E8D96CD37596F79DD8D33B768B75FF2CC33E37E3FC63FE8C1C09E7770FC8D5FA73E14EF1EC4B346A91D0440D251D500743EFB0C46A616CB88ED5B367EE72154';
wwv_flow_imp.g_varchar2_table(33) := 'AD5B2FD97A7B61E3470EE1D08F1F456868F2770A1654555953BE4BE92000926EAA0420DC7B1A1DCFEF48B5F4E67F7A0C95AB9D6DBA6BB7DBE39D47F0CE77FF2E757A7B5D2DBC796C1060B79E629D470024955709C0D9B77E83537F3868B5B4FD4F6FC7D2';
wwv_flow_imp.g_varchar2_table(34) := '07BF25D96AB9B0D34F3C8663AFBD660537555660699E3F2F2B57AB9A280220A9B34A00BA7EB10343539BD7CEC7E2F77CBB1C3E78007BFEE1112B4C7CFB8BAB40A91C0440D2499500EC7BFC31C4A67EE4FB533F7F012EAF57B2D57261F1213F76DEFB652B';
wwv_flow_imp.g_varchar2_table(35) := '58CC4C5DD7E8EC4706E55A5198280220A9AB4A00DEF9C9A3A956DEFAF2FF49B6D859D89BDBFF2C5540296D98450024C7050190144EB330022069080190144EB330022069080190144EB330022069080190144EB330022069080190144EB3B09202A0D33F';
wwv_flow_imp.g_varchar2_table(36) := '82D8D4AE0CD9749EAF95620440B3912CD99C920240EC0627F6C899EB2000722385695039DD9446893D38C57EA0A3D158D62B010190B38400C8E9A645542116CBF316480B6B1D37A2A46E81B2A941001C8F13F00AE05CC3A29540009C4B4F009C6B58B412';
wwv_flow_imp.g_varchar2_table(37) := '0A0D40B68ECDD74A31CE052ADCD0E12D90A4B6E9CF00044052440DC20880A40904405238CDC20880A421E900A44F0F4EBFDDE22D90A4B80AC30880A4D804405238CDC20880A42104405238CDC20880A421C502205B73E76BA5587ABA73B6BAB8245272C0';
wwv_flow_imp.g_varchar2_table(38) := '1433ACD0695095CF00C506A0B1A202CB7C35C5B4735EEBE61540524ED3AE0062D3DCDA720F167BBDF0B85C92AAE9174600243D291600D9AE3685B8052AA5C5EFD96C260004608602A53AE581004C295088E9D02A9F01780590FCC6CA12C62B80A49EBC05';
wwv_flow_imp.g_varchar2_table(39) := '92144EB330022069080190144EB330022069080190144EB330022069080190144EB330022069080190144EB330022069080190144EB330022069080190144EB330022069080190144EB330022069080190144EB3302300B0B365A2AC2F99D3830BBD228C';
wwv_flow_imp.g_varchar2_table(40) := '6F82659D9A3DCE0800EC6C99282B6BE6F4600220AB6471E28C00C0CE9689F9CA9F6D7A3001C857C9E29E6F04002A2526002AD5765E170170AEE18C1208C03C0B5AE0E208C03C0B4C00E659D002174700E659E062659CB8224CCE480220A75BD6A862659C';
wwv_flow_imp.g_varchar2_table(41) := '08809C9104404EB7AC51C5CA381100392309809C6E5A44A53F6F1000394B08809C6E5A441100E7361000E71A16AD0402E05C7A02E05CC3A295A032E354B44E16B862025060810B59BCCA8C5321FB51CCB2094031D57758B7CA8C93C3A66A1B4E00B4B586';
wwv_flow_imp.g_varchar2_table(42) := '0D53A1000150A132EBD0560102A0AD356C980A0508800A955987B60A10006DAD61C35428400054A8CC3AB4558000686B0D1BA6420102A04265D6A1AD0204405B6BD830150A1000152AB30E6D152000DA5AC386A9508000A850997568AB0001D0D61A364C';
wwv_flow_imp.g_varchar2_table(43) := '8502044085CAAC435B050880B6D6B0612A1420002A54661DDA2A4000B4B5860D53A1000150A132EBD0560102A0AD356C980A0508800A955987B60A10006DAD61C35428400054A8CC3AB4558000686B0D1BA6420102A04265D6A1AD0204405B6BD830150A';
wwv_flow_imp.g_varchar2_table(44) := '1000152AB30E6D152000DA5AC386A9508000A850997568AB0001D0D61A364C8502044085CAAC435B050880B6D6B0612A1420002A54661DDA2A4000B4B5860D53A1000150A132EBD0560102A0AD356C980A0508800A955987B60A10006DAD61C354284000';
wwv_flow_imp.g_varchar2_table(45) := '54A8CC3AB4558000686B0D1BA6420102A04265D6A1AD0204405B6BD830150A1000152AB30E6D152000DA5AC386A9508000A850997568AB0001D0D61A364C8502044085CAAC435B050880B6D6B0612A1420002A54661DDA2AF0FF217BC4880BA2D8AC0000';
wwv_flow_imp.g_varchar2_table(46) := '000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74321345960867535379)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D797C1CD595EF7FB7AAA5D6BE7851CBB28D8C65C90B36B6071243586212C8320F02D8D2D858B2C3E46521';
wwv_flow_imp.g_varchar2_table(2) := 'E49149269F7921CC122799999097BC90ED85259F30014BB619C91830C990218B97C0D804060BEF96651BE3451BD6BE7677DDF7B92DA9D592B5747755DDAAEA3AF5F9E48FE0BAE79EF33DB77FBA7557067A880011702D01E6DAC829702240044002408D80';
wwv_flow_imp.g_varchar2_table(3) := '08B8980009808B934FA1130112006A0344C0C50448005C9C7C0A9D089000501B20022E264002E0E2E453E844800480DA0011703101120017279F4227022400D40688808B099000B838F9143A112001A03640045C4C8004C0C5C9A7D089000900B50122E0';
wwv_flow_imp.g_varchar2_table(4) := '620224002E4E3E854E044800A80D1001171320017071F22974224002406D8008B8980009808B934FA1130112006A0344C0C50448005C9C7C0A9D089000501B20022E264002E0E2E453E844800480DA0011703101128031C9E70F7DD2DBD6E94DF5232945';
wwv_flow_imp.g_varchar2_table(5) := '656A921A087A06829A27C8942445D33C8ACA3DD054E266C71F8D12E45A9005344509A85CF327AB4A20E85103411EF427C1DF9793D9DFCB7EFA1FFD7674DD2A9F5CD9901BD7AD2B821A5C0EC697036C3980420079000AAC4A04D52B95C045004D00DE0578';
wwv_flow_imp.g_varchar2_table(6) := '2D38AB05B483BEADCF9F96EA850D2A738500346D285BC1157E1738BB1DE0D70148B7017B72C17E04BA39C39BD0F03BA60477F92A77D6DACF45633D4A4801385256963C3349BB9D2BB89373DCC9C0E61A8B8DACB984C019C6F94B1A63BBDE1F60FBAEA9AE';
wwv_flow_imp.g_varchar2_table(7) := '1E48B4B8134A009A2ACA16689C7F86019B00CC4EB464513C9612B8C0389E81C2FE2DAFB2FA94A59E1858B9E305A0A9AC2C03C9DA5F71C6FE1A1C371BC8864C11818908EC639C3D0D3F6AF2AAABBB9C8CC9D102D0585E762FC0BF03E01A2727817C772601';
wwv_flow_imp.g_varchar2_table(8) := '0EBCC538FF7BDFD61DBF75660470E6EDC0972A4A572B9C7D17E03738153CF99D4804D87E8DF16FCCAAACD9EDB4A81CD5030875F7BDFC179C63BDD34093BFAE2050C906D8179DF459E0180168AC28FD1038B60098EF8AA644413A9300E3F58AA6AC9BB9B5';
wwv_flow_imp.g_varchar2_table(9) := 'FA2D2704E0080168AC28DD048E5F0048760254F2D1F50406C0F0395F65CDB37627616B01E0006BDE50FACF9CE111BB8324FF88C058020CF8E7BCAA9A7FB43319DB0A8058CC3323996F03B0C6CE00C937223029018E675BFCEC73765D44644B01E0AB577B';
wwv_flow_imp.g_varchar2_table(10) := '9A67CFD8C9813BA97911810420F052DE8596B56CF7EE80DD62B1A5003496976E05709FDD60913F444007814A5F55CD461DE54D296A3B0168AC287D141C5F37255A324A04AC24C0F03D5F65CDC356BA30CE38857DDC69282FFD0A031EB38F47E409113096';
wwv_flow_imp.g_varchar2_table(11) := '0007BE9A5F55F32363ADC66FCD363D80C6F2353701CA5E004AFCE1504922607B0241A6B1D579DBAAFF64074F6D2100A1117FAF76149C15D9010AF940044C2670AA65805D638799015B08007DF79BDCDCC8BCFD08D8643CC0720168D878EF52A6A90701A8';
wwv_flow_imp.g_varchar2_table(12) := 'F6CB127944044C2310E4602BF3ABAA0F99564314862D1780C6F2D21700DC1D85AFF40A114834022FFAAA6AEEB132284B05606883CF6B5602A0BA8980950498C66EB17240D05A01282F153FFE0F599900AA9B0858498033ECC9AFAC596D950F96094063C5';
wwv_flow_imp.g_varchar2_table(13) := 'DA7BC0D94EAB02A77A89805D0830C63E995759FD8A15FE5826000D15A5BB19C787AD089AEA2402762260652FC01201B8B8614DA1CA943370E89164766A3CE44B4210E05C6145F95BAAC56F42EA6389003456946E06C737A5464A9511013B1360F896AFB2';
wwv_flow_imp.g_varchar2_table(14) := '66B36C17A50B8038E4A3A9BC54289DB88E8B1E22400406099CC9ABAA296200970944BA003494AFB98141F92F9941525D44C0090438B41BF3AB9EDF2FD357E90240CB7E65A697EA7214010B3E03E40B4079D94140DCCA4B0F11200263081CF055D548BDEB';
wwv_flow_imp.g_varchar2_table(15) := '42AA0034AF5F5FA0A981F334FA4F0D9F088C4B80270DB0DC69D5D5EDB2F8481580A60D65F773C6FF4D5670540F11701A01CE715FFED69AEDB2FC962A008DE5A54F00F882ACE0A81E22E040024FFAAA6A1E90E5B76C0110239CAB640547F510010712903A';
wwv_flow_imp.g_varchar2_table(16) := '0E204D00F8E6CD4A53DD61719572AA0393422E130159047AF28A9766B2CD9B3519154A1380A60D652B38E36FCB088AEA20024E26A06A7CF18C6D3B8ECB88419A003496AF7D00608FCB088AEA20024E2620732050A200D000A0931B25F92E9180C4F30225';
wwv_flow_imp.g_varchar2_table(17) := '0A40D92B00FFB8448C541511702A01694785C914005A01E8D4E6487E4B26C06A7D55D52B64542A51004A1B00F8640445751001871368F455D5E4CB88418A006CDEBC59F962DDE17E001E1941511D44C0E104FC79C54B53644C054A1180E6CF7C2A53EB4F';
wwv_flow_imp.g_varchar2_table(18) := 'EE707852C87D22208D40B0A33FBD60D7AE1EB32B942200ADF7DF9333E0F7B49A1D0CD927028942203929909BFBAB17DACC8E478A00346CBC378F696AA3D9C1907D22902804B812F4E56FD9D964763C5204A0B962CD2C8D2B17CD0E86EC13814421A030AD';
wwv_flow_imp.g_varchar2_table(19) := '6066E5F397CC8E478A005C587FF75C8F9A74CEEC60C83E1148140281A0FFAAD9DB5F7CCFEC78A408C0A5F5F7CC53548FF4238FCD8647F689805904B460E0EA59DB5F386B96FD61BB5204A0F1D3EB8A10089E323B18B24F04128680475DE07BE6B97AB3E3';
wwv_flow_imp.g_varchar2_table(20) := '9122002D1BD72D0E6AC1A36607E354FB01CE11D034689C23495142FFA3C7DD0414555D38F3D9E74E9A4D418A005CDCB86EB14A02302A97ED037EB40F0CA0C3EF47905F79147CBAC783ECE424E42427932098FD2BB0A1FDA0125C52B065E731B35D230130';
wwv_flow_imp.g_varchar2_table(21) := '9BF018FBEFF7F7A3A9B70F035AF4E73D4CF326233F3595844072AEACAC8E04C04AFA26D42DBAF7EF767587FEE2C7F3789882F9991948F5A8F114A7320E234002E0B0844DE6AEF8F1D77776A1271018F55A564E2E72F2F2903E6D1A52B373A078BDE86DBD';
wwv_flow_imp.g_varchar2_table(22) := '8CDEB636745D7E1F4D172E8C7A5F612C2402E2F3809EC42640029040F93DDBD505F1CD3FFC78929230FFDAE5C82D9CFC7AC481CE2E9C7EF30DB4B78EACA2163D81E2EC4C24D3406102B5902B4321014890F436F7F5E1624F6F389AE9BE7CCCBBFE7A78BC';
wwv_flow_imp.g_varchar2_table(23) := 'DEA8236CA93F85FADADAF0FBA9AA8A92ECACA8CBD38BCE234002E0BC9C5DE1B15FD370BCBD2334BD279EB48C4C5CF3D1DBA1A8B14FF3351D3F8E33478F84EB989D96861929D18BC870C1DE4030340E217C13FF13CFF0D4635652128D31D8A4DD9100D824';
wwv_flow_imp.g_varchar2_table(24) := '117ADCB8D0DD83967E710C82B80C8DE1DADB3E82D49C9CF84C6A1CC7FEF80774B40F6E10139F028B72B2A0B2A92772C434634B5F3F2EF7F74F39FB203E2DA679BD217189C6767CC150A9A90890004C45C801FF7EA8B52DFCD7BF70D162E42F59A2CB6B31';
wwv_flow_imp.g_varchar2_table(25) := '2670F077FF093ED4A3B82A3D1DB9DEE4496D8A1FFD859EDEB01FD13A20061CE7A4A54D693F5A7BF45E6C04480062E365BBB7BB03019CEAE80CFB75DDFFB833A6EFFE8902AA7FFD75B4340C6E1213EB03E6A6A74F187B436F2F1A7BFBC6FDF7DCFC7C64E5';
wwv_flow_imp.g_varchar2_table(26) := 'CF0AFD5B47C325B4368813DBAE7CC4FA035F6A8AEDF826BA4324000ECFB058F073BE7BF04097E4642F56DE79A721115D3A7C18E74E9E08D94A5355144F301828161B5DEA1D197C14EF4F9F331757DD7A2B52F30BC6F5A5F7D245BCBB6F2F2E9F1FBD09AD';
wwv_flow_imp.g_varchar2_table(27) := '202D15335348040C496094464800A20465D7D722FFFAE6CE9889925B6F35C4D5B673E770E2CD3F876C89C1BB2539D957D8EDF4FB71BA53DCC236F82479BD58F0E1D5C85DBA2C8A9BD939DEAFAD45FDBEDD08444C5D166566222389D61F1892C4288C9000';
wwv_flow_imp.g_varchar2_table(28) := '4401C9CEAF5CECE94173DFE000607E61210AAFBBDE10777BDF7F1FEFECD91DB225BED397E58E1E5414330EC7DA3A10E04323FC5E2F566EFA343C99570AC5640EF93BDA7170CB33F00F0D620AB159949D15AA33D647F8243E89021A0FCD3C081B1E85C1AB';
wwv_flow_imp.g_varchar2_table(29) := 'A834EB30014C1280585B99CDDE8FEC01644F9F8E451F5E6D8887ADEF9EC5C9B7DE9AB00770A9A7174D7D23DFFDCBEEBC0B99258BE2AABBF3E4711C7A7957B8AC180B106302D13E6D030368ED1FDCF034D12384456C7812B30EB4B86984120940B4ADCCA6';
wwv_flow_imp.g_varchar2_table(30) := 'EF458E01A88A82EBEFBE1788FD8FE715D15DA8ADC5F9FAC1A315C61B0338DCDA16DE5D38ABA40457DF79B72E42A75F7E110D270777A58AA9C76B72A7EE4988558F4288FAB5604C75E72627A3203D0D9E387A193155E4809749001C90A4C95C14EBFEEB22';
wwv_flow_imp.g_varchar2_table(31) := '660156DEF131246766EA8EEAF89E3D687FBF256467BAD78B39E969619B5DFE00EA3B47661EFEA27C23527CFAEE97E86BB884FFDE5A19AE63AAB100B1DEE042CFC4A759CF585082BE8E567435358FCB427C16CCCFCA707D6F800440F74FC57A03475ADBC3';
wwv_flow_imp.g_varchar2_table(32) := 'DFE2738A8B317BD9B5BA9CEAEFE8C4C1DFBF0A0CAD03989791113A3360F811537EE2D3433C6A521256FDAF2F032CF65587A39CE41A0EFCEC27080E75E367A5A6226F8269C1B1CB9E859DEC59B331FFDE35482F2E4172D182B069ADAD0D7D67EAD17EF06D';
wwv_flow_imp.g_varchar2_table(33) := '1CDBB9635495B4DF012001D0F553B147E1B1DFE32B6EBF03DEACF8D7F01FFFE31FD1DE7A39149CF8765E9C933DEAAB424C3B8A4F0FF1CC289C8792B56586803851F31CDE3F3778A6EB0CAF17B3237A1DC3158C9D795014158BCBD621AF6C1D58F2E48B95';
wwv_flow_imp.g_varchar2_table(34) := '02E7CFE1E80F7F80965375617FC57E87055999710D3A1A12B4C54648002C4E8011D58BA3BE8EB5B58757E165E7E662D16D1F89CBF4E5B36751F7DF83837FE2196F2F407D4727BA86B61C2FB8F916E47DF086B8EA1A5BA871FFEBA87FFDB5D07FCE143B19';
wwv_flow_imp.g_varchar2_table(35) := '333346BD22E23CDED61E1E7BF06666E283FFFA7F9054382FA6FA9BB655E2F0B6AA7099B19F38311973F8CB24000E4FE0B0FB637B01572D5A82594B16C7145D7F7B070EEDDD1DEE864F34FF1F2900C537DF8A991F5C15533D13BDDCFCC67ED4FD695FE89F';
wwv_flow_imp.g_varchar2_table(36) := '333C1E14658D1ECB18B5E701C00DFFF46DA45DFF81B8EA3EFECD7FC0C5B747846E6176165254F71D8242021057F3B15F2131072E9604F7064746C4C5C2A0F91FF8003C534CA9718DA3A9AE0EE78E1E813634AF2F229C68204E9C3824A6DEC4935F5282F9';
wwv_flow_imp.g_varchar2_table(37) := '3A670086699E79F9455C1A9A09105376851923CB8FC5462331D6C131B8E371FE476FC7BCBFF95ADC8908B6B662FF839F437F7777C8C654CB9DE3AEC8E60549006C9EA058DC13E7FFD5B57786070445D9C14341AE45EE04DD647F57374E1DD81FDEFD375C';
wwv_flow_imp.g_varchar2_table(38) := 'DF64DB8023171FA5656563C5673F1F8B9B13BE7BF0974FA1A7BD3DF4EF3353BC28481B997910822384473C69B9B958F5C42FC162582B305EA59D7BF7E0CF3F7834F44F6247E2D2318B9D0C09CAE64648006C9EA058DD132220BAE8E31D069A9A968E64AF';
wwv_flow_imp.g_varchar2_table(39) := '174C55432BEF06FAFBE01FFA4B1E59CFDCF4B4D056DD899EC81FA378E7C687BE0C9614FB990191F6B5817EECFFD94FC2FF49FCF517BD8070EFA0B32BBCD067F19A52CCBAFF7FC68A66DCF7F7ACB90BC1A1F10C31E620C61EDCF490002460B6C56099F85E';
wwv_flow_imp.g_varchar2_table(40) := '1EEEA6471BA2981B2F484F8538B063B2477C6E1C8918749CBFEA46E4DF7473B4D58CFBDEA5D7F6E1CC81FDA17F134B78AFC9C91E35327FB4AD3D7CB0C8CA07BE84DCBF3466D3D3DB5FFA025ADF1B9C79986CEA515770362E4C0260E3E4E8754DF4025AFA';
wwv_flow_imp.g_varchar2_table(41) := 'FAD036307832CF448FF8C18BFDFE917F71A7AA5B1C3F26E6E3430F635851B60E6973E64E556CDC7FEF3EF72E6A6BFE3DFC6F7929299895367A2970E49907ABFEE9DB488F73F06FAC0327BEF34D5CF8F31BA1FF3C5EBD7105E4A04224000E4A961E57C511';
wwv_flow_imp.g_varchar2_table(42) := '5D62C9ACD828337C3390D828234EFE8D67E38D189413538FC3978D24A7A661E5C64D5033625B8518E8EA44ED9667D1DF3BB8AA6FA213886A2F8F1C587AD3F71F8377617CFB0EC6323CFBE3FF8BD3BFFF5DE83F8F1D77D0C3DB296549009C92291BFA29D6';
wwv_flow_imp.g_varchar2_table(43) := 'E28B9388871FB11D78E147EF40D6A2E8A61F3B8E1FC389DFBF1ADE0928EC4CF41D1EF90970DD57BF86ECDB6E3784C8A1BFFB2A9A4F1C0FD98A751392210E586C8404C0E20438BDFAF10E04C92F2E46E11D1F839A32328A1F1967B0A71B675EFD4F340D6D';
wwv_flow_imp.g_varchar2_table(44) := '361AFEB7C9BEC14FB67784A738177EEA1ECCFEEC17F4A3E31CBBD7DE0D2D30B88B50EC77108B82DCF490002440B645375C6C0A12DD7C6D689EDC88B0C4B659AFAA8616C84C767067E4DE80C87A33A64D0F1D4E9A317D5A685B41F7E5CBE8696D45F7D032';
wwv_flow_imp.g_varchar2_table(45) := 'E3C877A73A12ECBDEE6E5CEE1F5C7BE0BB6629AEF9EEF77587289606EF7D7044488AB33291E6B2CB504800743723EB0C884138B12B2E96FBFFE2F5560C148A1FE944578689FDF8E77B7A4C3B143472EA91290A6EFEF1FF8B7909F0D8D8CF3FF1739CFCCD';
wwv_flow_imp.g_varchar2_table(46) := 'E0390413AD7A8C979753CA9100382553117E8A11FDF7BA7B2036C6C87EC45EFAAB2256E88DEADAC7782CB8389C43AC3788F658F0C871806985F3B0E2473F03E25CBEDB77E4105EFFC6FF0EBBEFC6EF7F113C0980EC5F90CEFA44375F9CC3377C14D7B039';
wwv_flow_imp.g_varchar2_table(47) := 'D5E34186B8F7CFC0ABBCFCFD7DE8EDE9092F9419AE4B2C969997913EE9EC811917838C3D0360E9868DC85BBF2166A2BCBF1F7FFEE267D1D53278DE8110A04539D9AE3C20840420E6E6635D01317D270EFFE88B58EF3F3D7F16E62C5D8694311B678CF4B2';
wwv_flow_imp.g_varchar2_table(48) := 'FDE2459C3F7A145D1D83CB74C563D59C79642F40F8B1F2C18790FB89BF8C3A5CADB313753FFC3E2EBC3578E0A978DCFAD79F7A0051371B7BBC386AF10D8005CB57627AD17C29CE6981004EBEFE1ADA87FE6A8AB503E29C00D9C76A89433F450F68F81A34';
wwv_flow_imp.g_varchar2_table(49) := '117CC15F5C87E22F7F0DEAB4DC495974BFF526DE79EC07E88D103231E857949911D75A0829E04DAE847A00260336CAFCD80B40E69694A02074FCB6BC2738E047ED2BBF817F68EDBC550B67C4D8C7D9AEEE512220F637CC5CB80833965E8BACC54B90B270';
wwv_flow_imp.g_varchar2_table(50) := '2182EDEDE83E7E146D470EA3F9D03BE86C6C1C054B2C8212EB0EE25908258FBAB935910098CBD730EBE7BABAD13AB47127232B0B8B6FFB685C977FEA75A8E5D429D4BF337283B05E7B63CB8BFD085E55094D3D8AE5C913EDD19F682C245A7FC411678519';
wwv_flow_imp.g_varchar2_table(51) := '19469C9F1A6D95B67C8F04C09669B9D229B1D75FF402C473F5B2E5C82B1E39F74E4A081A47F3E97ABC77F448B80720A35E7122F1ACB4B4712F0B11B321620DC2F0F164D1F823D63688B306DDB6E06722362400D1B41A1BBC1339F8B5F84337212B5FDF29';
wwv_flow_imp.g_varchar2_table(52) := 'BCB18414E8EDC3B17D7BD1D3357212702CE5F5BE2BBAE8E23B7DA2453A4208C43A01B13479582423EB14A3FCE22F7E5652F2A8C34DF5FA9508E549001C92C5C8CD30CB3F723B52C6B9AACB8C5002FD0338B667F7A81F7F724A0AF28A8B91919787D41979';
wwv_flow_imp.g_varchar2_table(53) := 'A1DD80C63C1CFEAE2EF45EBE8C8BEFD4A237629F81F8118BC33BA339B64B08C2C8CD408AF4814A6358C8B142022087B3EE5AAC1280C8FB01441085CB5720FFE65BA07ACDBFC4F3D29FF6E1CC1B8367048847F400C4725D7A8C234002601C4B532D592100';
wwv_flow_imp.g_varchar2_table(54) := 'DD2D2D38BC774F38AEF9AB6E40FE4DB7981AE758E30D7FDA8BD36F1C08FFE792AC2CBAE7CFC00C90001808D34C53560840DDBE7DB8DCDC140A2B6BC60C2CADD80428724FCEE5C1006A9FFE257A3A3B427E88A93B236F0F56C04282227A17D12E493633CF';
wwv_flow_imp.g_varchar2_table(55) := 'B26D9300C8261E677DD20540E338F0C2F3616F177FECE3C85DAAEFC6A17842EFA8AFC399BD7BD0DD3A7220483C76A22923A620C5E9C013DD48148D0DA7BD4302E0908CC91680605F1FDEFCCDAFC374AEABD8046F9E4F1AAD605F2F4EBDFC52F8A6206915';
wwv_flow_imp.g_varchar2_table(56) := '0310B705CD4D4F77C5A7060980CC96A5A32ED902202E0909DD0F38F47CE86FFF4E87F7B115D506FA70F4B9EDE8681E7DB1E7B4AB0A915BB21069B30AC0D9E0FD007A1FDEEF47FBE97A341F3F8AFE880B4F85DDB12713EBADCB8EE54900EC9895717C922D';
wwv_flow_imp.g_varchar2_table(57) := '007D6DEDA8FDC3E05979E2912900C7B655A2F5D2A570DD3905B3B1EC917F44D25585E6654B6C657E61070E3DFB2BF0A1CD56624C40DC1824CE0A48D48704C02199758B00749E3A81432FBD14CECA9C0FAC42F1D71F99F2E24FA3D238505F87038F7C1DFE';
wwv_flow_imp.g_varchar2_table(58) := 'A1DB8FC54128578FB9A3D0A8BAEC608704C00E5988C207770800C7E1679F4147CB60D73F352717AB1EFF0594F4912BC2A240A5FB95F63FBC8AB77EF4C3B09D45D959A1A3D112F12101704856DD2000C1AE4E1C78EA8970466EFC974791BA6CB92519AAFB';
wwv_flow_imp.g_varchar2_table(59) := '976FE1BDA18B4AA6BA29C912070DAA9404C02090669B718300F45EBA88B787AEED4ECB9D861B9E19B9C2DB6CBE63ED77EDFF2FBCF1AFDF0EFDE7C98E4193ED97D1F59100184DD4247B6E10808EBA1338BC6BF0FB3F74E6DF4F1F3789E6D466FB8E1EC6EB';
wwv_flow_imp.g_varchar2_table(60) := '0F0FCE7C881D84E2F093447C48001C9255370840DBD14338FACA2BA18C88C33D967DFF31CBB2E33F731AFBFEE64BE1FA974F71DA90658EEAAC980440274059C5490064911EAC8704C058DE46ED179DD4AB8B1BD72D56B5E051635DB787351200B9792001';
wwv_flow_imp.g_varchar2_table(61) := '30963709804E9E24003A01C6589C0420466053BC4E02A0932709804E80311627018811180980B1C0C65A23013097EF58EB2400C6F2A61E804E9E91025030BF08C9A9579EC89396938B4C9F313BF6ACD80B40B3003A1B491CC56916200E68561439D6D63E';
wwv_flow_imp.g_varchar2_table(62) := 'E525A0B3E71761CE8A1586B8470240D3808634A42123D403D049B3A1B7377404F6640F09804EC811C5E913C03896C2120980013CC5D1D791F7020A939D037EF40C6D5F9D33BF08B3A9076000695A076008C40823240046131DB277BEBB277C3106F5008C';
wwv_flow_imp.g_varchar2_table(63) := '834C3D00E358520FC05896A3AC910098039704C058AED403309667D85AA40098F909B072FD86712348CEC9819A66CC7EFDB6238770F4B7B417C0A4A632AE599A059049DB84BA64F50026727DC9273E899C254B0D898CA6010DC118931112809870D9EF65';
wwv_flow_imp.g_varchar2_table(64) := '12007372429F00C672A54F0063798EFB0960E62020F500724DCAA0B566A907602D7FDDB5CBEA0144EE87AF6BEF084F3DD22780EE145A6A8004C052FCFA2B2701D0CF703C0BF409602C57FA043096A7F44F00EA01D027809E264C02A087DE2465654D03CA';
wwv_flow_imp.g_varchar2_table(65) := '1680A4B474CC28291937F2E2071F82277F9621442FBFFC221A236E1F1E361AE8E941F3C913A1FFAB308665B93986D4673723F40960B78CC4E84FA20AC064186EF9C9CF9134EFEA18498DFFFAF9277F8E93BFDE35A92D71576049769621F5D9CD080980DD';
wwv_flow_imp.g_varchar2_table(66) := '3212A33F240031021BF37A3402302F2303D9C949FA2AB2696912009B26265AB72E74F7A0A5BF3FF4BA992B01A57F02284AE8AAEEE1277227A4913D800B4FFE1C27867A0069AA8ACC881FBAB82E3C23C943770346DB1827798FC6000C80389E89449D0510';
wwv_flow_imp.g_varchar2_table(67) := '3FC6E2886E77E48128460A40640F60BAD78B39E9692665CA9E66A90760CFBC44ED150940D4A8C67D910420B8A460CBCE63FA284E5D9A7A0053338AEB0D1280B8B0850B91009000E86B4116972601D09700120012007D2DC8E2D22400FA1240024002A0AF';
wwv_flow_imp.g_varchar2_table(68) := '05595C9A04405F0248004800F4B5208B4B9300E84B0009000980BE1664716912007D0920012001D0D7822C2E4D02A02F0124002400FA5A90C5A54900F42580048004405F0BB2B8340980BE0490009000E86B4116972601D09700120012007D2DC8E2D217';
wwv_flow_imp.g_varchar2_table(69) := 'C5BEF5BEC1CD4029A9A948CDC834C4232D10407BEBE590ADB1FBE1651C0966C55E80195E2F66D35E0043DACF5823B414D814AC404B5F3F2EF4F498647DD0ECD8FDF02400A6E2966A9C360349C56D7C651AE738D9DE897E2D68BCF1218B63F7C393009886';
wwv_flow_imp.g_varchar2_table(70) := '5ABA611200E9C8CDA9B0C3EF475F20080DDCB00A26DA0F4F02601862CB0D9100589E02E73990A80240E70198D716690CC03CB6D22D930048476E5A85D403300D6DE21AAEEBE8444F20100A30BFB818193E9F21C1763634A2F1545DC8569AC783E2AC9119';
wwv_flow_imp.g_varchar2_table(71) := '0D192702D12C8021691CD708F500CC632BDDF2D9AE2EB40FF84DAD37273919851923B70ECB1000FA04302FA52400E6B1956E59FCF8850898F9146566860EE41C7E4800CCA14D9F00E6704D78AB9D7E3F3A06FCE80B1A3BFD98EA51919D9C8C74CFC88F5F';
wwv_flow_imp.g_varchar2_table(72) := 'C0942100F409605EB3A51E80796C5D61598600D02780794D8904C03CB6AEB04C02604E9AE913C01CAE64D56002240006031D324702600E57B26A3081C3AD6D0872E356398EE75E5E4A0A66A5A51AECB9BDCD9100D83B3FE4DD1081FA8E4E740DAD3D300B';
wwv_flow_imp.g_varchar2_table(73) := '8A987614D38F6E7A4800DC946D07C72A661BDEEDEA367CD6611889B887706EFAC8BA0307A38AC97512809870D1CB561318D0340C0435C3DC501890A2AAA1330FDCF8249400346F5A57A2058327DC98488A9908C445C0A32EF03DF35C7D5C65632824455E';
wwv_flow_imp.g_varchar2_table(74) := '1B3FBDAE0881E0A918FCA2578980AB0968C1C0D5B3B6BF70D66C085204E0D2FA7BE629AAE78CD9C1907D229028040241FF55B3B7BFF89ED9F14811800BEBEF9EEB5193CE991D0CD92702894240615AC1CCCAE72F991D8F140168AE58334BE3CA45B38321';
wwv_flow_imp.g_varchar2_table(75) := 'FB442051087025E8CBDFB2B3C9EC78A40840EBFDF7E40CF83DAD660743F68940A210484E0AE4E6FEEA8536B3E3912200BCAC2CB929990F9E914D0F1120025312C81B605E565D3D30E58B3A5F902200C2C7C68AD23E707875FA4BC58940E21360E8F755D6';
wwv_flow_imp.g_varchar2_table(76) := 'A4C808549E0094978A298D421941511D44C0E104DEF555D5CC9311834C01D80F60958CA0A80E22E064029C614F7E65CD6A1931C814801700DC2D2328AA8308389900077F2EBF6AC77A1931C813808AD247C1F1751941511D44C0D10418BEE7ABAC795846';
wwv_flow_imp.g_varchar2_table(77) := '0CD204A06143E97AC6B04D4650540711703201CE715FFED69AED32629026002DF7AD5D1454D8311941511D44C0C904548D2F9EB16DC7711931481300BE79B3D25477581C5AAFC8088CEA20020E25D09357BC34936DDE6CDCDEEA4940481300E1436379A9';
wwv_flow_imp.g_varchar2_table(78) := '50B5850E4D0CB94D04641038E0ABAAB9414645A20EA902D050BE763B035B272B38AA87083890C093BEAA9A0764F92D55001ACBD73E00B0C7650547F51001E711E05FF455ED784296DF5205E0FDF235730250C4B660A9F5CA8249F510019D04B812F4CC99';
wwv_flow_imp.g_varchar2_table(79) := 'B97DBBB49DB3D27F888DE5650701BE5C27282A4E04129000ABF55555AF9019987C01A0054132F34B75398980C40540C358A40BC0A58AD2D50AC71F9D9417F29508C820C0A1DD985FF5BCD83323ED912E00FCF39F4F6AEABE5C473B03A5E5982A72068173';
wwv_flow_imp.g_varchar2_table(80) := '79175A8AD8EEDD0199EE4A1700115C6345E966707C5366A0541711B03501866FF92A6B36CBF6D11201B8B8614DA1CA14714AB025F5CB864CF51181290804820A2B2AD8522DFDE05CCB7E808DE565AF00FCE3D434880011C08BBEAA9A7BACE0609900D060';
wwv_flow_imp.g_varchar2_table(81) := 'A015E9A63AED484063B86D5665CD6E2B7CB34C00426301D40BB022E754A7AD08B0DFFAAAAA3F61954BD60A40C5BDCBC1D58356054FF51201AB0970B06BF3ABAA0F59E587A50230D80B28A5A3C2ACCA3ED56B3501CBBEFD8703B75C009A2ACA1670CEDF06';
wwv_flow_imp.g_varchar2_table(82) := '90617536A87E222091403702EA72DF73E6DF003C594C960B8070AEA1BCF42B0C784C227CAA8A08584C40EEAEBF8982B58500F0B232B5C9CB7783E3668BB342D513010904D86BBEAA6A5BB4755B0880204E9F0212DA1D55610702B6E8FADB660C2032238D';
wwv_flow_imp.g_varchar2_table(83) := '156BD782B37FA77303EDD04EC907130868002BF55555EF34C1765C266DD30318F6BEA9BCEC610EFEDDB8A2A1424470AC5DD90000034949444154C0C60438F0D5FCAA9A1FD9C945DB094068507043E9D38CE1AFED048A7C21027A0830CE7F9CB775C757F4';
wwv_flow_imp.g_varchar2_table(84) := 'D830A3AC2D0520B465B8EBF2AFC170871941934D222099C0CEBCE2A5A5B28EFA8E25365B0A8008E0E2E7EF4A53BBBD5B00AC8925207A9708D88CC08BC1F4FE0D054FEDEAB1995F21776C2B00C2390EB0E6F2D26F73E01FEC088F7C22029311E0C0777D55';
wwv_flow_imp.g_varchar2_table(85) := '357FCF424DD99E8FAD056018596345E926703C0D40B52746F28A088C2230008ECFF8B6D654D99D8B230440406CD8B87615D3D83374B390DD9B94EBFD3BA428FC3333B7EC78D309241C230002E699FBEF4F490B743D0C8E470024390130F9E81A027E703C';
wwv_flow_imp.g_varchar2_table(86) := '9A9731ED3BECA9A7C41D988E781C2500C3449B37AD2BE19AF603CEF95D8EA04C4E263201F17DBF8331F68DBCCAEA534E0BD49102101E1B285F7313A07E0FE037390D3CF9EB7C020CD88D20FFDBBCED3BC46E56473E8E168061E20DE56B6E60600F82B1BF';
wwv_flow_imp.g_varchar2_table(87) := '0287D7919920A79D4180A11F400DB8F6B8AFEAF9D79CE1F4C45E2684000C8777F1BEFB66A8CC7F3F14FE00382B727A72C87F5B11380DE0C9A096F474C1B66D2DB6F24C8733092500911C1A37ACFD3818FB1407BF8B81CDD5C1888ABA9400077F8F31BC0C';
wwv_flow_imp.g_varchar2_table(88) := '283B7D95D5AF26228684158051625071EF72AEA97731C6EE00F87500D213319914936E02DD007B0B8CFF8E696C57DED6EA843FAFD2150230B659346E58331F505680895B8A99B8A9B810401E8002DD4D880C388180B87EBB09C0BB00AF0567B508AAB556';
wwv_flow_imp.g_varchar2_table(89) := '1FCF650538570AC064A0F9439FF4B6757A53FD484A51999AA406829E81A0E609322549D1348FA2720F3495B859D15AA7AA5309722DC8029AA20454AEF993552510F4A881200FFA93E0EFCBC9ECEF653FFD0F318847CF10016AC8D41488808B099000B838';
wwv_flow_imp.g_varchar2_table(90) := 'F9143A112001A03640045C4C8004C0C5C9A7D089000900B50122E0620224002E4E3E854E044800A80D1001171320017071F22974224002406D8008B8980009808B934FA1130112006A0344C0C50448005C9C7C0A9D089000501B20022E264002E0E2E453';
wwv_flow_imp.g_varchar2_table(91) := 'E844800480DA0011703101120017279F4227022400D40688808B099000B838F9143A112001A03640045C4C8004C0C5C9A7D089000900B50122E0620224002E4E3E854E044800A80D1001171320017071F22974224002406D8008B898C0FF0772B8C200BD';
wwv_flow_imp.g_varchar2_table(92) := '6290310000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74321346272960535380)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDBD07B8645775E7BB2A875B755377DFEEBE9DB33A48DDCA12020B10D104F91BC300233C9E370CD81286F7EC';
wwv_flow_imp.g_varchar2_table(2) := '374E331E66CC3C8309B601130C8CE7F16C63CFD806810D0830424209A9954377ABE36D75CE3754DDCAE17DABA40B4D734F9D53E154D5A9FDDBFEDAEA8FDE67EFBD7E6B559D7FEDB0B6EFF46D6FAB0A050210800004200001A308F8100046F91B63210001';
wwv_flow_imp.g_varchar2_table(3) := '084000023502080002010210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A';
wwv_flow_imp.g_varchar2_table(4) := '1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004200001082000880108400002108080810410';
wwv_flow_imp.g_varchar2_table(5) := '00063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004200001082000880108400002108080';
wwv_flow_imp.g_varchar2_table(6) := '81041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004200001082000880108400002';
wwv_flow_imp.g_varchar2_table(7) := '10808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004200001082000880108';
wwv_flow_imp.g_varchar2_table(8) := '40000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004200001082000';
wwv_flow_imp.g_varchar2_table(9) := '88010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004200001';
wwv_flow_imp.g_varchar2_table(10) := '08200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C860004';
wwv_flow_imp.g_varchar2_table(11) := '20000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C';
wwv_flow_imp.g_varchar2_table(12) := '86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018';
wwv_flow_imp.g_varchar2_table(13) := 'E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612';
wwv_flow_imp.g_varchar2_table(14) := '400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000';
wwv_flow_imp.g_varchar2_table(15) := '020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001';
wwv_flow_imp.g_varchar2_table(16) := '084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006';
wwv_flow_imp.g_varchar2_table(17) := '200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080';
wwv_flow_imp.g_varchar2_table(18) := '002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000';
wwv_flow_imp.g_varchar2_table(19) := '042080002006200001084000020612400018E8744C8600042000010820008801CF12A854AB52AA56255B2A4BB1529152B522E5CA8BFF5BB95A956AB55AB3CDE7F349D0E79380FEF1EBDFFD120EF8251A0848D8EFF7ACFD0C1C021080402B041000ADD0E3';
wwv_flow_imp.g_varchar2_table(20) := 'D98E13A8BDDC2B15C996CB922A1625572A4BA65C6E781C2A06227EBF4483011908066B7F827E7F4D24502000010898400001608297FBC046FDB57F26979354A1D8D40BDF0982782020A3D1880C85C3B519030A042000817E268000E867EFF6816D3A957F';
wwv_flow_imp.g_varchar2_table(21) := '2E9797F3F97C6D9ABF13459708164523B2201A6146A013C0E9030210E80A01044057B0D3A91D019DEA9FCA17E46C2E27850EBDF82F1D53C41F9085D1880C479811B0F317FF0E0108788F0002C07B3EEBFB11CF148B722A93955CB922557971235F374B22';
wwv_flow_imp.g_varchar2_table(22) := '189445B1A80C8642DD1C067D43000210682B0104405B71D258AB0426F3053996C988AEF9F752D1CD81CB07E2321C0EF7D2B0180B04200081A60920009A46C783ED26702A9B95D3D95CBB9B6D6B7B4B6331198B45DBDA268D41000210E80601044037A8D3';
wwv_flow_imp.g_varchar2_table(23) := 'E7CF10D05FFB2732D9DA46BF664A3C9194D1C58B253E3222A1584C82C1A0F88241F10702E2F3F9A55C2C48B9549272B128A57C4E3253D33275E68CA467A69BE94E86C22159954808E7049AC2C7431080408F104000F488234C1D864EF41F9FCD34FCF21F';
wwv_flow_imp.g_varchar2_table(24) := '1A1E91E1F1A53238B644C2F198F84361F1079C25F5A9942B5229E4A594CBC9CCD97372FED85199999E126960D90111606AC4623704FA870002A07F7CE9494BCE647372329B753CF670382ACB366E90D1952B25186DCF547C299797E9E3C7E5F8FE7D92CD';
wwv_flow_imp.g_varchar2_table(25) := 'CC3A1E8B1E151C8FC71DD7A722042000815E228000E8256F1836960BF9BC1C9DCD38B2DAEF0FC88ACD97C9C255ABDBF6E2BFB4635D2238B37FBF9C3878404AC5A2A371AD4A0CB031D011292A410002BD460001D06B1E31643C9952490ECCA41D1DF34B0C';
wwv_flow_imp.g_varchar2_table(26) := '0ECAFAEB6E90C860B223740AA9943CFFE00392CDD88B13BFCF276B12094984821D191B9D400002106817010440BB48D28E63029AD8E7C04CCA5166BF91858B64F5555749389170DC7E3B2A96F27939F0F0C3327DFE9C6D737AA990CE04E87F2910800004';
wwv_flow_imp.g_varchar2_table(27) := 'BC420001E0154FF5C93875D3DFE1545A34D98F5D5938BE4C56EFD8218136ADF5DBF577E9BF970B4539F4D8A372E1D449DB47353F808A000A04200001AF10400078C5537D324EBDC1EF502A6D6BCDE8D898ACBBE146F107BB3BB55E2E9664E2D19D72DE46';
wwv_flow_imp.g_varchar2_table(28) := '04F8441305C5643412B1B5AD9B155480E935C9B5FFBE34103DCE58FBE3532B2810808029041000A678BA07ECD4CB7CF4D7BFDDF5BDD14452B6DEFC4A09467A23EB9E8A807D3FBA57666CF206E812C0C6A1C19E7B892AF77CB922854AB976AF42A952957C';
wwv_flow_imp.g_varchar2_table(29) := 'B92C7AD19216BD0639ECF74BA8F6C757FB6F2410A8FD6F140840A07F092000FAD7B73D679993237FE1484C2E7BD98D121B19E9A9F1EBC6C0E7EEBD478A364B179A2E7841976701F4E59E2A96245D2A4AB65416BD58692EC581DDDD0A17CF01A8008806FD';
wwv_flow_imp.g_varchar2_table(30) := '9208866A9B1CD9E3D05321C96020D032010440CB0869C00901FDB5B97F3A25F94AB96EF5CD37DC2883E3E34E9AEC789D9963C764CFCE47EAF6ABBF9E751620E8EBEC64BAFEB29F291465329F9742A55AFB756FF7B2770A504541D0EFABD934140ECB4824';
wwv_flow_imp.g_varchar2_table(31) := 'CCEC805378D483400F134000F4B073FA69689AE35F73FDD72B8B97AF9055D75C2B3E7F675F9E8D707EFE473FB23D19B07260A0F692EC44D117BD5EA0A4699473E5FAE2AA5DE3890502B5BD0EA391B0E831480A0420E04D0208006FFACD73A3DE373D2359';
wwv_flow_imp.g_varchar2_table(32) := '9B17D4F65B5E2BD1A1C19EB66DF6EC39D9FBF0437597029221BD2B6040F40641378BBEF8CFE672B65CDD1A433C1894B1685406C3A19EDBF7E096CDB40B817E228000E8276FF6A82DBA096DCFD44CDD29E9656BD7C9F21D3B7AD4829F1DD6B1A79E92E387';
wwv_flow_imp.g_varchar2_table(33) := '0E5A8E555FFCEB92498905DDC90BA0BFFA8FA4671D1DA5EC04503D02A97B1FDC163C9DB0853E20601201048049DEEE92AD3A3D7DAC4ECADF4020203B5EF77A09C6625D1A6163DDE6A6A665DFC33FAE7B6FC0783C268B5CC85FA01914F5F224BB93148D59';
wwv_flow_imp.g_varchar2_table(34) := 'D47AED883F20AB9324436A9D242D40A0730410009D636D644F7AD0ECD04C4AD2A592A5FDA3638B65C3CB5FEE293EC79E7C528E4F1CB21CB3DE16B8BACDD90BA70A053999C9D68EF2F562D10D90BAFF81B4C8BDE81DC604819F278000202A5C25A0D3FFCF';
wwv_flow_imp.g_varchar2_table(35) := '4FCF48C5E2AA5DBDE467C35557CAF0CA55AE8EA3DD8D4F9F3821CF3FFC63CB66DBF98B5845D4D96C4E4EE772961CAD06A27C4391880C8E2D92C4D86209C5E2E20F8724188E888482E2F3F9A5522A48399B9372BE20C56C46325353327DF2A414B53F9B53';
wwv_flow_imp.g_varchar2_table(36) := '1B97F6AB270696C6A3B5A3906C106C77D4D11E04DA4B0001D05E9EB4760981E942510EA7AD33FFC51349D974E3CB249CEC6CAEFF561D55CAE6E4C9EF7DD7F205D9AECC802A9CF457FFB97CBEA12107432159B66D9B0C6FD82803E3CB44FC8DED47A8160B';
wwv_flow_imp.g_varchar2_table(37) := '9239794226F71F90D3FBF749BE816B9275A02A00960DC4D91CD890D7A80C81CE1240007496B771BDD91DFF1B5BBE5CD65C77BDE7B854CA1579E1B19D72E6F871CBB12F8A46643C1E6FC9367DF99FC9E51CB7111B1CAA1DA51CDAB44902B1D6FA9EEBB452';
wwv_flow_imp.g_varchar2_table(38) := '2CCAD4EEE7E4E8638FCAECF4B4E3B1E81E08DD0B418100047A930002A037FDD237A33A91C9C8D99CF5AFD7B5DB2E97451B377ACFDEAAC8B94307E5E0D34F598EBDD57D0017F279399EC93A9AF68FC407647CEB1619BBE6BAB6BDF82F35AC9CCFC9F9A79F';
wwv_flow_imp.g_varchar2_table(39) := '94A38F3F21F9ACFD55C93A0BB23211173D25408100047A8F0002A0F77CD257233A3A3B2B17F2054B9B2EBBEE7A195ABEDC9336A74E9F96DD0F3E6039F6816050D60F269BB24D53F8EAA549A5AAFD86BF9165CB65D54D37497CF9CAA6FA6AF4A1F40B87E5';
wwv_flow_imp.g_varchar2_table(40) := 'C803F7C9D4E9D3B68FEA3E808D83C9DADD02140840A0B70820007ACB1F7D351ADD00783C9311DD07605536DF78930C2E5DE249BB739353F2CCBDF748D5E225AD8972363421003477FFFEE91947BBFD975EB65956BEF255128877F62AE2F26C5A267EF07D';
wwv_flow_imp.g_varchar2_table(41) := '3973D03A1FC29C53F50E81B5C944ED92210A0420D03B041000BDE38BBE1B89A6A6D5F3FFB3758E006E7BF92FC8C0D8224FDA5EDB08F8DDBBA46221003465AEDE0BD06851669A3BC1AEACBDF1265972E3CBECAAB9F8EF5539F5D04372E8E1876CFB687539';
wwv_flow_imp.g_varchar2_table(42) := 'C4B6032A4000020D134000348C8C079C12D069EC89745A742660BEE2F7F965EBCD374B7C74D469933D55AF522AC913DFFE96942D521CC7030159DFE0F5C0A9A29E9A98B55DF75F73FD0DB2F4A657749F47B522E7773E2C7B1F7CB0EE58344BA0A647D634';
wwv_flow_imp.g_varchar2_table(43) := 'C95E287AFA622E6A75DE82238D5EF01A636C940002A05162D4774C4067000EA7662D6F00D433E8DB5EF10B125FB8C0719BBD54B15C28CA13DFF9B6E5514015001B1A9801709AE277D9966DB2F275AF135F8347FBDC62572DE6E5E80FEF9663BB76D5EDA2';
wwv_flow_imp.g_varchar2_table(44) := '953D116E8C5D79EBD5C91AA7F972A5B6DF42FFB74A555EBC4DF1A5DC157AA3830A8080DF574B771CF0F9251AF04B2C109470C04F0A64379C439B1D218000E80866333BD15FFE476733A2BF6AADCAD697BF421263639E0454CC64E4A9EF7DCF7209A0D13D';
wwv_flow_imp.g_varchar2_table(45) := '00E772BAEBBFFEEEFAD1E5CB65C39BDF2281786FE54D28CDA664FF37BE2193A74FD5F5A5CE0274F35480FEB2D74C8AE962A91697BA3CA52FFB668A8A0115357A195222A8622040DE836640F24CD7082000BA86BEFF3BD6CD6C2766333259B03E05B0F986';
wwv_flow_imp.g_varchar2_table(46) := '1B65707CDC9330F44E8067EEF9A1E526407D29AC73B809505F4CBBA7A6EBBE8CA289845CFEF6774A6864A4277995A62EC8135FFDAA94F2D6790B7443E0A6066645DA65A8BEE2F558E5855CDEB57B14540C6802A4E1481821D02EC7D18EAB041000AEE2A5';
wwv_flow_imp.g_varchar2_table(47) := '71BB44369BAEBD4E8657ACF02428BB6380FA4B577FF13A294E7EFD6F79C31B6478CBE54E9AEB5A9D734F3C26FBEEBDA76766015458A9003D9BCD5B2E45B51B96A6811E8B456A331DEC1D68375DDA6B270104403B69D2D6CF11D0FBEA4F64B29664566DBA';
wwv_flow_imp.g_varchar2_table(48) := '4C966CDDEA497267F6EE93895DCF5A8E7DE14BE9709D18B76F7A46B2169B09F5F95832293BDEF3DE9E59F7B7B2499305EDFAEA57253D75C1D26C9D1959934CB8FA72D417FF4CB1289A8952D7F7ABD2DC34BF13DFCD57479320E93E81B158B4B6F191AB92';
wwv_flow_imp.g_varchar2_table(49) := '9B25C9736E124000B84997B6456FB07B213D6B496274C952D9F0B26E1E656BCE497A02E0E0C30FCB8533D6C97096C662B517805DD1BD127BA666EABEA4BA7FE4CFCE8A9FFEFBC907EE97899D0F5B3EA02FC78D4349D1E500378A5E99ACE993670AA58EBF';
wwv_flow_imp.g_varchar2_table(50) := 'F8E7B3673014AAC5812E115020D04B041000BDE48D3E1C8B1E05DC37336369596C20219B6EBC5122838D9F97EF26AE926E00FCC1BF48D922C78126BD5931107774EC6D325F9023B3D62249D7FEB7BFFBDF763CD94FB37C8BE7CFC9AE3BBF26993A7ED76B';
wwv_flow_imp.g_varchar2_table(51) := '834722ED4F11AC82F3F86CD65106C566ED6BE6399D01583E405AE466D8F18C7B041000EEB1A56579F138954E6F5BDD611F080464DDF61D32B27AB5A7784D1D3B267B773E6239663D01B03A31609BFD4EA7AAF5E55F2F5BE2F26D7AECEF8DDEE153A9C80B';
wwv_flow_imp.g_varchar2_table(52) := 'DFFF9E1CDFFD9CE59847C26159911868EB66394D9EA449945A2A7ACC2F1090403852BB46597C3E29E5B352CA17A55CB23ECDE2B44F1501BA519002815E208000E8052FF4F11874E5F5687AB6EE4980C52B57C9EA6BAEF11485A34F3E2927260E598E59BF';
wwv_flow_imp.g_varchar2_table(53) := 'E4F5CBDEAEE8F4FFF3D3337513FF6C79C31B6578CB36BBA67AEADF5387F6CBB3DFF886E59874FA5F3748B66B19C0EED649AB8184623159B871932CBEFE46896FDC24C19151F16BCAE28BD216D7F60F542A522D97A53C3929B3FBF6CAA9471E96B37BF748';
wwv_flow_imp.g_varchar2_table(54) := 'D941C6C64BFB5E1C8BCAE258ACADE2A7A79CCF603C430001E019577977A076FB0022D1985CF1BAD78B3FE8CE9A70BBC9E56752B2F7A107259BB19EB6773AC5ADE7D10FA65296434C8C2E90CBDE7AAB8447BD952CA9383D2D4FFEF557A454E70868BB7202';
wwv_flow_imp.g_varchar2_table(55) := '34F3F21F5CB254C6AFBB4116DC7CB384968E8B3FD1D8A54DD5745A0A274EC8F987EE93133F7E48664E9E6C28CCC6A25159CA55C90D31A372FB092000DACF94162F21E0E457EE8A8D9B647C9B377EE59EDAF59CBCB077AFA59F1BD9E466376D3DBE798BAC';
wwv_flow_imp.g_varchar2_table(56) := '7EE39B3C1753D562410EFFCBF7E5E4F37B2CC73E1E8FC9A2A8FD26C97AC69FC9E6E464D6FA94C9A5CF068221B9ECEDFF5A16BEFA351258DC9E4BA84A274FCAB97B7E20FBEEFC7ADD1C08978E65492C263A1B408140B7082000BA45DEB07EF74ECFD452AE';
wwv_flow_imp.g_varchar2_table(57) := '5A155D77DDF1FA3748B0C51782DB58F3D333B2FBFEFBA450B0BEAC47777DAF4C0C383AFA65F7EBF5B25B5E23A3DBAF74DB2C57DA9FDEB34B76DDF51DCBB6F5E5AF22A0D96237B37471BBFE4050D6BDFEF532FEB6774860A13B974F95CF9C96637FFB3732';
wwv_flow_imp.g_varchar2_table(58) := 'F1A37BA5522E39326B7522217A51120502DD208000E8067503FBB47BD12992151B36C8F8E557F4349D638F3F2EC75F385C778C8D6CF4D21C099A2BC1AA5CF1CB6F97C42A6F6D909CB32577E6943CF1377F6D699B6E0454A1D44CD1A37EFB67AC974E2E6E';
wwv_flow_imp.g_varchar2_table(59) := '7368F972D9F65BBF2B91F5EB9BE9AAE167F27BF6C8D39FFCA8A4CF9EB57D564F07AC4B2625E691E52F5B83A8E0290208004FB9CBBB83D5658043A9B4ED2CC0C6EB6F90C125ED999A6D37ADECD9B3B2EBA1072D6FFFD3FE823EBF5C363CE8E8D7BFD63F3A';
wwv_flow_imp.g_varchar2_table(60) := '3B2B17F2D6A992AF7CE76D12F368AAE4E2F4943CFA975FB67483CE946842A0468B9E2899B089A5B936C7AFBE4636DCFE1B12185BDC68372DD52F9D3923073EFB6939F1D413B6EDE8A551AB9209095FB4F1D0F6212A40A00D0410006D804813CE08D86505';
wwv_flow_imp.g_varchar2_table(61) := 'D456924343B2F6EA6B253A3CE4ACD10ED5D28B7F9EFDE1DD52ACB3A94D87B22C1E978551E7C7BCF445A619EBE62D3E9F5CF56F6E93E8E2A51DB2B2BDDDE805413BBFF817968D367257C25C237A6C522F4CAA279AB4AECFEF978D6F7AAB8CDFF62BE28BDB';
wwv_flow_imp.g_varchar2_table(62) := '9FC668AFE52FB656CD65E5F857FEA71CF8EE5D963746CEF5ABA746743984D4C16E788236AD082000888D8E11D0CB81F485A7D3B7F5CAE8A231597BFD0D12E891B5D1522E27071E7A48A6A726EB8E5B7FFD6F1919727CBC4B8F481E9C49D56EA49BAFF8FD';
wwv_flow_imp.g_varchar2_table(63) := '01D9F1AE7779560094731979F40B5FA87B5BE2FAC1A4635ECAC8E9BAFF8637BD4956BCEFFDB573FCDD2CDAFBD12F7E4EF67DFB5BB6C368D7A908DB8EA800819708200008858E1270FA053EB66C99ACBEEE866E7F7F8BA6FCDDF7C003327DE17C5D4EBAF3';
wwv_flow_imp.g_varchar2_table(64) := '5F33FF3592DDCE4E00F87406E0B6774B64AC379744EC0247CFC8EFFCFC9F4BD5E2BA5D4D8DABB7253A7D456B52A90333A9BACB483AA6F1EB6F904DFFF7EF882FDAFC06433BDB1AF9F76A212FFB3EF97139FEF043751FD34B84344532B3008DD0A56E2B04';
wwv_flow_imp.g_varchar2_table(65) := '1000ADD0E3D98609E897F8E1545AD236B300DAF082C54B64F555574930D69D2F72FDE57F70E7233275EE9CAD9DCD5E70537709404476BCE35D125FB6DCB6FF5EAC504ACDC8CE2F7FD172688D2E01E812D2C94CAE6E7EFFC55BB6CA65BFFB9F25D0635726';
wwv_flow_imp.g_varchar2_table(66) := '97A7A6E4B90F7F48CE1FD86FC94345E4F281988C9229B017C3B92FC78400E84BB7F6B6517A3FC08154AA6EF6BB390B864617C8CA2BB64B7C74A4A346E5A7A665DFCE472493B6DF69AE53FF2B13CEF2FE5F6AC4119B2C89DBDFF6761958E9D15300A74FC9';
wwv_flow_imp.g_varchar2_table(67) := '135FB53E05D0C826409D2DD93B3553F74A5F3DEAF7B24F7F56C22B577534569C76563C715C1EFA8DDBEBA614D659804DC3838E67459CF64D3D08CC470001405C7485C0B95CBE764DB0936B5AA3B1B8ACBC7C9B8C2C5FE1FA58AB95AACC9C3A29071E7F4C';
wwv_flow_imp.g_varchar2_table(68) := '4A569BF32E19854EFD37FBABED4426236773D639052E7FEB5B25B97E93EB76BBD1C1ECE183F2F4D7BF6ED97423C7002FE4F372D426CFFF65B7FE928CBFE7D7DC30A56D6D1EF9C267E4C05D77D56D8FBD006DC34D43360410008448D7089CCC646BD7B63A';
wwv_flow_imp.g_varchar2_table(69) := '2D4B56AC9465DBB6B9B6245098CDC889DDBBE4F4D1234E8724AD6673B3CB64B7F996D7CAC8F61D8EC7D34B15A79F7B46767DFF7B96435A14D59DEFF63BF4F5D7FFFEE919C9D64924E50F86E417BEF497E27729C94FBBB8964E9F92873E788794EA642FD4';
wwv_flow_imp.g_varchar2_table(70) := 'BD116B9309F602B40B3AED58124000101C5D23A05FEC27663372AE810B55C2A1B02CDBB041166ED828FE80BF2D632F174B72EEE07E39B2E779CB1DEBF375341A09CB8A81E612D9CCB567970A78D59557C9B257DDD2163B3BDA48B522C7EFF9A1BCF0D493';
wwv_flow_imp.g_varchar2_table(71) := '96DD2E8DC564CC412A5CCD21B1676AA6EE6CD1C637BF4596BFEF8E8E9AD86C67C7BFF417B2F75BDFACFBF896E121DB9B249BED9FE72030470001402C7495801E0D3CE9E05CF7A5834C0C0EC982152B24313C2CD1C1C1866705CA8582E4A6A664EACC1939';
wwv_flow_imp.g_varchar2_table(72) := '7FE284641DACF55F3C868591882C7370DB9F1D5C3D02A83BDBADCAC892A5B2E1ADB74AB0C1CB6AECFA75FBDF4BE994ECF9C77F90549DD3134EA7BAED4E8E0C2C582057FFF78F4870F94AB7CD6A4BFBF98983F2D487FF9BCC9EB7DE5CEA944D5B064423C6';
wwv_flow_imp.g_varchar2_table(73) := '12400018EBFADE315C45804E85EBBE00277B022E1E79281894D8E0900CAA10181A12BDDE558FCFE919FAB919828A5EE55AA948B958AC5DDF9A4BA76566725232A919DBC43EF351D21CF67A939BD3E36BF548EBAF5BBD27414F475895CB6FFD2549AEDBD0';
wwv_flow_imp.g_varchar2_table(74) := '3B0E733092F4C44179E64EEBF57FBD06787562402281FA37406AE29F63B399BAD749AFFE859B65ED7FFC3D07A3EA9D2A873FF50939F4C31F5A0E48679734A91447027BC767FD381204403F7AD5A336E9462FDD1858EF65D8B0699A08A6CECBB5D1F69C4E';
wwv_flow_imp.g_varchar2_table(75) := '5B3B6D575F70BAB94D7FE55A9555DB77C8B25B5EEBB4C99EA877EC873F902375A6FF9D2E9F68DA5F9D2151A16455AEF9BFFEA30CBEDA5BCB24A9FBEE95473FF9314B9B342DB0EE03B013483DE16C06E159020800CFBAAE3F07AE3706EA9D01F5BEF0BB61';
wwv_flow_imp.g_varchar2_table(76) := 'B91EF55B9D1C10DDA0D5EE6237C51D890FC88E5FF9B71218683C6F7EBBC7EAA4BDD2F494ECF9FAD7243579C1B2BAD30B9352C5622D1EACCAE0D265B2E30F3E24C115DE98FE9FB3A378FC983CF107BF5F7719809B029D441B755A21800068851ECFBA4240';
wwv_flow_imp.g_varchar2_table(77) := '5FFE7A7BE064A1E02857802B83B8A8515DEF5F148BBA76598B2E81EC999AAE6BEB9A6BAF93A5AFB8D96D53DBD2FEC9FB7F24138FEEB46C4BA7B5370E261DFDBAB5BB4572CDAB6E91D5B7BFBF67B2FE390558CD6665E2739F96C3F7FDC8F291C5B168ED94';
wwv_flow_imp.g_varchar2_table(78) := '0905026E114000B84596765B22A02BE2F972B9B624902E961ADE1BD052E77A998CF8241E0C887E092742A1B6ACF7D71B93DE09502F3B62281C96ABDEF35E09C4EC8FCDB56A7B2BCF97A62EC8B3FFF0F7924D596F6C1C0A87645522E188E9719B53223BDE';
wwv_flow_imp.g_varchar2_table(79) := '7BBB8CBEE5ADAD0CB96BCF9EFFA73BE5E9FFF125CBFEF582209D29A140C02D020800B7C8D26E5B08A8103897CBC9F95CA16E16B8B674F65223BAFEAA2FFEA170D8F1B5BEADF66FB70CA0EDAFBEF24A19BFF9D5223D7C6DECC477BE25279FDF5317C7BA64';
wwv_flow_imp.g_varchar2_table(80) := '521221674B2976D725DFF0A13F94F835D7B58ABF2BCFA71FDB293B3FFC5F2DFB6E245152570CA053CF13400078DE856618A0CB029A0B7E325F9452D57A43582B34749D5F37A7E9D9F440876F9153A1F3FCD4B4E8A637ABE2F7F9E5F25FFEE59E4D0D9C9A';
wwv_flow_imp.g_varchar2_table(81) := '3824CFDEF9B5BA2E880702B26168D0B19B0EA7D3325DB0B82E59446EFAC49F4A64D366C7EDF552C5FCDEE7E5C1DFFE4DCB21E94C89EE03A040C02D020800B7C8D2AE2B04F445A9D709EB4B61A6506C7956407FEDEB2F7DFDB28D07838EA6A55D31ECA5AB';
wwv_flow_imp.g_varchar2_table(82) := '6E8FA43375973BE28383B2E597FE95847B2CE35DEEF42979EE6BFF20059BCC8E6B9209D13B009C16BBA591977FFAF3125EB3C669733D55AF74E2B8DCF7EBFFC1724C8D5E96D453C631184F10400078C24D0C723E02BA79AE54A9D4F608142A65A954A5B6';
wwv_flow_imp.g_varchar2_table(83) := '91AE22D5DADFE7AEA1D54D67FA83DE2FBEDAB96AFDA3BFF093A1606D235AA77FED5B7953C77E6476B6EE2F5E7D7699B3D4F3000020004944415474D972D970EBAD1288F6C6FA70393D23FBBEFD6D993C7EAC6EA03672F98F36A462EF509DBD117AF9CF4D';
wwv_flow_imp.g_varchar2_table(84) := '9FFEAC847AF4F21FBB4F6DE9CC69B9FFBDFF87E575C92A00D636705DB25D7FFC3B042E2580002026FA96C05C6A9D7624ECE914A49962515E48CFDA9E7E58BC61A3AC7BF35B447CED4987DCAC7DD562418EEB99FF5DBBEA36A1224BB3DB251BF8F56F2B00';
wwv_flow_imp.g_varchar2_table(85) := 'FC01B9E9339FF3AE00387D5A1EF8B5F748A5529E971D3300CD4625CF39258000704A8A7A10E81001BB9DEF73C358B26993AC79E39BC5D7A54D819562418EDDFD2F726CF76E5B32CD6E689B48A54545915579C5A73F27A1356B6DFBEFC50AA59327E5BE5F';
wwv_flow_imp.g_varchar2_table(86) := 'FBF796436B74C6A4176D644CBD4D0001D0DBFE61740612D0A50DBDFDAEDE86C0392C238B97C8FAB7DC2AA141E71BEBDA81B43835297BEEFCBAA4EB24FB99EB271608D4A6B2834D6CAC3C929EAD9B06F8659FFC9444377AF3BAE4C2C103F2C06F7EC0D21D';
wwv_flow_imp.g_varchar2_table(87) := 'C3E1706DD6840201B7082000DC224BBB106881806E74D40C784ED222C7878664DDCDAF94E4FA8D2DF4E8FCD19983FBE5E0DD3F906CDA3A43DF5C6BBADF627D3229B160FD9CFF56BDDBCD865CFFA13F94018F1E039C7D6CA73C52E7182079009CC724359B';
wwv_flow_imp.g_varchar2_table(88) := '238000688E1B4F41C075027A3992264272724152281295E53B76C8A26D974B7068A896CAA8BDA52AA5991939FBF45372F4E9A7A554C8DB36AFC994560CC4652412B6AD6B5541EDD7E39F5665FB7B7F5D16BCE5D6A6DBEFE683E7BF79A73CFD97D68980C6';
wwv_flow_imp.g_varchar2_table(89) := '5EBA74AA9B63A4EFFE268000E86FFF629DC709E84D78E7F3F62FDB393363C9A42CDEB459462FDB2491058BC46773DB9E1D9E6AB924C5E919B9B0EB3939B37F9FA4A726ED1EF9C9BFB7E3CA641541C73319CB3ED7BEEA35B2EA8E0F88AF0591E1D8A07656';
wwv_flow_imp.g_varchar2_table(90) := 'CCE564E2739F91891FDD63D9AAD3FB12DA392CDA328B0002C02C7F63ADC708E84EF8C3361BE1AC4C1A5BB75E16AC5A25C9D56B243838D44006C1AA142E9C97D4912372E1D041397FE4A8E54E75ABBE75DD7FFD60B2E5EB6C674BA5DA6D80566568C952B9';
wwv_flow_imp.g_varchar2_table(91) := 'E2437F28A1E52B3CE5D9D2F163F2789DCB8074E9644D22E13863A2A78C67B03D430001D033AE306B207347F4E6CEEA7BD17ADF4B9BDADA3DD97E290B65756C76562EE4ADAF0CB6E3A73303838B174B7CC142890E0D4B582FE3191A160904247FE1BC1466';
wwv_flow_imp.g_varchar2_table(92) := '6624377941D2E7CED76EA8CBCCCCD83569F9EFBA76BD341E6B4B7E05CD00A97B21F49648AB72DDEFFD6749BCECE54D8FB71B0FDAADFF6B52AAD589010975E984473798D067E70920003ACFDCB81E7537FB74A1209952B9B6B35D13DEE8E636FDEF9C10F0';
wwv_flow_imp.g_varchar2_table(93) := '2A147DF96B3641FDA2D6A442D1805FC2FE80448381A676BD5B71504E2733D9DA7280726BA5044221090643E20F05C5EF0B48A9909352A924E53AC7ED9CF4A7BF5AC7E331D1237FFAF7769439BBEBED0358F79AD7C9AA0F5AA7D46DC738DADDC6F12F7D5E';
wwv_flow_imp.g_varchar2_table(94) := 'F67EEB9F2D9B5D148DC878BC37123DB5DB76DAEB1D020880DEF1455F8D447FB9E95DEEA962A996BAB758D1977D6B2F2E2F009ACB32A8896FF4D89B5E23AC095DDAF542D44B834E65722DA7406E374B1541CB06E20DA5F9753A068D239D05B02AC9B1C572';
wwv_flow_imp.g_varchar2_table(95) := 'F51F7F42FC3D961ED96ABCE55327E5E93FFC904CD5C99CB83699682869925396D483C0C5041000C4435B09E82F7B7D499DC9E61C9D636F6BE73DDA98DE33B030A2D70A3BBB01CFCE8C6CA95CDB18A7EBE3BD50F4821F7DF9EBB4B51B45F322EC9E9CAE2B';
wwv_flow_imp.g_varchar2_table(96) := '20B7BEF33659FC6FDEED46F76D6FF3F457FF4A76FDEFBFB36C574F4F6C19196AEB0C52DB8DA0C1BE208000E80B37F6861117F27939CD8BDFD219FAA25C1C8FB5ED57B20A2DE55D6F7DDCCDC8D08D7E7A73A226AC71BBD85D0A141918901BBFFC15F1F7F8';
wwv_flow_imp.g_varchar2_table(97) := 'ED7995E929B9FF3DBF2AE582F57E0E4D97AC9726B56711C56DCFD0BE97092000BCECBD1E19BBFE42D35FFCF5D6697B64A85D1F862E050C0483B5F3F1EDDAE0A5A972957FA76604F405A5D726EB2D8A9D7A49A9D8D13B12EA95CDFFEA6DB2F4DFBDA7EB3E';
wwv_flow_imp.g_varchar2_table(98) := 'AE3780635FFC9CECFBF6B7EA8EB1D11B137BDA6006D7D30410003DED9EDE1F5CBE5C9623B399DA3A3FC539019D0D589918A86D1C6C47D1A5175D1AD059986CB9DCD659019D928E04FCA2BFF88723E19A80E9C60D8A9A1E3953E73480DFE7971B3FFEA712';
wwv_flow_imp.g_varchar2_table(99) := 'D9D49BA9818B1387E4C1DFFA3FA552B6FEAC28E38D439D4DEBDC8EF8A30D6F12400078D36F3D31EAC97C418E65322DEF4AEF0963BA30087D896E1A1A6CDB4CC09C092ACAF4C4856E9ED35981174F5CE8F5BACE3661EA0BDFEF1309FAFCB514BE7A29CD40';
wwv_flow_imp.g_varchar2_table(100) := '28583BEDD0CDA2B30047D299BA768CAC5D2F57FCA73F90C0D8E26E0EF5E7FA2E9F3B2BCF7CF8433279F8B0E5B894FBCA44BC234B2A3D0587C1748D0002A06BE8BDDDB11E47D363694E72D5FF9CA53EFDAA7BA9E871B1361D19EB38513D8E77F151C6268E';
wwv_flow_imp.g_varchar2_table(101) := 'E7A908D01DDF6E6DA0D3577EBA58ACCD0EE8C98C7CA52265FD531529552B3564FAA20FF85F3CB5A0CB12FA475FFC3AD5DFA9297E27BE535B342990DD6CD3F8B5D7CBA6DFFA6DF10DF4C6453AD5D9B4ECFDC41FCB89271EAF6BA6FEFADF3034D853CC9DF8';
wwv_flow_imp.g_varchar2_table(102) := '853ADE258000F0AEEFBA36F2462EAA991BA43F189281050B64706C4CA2C323128A4625A49BC72E16035DB3A8B98E6BEFFB6A590AB9BC14B359C9CCCED612E8CC9E3E29E56CD671A3FACB5AD77DA36D5A0EA8D7F1A573009A88692EA1913ED74B2FFCF9EC';
wwv_flow_imp.g_varchar2_table(103) := '48174B32914EDBCE3AD57203BCFF83B544475D2DE5B21CFAB34FCAE1FBEEAD3B0C95C4AB93036DDB20DA559BE9DC330410009E71556F0C5413F9E88E6C2757D5EA88E38343B274E54A195ABE5C8291A8F802DD9D46769D62A52AC56251CE9F382EA72726';
wwv_flow_imp.g_varchar2_table(104) := '24373D559B25B02B117F402E1B66EDD78E9393C440B5367C3E59FD0BAF94D5EFFD35F16B1AE42E944A7A56263EFF6979E181FB6D7B5FF4D2C53FBD2EC06C0DA182A70820003CE5AEEE0E5633D0E9E53493758E30CD8D301489C8B2751B6474F56A094523';
wwv_flow_imp.g_varchar2_table(105) := 'DD1D78977A2FE50B72E1F42939B6EBB9DA0C815DD1BBDF3B71A4CE6E1CBDFEEFBA9471383D6BBB14A0762CD976B96CB8E3031DBF2BA07CF284ECFED49FC8D93DBB6D7192F6D71611155C22800070096C3F36ABC7FCF47A56BB1289C664FDB5D74A62D122';
wwv_flow_imp.g_varchar2_table(106) := 'BBAA46FCFB6C2A2DFB7FFCA0E4D3D6D9EC1484CE026C1C6AFD021D13A06AEE83FD3329DBA5006531BC7CA56CFE8D0F486CCBB68EA0C9ED7D5E9EFBB34FCACC89E3B6FDE9B1D0F5C9646DCF0505029D268000E834718FF6A79BFD764F4DDB7EE1261309D9';
wwv_flow_imp.g_varchar2_table(107) := '70E34D124A263C6AA93BC32EE472B2EFFEFB653655FF921DCDA5AFD3C1147B027A0AE5C86CFDDC003F69456FD77BE5AB65E5AFFCAA045C4A19AC3BFD8FFCCD5FC9C43D773B5AF6D1B1AD1C189011AF5D656CEF1A6A78840002C0238EEAF6304F64327236';
wwv_flow_imp.g_varchar2_table(108) := '57FF5EFA48342A5B5F7693848687BB3DDC9EEC3FAB33010F3F24D994F5F5B63A0BB07630D1F523773D09709E41E9499433B99CE3E1EA86C7F5AF7F832C79E39B25B466ADE3E7EA552C1E3A2827BEFD4F32F1831F48E5A593154E1A56A1A7828F02816E11';
wwv_flow_imp.g_varchar2_table(109) := '4000748BBC87FAD535D7E7A767EAFEFA0F0582B2F9EAAB25B67CB9872CEBFC50A7CF9D93E7EFFB51DD8EC75EDA10D6F9D179AF479D993AEE705FCAC5D6C5864764E1E62DB2F0AAAB25BE7A8D84972E159FC3CD82959994144F1C95ECE10939FFD4937266';
wwv_flow_imp.g_varchar2_table(110) := 'D72EC9EA66CF068ADE98A8F7277423A15203C3A46A9F134000F4B983DB619E93B5FF0D9BB7C8E8E6CDEDE8AEEFDB38F8F0C372AECEFAB0AE0BEB5DF07A2CF0E2237A5E03A33BDAF54FBB6E42B4B2BFD554D4914452166CD820436BD7497CC50A892E5B21';
wwv_flow_imp.g_varchar2_table(111) := '7E3DA21AF04BB5EA93AA26539ABA20850B172477EA944C4F1C92F37BF74A2E35DD944B164622B53B2134EF020502DD248000E8267D8FF4AD39D8350B9B55492693B2E9E65749201CF28845DD1D66299B9567BEFF3D29D6496BABE7C2F5D7A1D77F21EA3B';
wwv_flow_imp.g_varchar2_table(112) := '4E0F7E06FCFEDAB246ED4FE0C5FFAAC069A738D08B914E39386DE1D4FB7E7FA0769CB05EEA5EA76DCDD55B128BC9E2187B3C1AE5467D77082000DCE1DA37AD6A06391500F94AD9D2A6CBAEB9468656AEEA1B9BDD3644D3021C7A74A79C3B76D4EDAE7AB6';
wwv_flow_imp.g_varchar2_table(113) := '7DCD36180F066AC71EDB79A9D074A1583BAA3A97E5B0570068B6C5E50371D1ABA12910E8150208805EF1448F8E432F9739369BB5CCBF1E0A86E4CA5F7C93F838C6E4C883D56C4ED2278ECB0BBB77C96CB1E8E8997EAFA43301FACBB85D2F4715ADBA6C35';
wwv_flow_imp.g_varchar2_table(114) := '55283ABEFFC02DC63A93331209C9C24894A37E6E41A6DDA60920009A4667C683BAC1EA5CDE7AF7FFD8B2E5B2E6FAEBCD80D18295D57245B2278ECBA903FBE4EC64631BC65AE8D6538F6A2EFCB158B4960EB7D5A5014D5AA51721E9B2805E8CE4F422A476';
wwv_flow_imp.g_varchar2_table(115) := '019BBBF6593774EA4C47ABF6B46B5CB403818B0920008887BA040EA5D2B55BE5E62B3E9F5FD66DDF2E0BD6B6E73855BFBAA2329B9153BB77C9E9E3C71CA750EE57167676CDFD62D617673BAE4AD6D4C1D385829C55215067CF85DDB81AF977BDEA79512C';
wwv_flow_imp.g_varchar2_table(116) := 'DAD6A58D46FAA72E049C124000382565683DCDB66675FB5A3014922D2FBB49620B16184AC7DEECD2F9F37268E74E99CC66EC2B53E32704341FC2BAC1445BAF4AD68DACE773799975614640854B32149485D148ED16450A04BC400001E0052F75718CFBA6';
wwv_flow_imp.g_varchar2_table(117) := '67246BF1CBA996F8E7E657496820DEC511F66ED7C553A764DFE38F49BACE124AEF8EBEFB23D393022B130332100CB675309AD742970774662B552CD5AE496EA6E846467DE9EB0B3F110A71ACAF19883CD355020880AEE2EFEDCE75FA747F1D01108BC565';
wwv_flow_imp.g_varchar2_table(118) := 'EB2DAFE1F8DF3C6E2C9C3A25FB9F7C42D24D1C4BD35F937E9F48682021A1784C74A9C58BA55AA94AA95090FCCC54ED42C466D6E1755F8026CC69B708509EBA4F407308E8BD028572A52604F47FD3E442FABFEBDFB5E869FDA0DFFF93639941BFAFB63CA1';
wwv_flow_imp.g_varchar2_table(119) := '9B17F52C3FEBFB5E8C4EC65C8BEDD3B7BDCDFEAE5258194940BF000FCCA42C6700120309D9F29AD7F6FF15BF0D7ABF343929FB763E2229A779EAF59C7C382A434BC66468E9B8C4474624188E4A281611F1F9C51F8B897F60A0C15174B97AA120A59969D1';
wwv_flow_imp.g_varchar2_table(120) := 'CD8F856C56F2E994E467D3329B9E95E92347A598493BCE97AF33016B9389B6EC096884CADC1723E97A1AA1465D2F11400078C95B1D1EAB0A00DD03A0BF90E62B894442B6DC8200B8984DA95492BDF7DE23E999FA97FECC3D9388C564F9D5D74872DD7A09';
wwv_flow_imp.g_varchar2_table(121) := '2D58D8610F77A7BB7266562E3CBF474E3CF1B8CC3AE4A42260C3D020D3ECDD7119BDF6290104409F3AB61D66E954A8CE0020009CD1AC2D99FCF8C73279F284ED03E1685456DEF03259B0759B042211DBFAFD584133EC4DEED923871E7C408AB3F5AF4A56';
wwv_flow_imp.g_varchar2_table(122) := 'FBB929B11FA3009BBA490001D04DFA3DDE3702A03107A54E9F96DD0F3E60FBD0E09225B2E98D6F92D0C8A86D5D132A688EFD7DDFFD8ECC9C3A59D75C9D0558934CD4D6DE29108040EB041000AD33ECDB161000CE5D5BCEE7E5C08F1F92A90B17EA3EB474';
wwv_flow_imp.g_varchar2_table(123) := 'E50A59FD965F125F847CF017832A4E4FCAA1BBEF96F38727EAF2D38B74745320050210689D0002A075867DDB0202C0B96B2F1C3C28FB9F7EAAEE03234B96C8C6B7BD43027AD31CE5E7089432B3B2FFAEBB64F2056B11A039F5370E25DB9A1F005740C054';
wwv_flow_imp.g_varchar2_table(124) := '020800533DEFC06E048003482252CDE565CF03F749AACE86B6F0C0805CF1F677487894A449F5A89666D3F2C457FEA794EAE44E1809876BF901281080406B041000ADF1EBEBA71100CEDC3B79E4881C78FC71A954AD13CA6C7EC32FCAC896ADCE1A34BA56';
wwv_flow_imp.g_varchar2_table(125) := '554E3F78BF1C7CE491BA141645A3321C0ED5CEEB7BB9E8BE064D28A4B904386EE8654F7A73EC08006FFAAD23A3460038C3BCF7810764EACC69CBCA23E3CBE4B25F7E9BF8424CFD3B21AA4B01BBFFBFFFD7368992BE3CF5B559A8549A4A32E4642C6ED4D1';
wwv_flow_imp.g_varchar2_table(126) := '97BD8E5DB58BCF27A2699E6A02A096544844D320274241890783B5E4431408B8450001E016D93E68170160EFC472A1284F7EEFBB522E16E6ADAC2FA82BDEF94E19185F6EDF18355E2450A9C8896F7E4D0E4F1C369A885E2A34140ECB82680421607424B8';
wwv_flow_imp.g_varchar2_table(127) := '673C02C03DB69E6F190160EFC2ECF163F2ECCE9D52B5988A4E0E0EC9D6FFF05ED1DFAA142704AA323D3121871FBC5F66CF9C71F240DFD7D15900DDF7A0170DB5E386C4BE0786818E0920001CA332AF2202C0DEE7D3BB77CBF37B9FB74C6BBB6AEB1659F6';
wwv_flow_imp.g_varchar2_table(128) := 'FA37D937440DC99D3923471EB84F2EBC70F82779F8C1F25302BA5740AF491E8D84B97F80C0680B0104405B30F6672308001BBF5645CE3CFAB04C1C3B3EFFF4BFDF2F9B6F7EA50C5F79757F06489BAC2AA7A6E5F4CE47E4E89EBD522EE4DAD46AFF36A317';
wwv_flow_imp.g_varchar2_table(129) := '23E92908DD474081402B041000ADD0EBF3671100F602E0C87DF7CAC9F3E7E7ADE80F47E48A5B6F95F88A557D1E29CD9A5795DCC103B2F7DE7B65767AAAD9468C7C4EF321686AE491081B4B8D0C8036198D006813C87E6C060150DFABE54A450EFDF06EB9';
wwv_flow_imp.g_varchar2_table(130) := '6071FE3F108FCB95EFBA4DC243C3FD181E2DDB943B74409EFFF6B724532CB6DC96890DE806535D0E584E664413DDDF169B11006DC1D89F8D2000EAFBB5582ACBDEEFDD25B316496B224343B2FDB65F916034D69F01D282558593C7E5F93BBF2EE95CF353';
wwv_flow_imp.g_varchar2_table(131) := 'FEFA02F4E9B9398F96DABED197368F56A5F97C064B6331198B915ADAA361D0D5612300BA8ABFB73B4700D4F74FA1589667EFFA96E815C0F395E88285B2FDB6774B2018EA6D47777874A533A765F7D7FF51D2998CE39EF502A0459B2E9305575F2BB175EB';
wwv_flow_imp.g_varchar2_table(132) := '2430BA408223237A825EA44E0226C71D74A362B52AD552492AB369294D4E4A76E2A09CDDF9B09C7B7EAFE42BF35FC16D35CC9503032C0774C3871EEF1301E07107BA397C04407DBAF962519EBDEB3B52B612000B17BD2800024137DDE4A9B64B33D372E0';
wwv_flow_imp.g_varchar2_table(133) := 'EFFF97E5B2C9A5C62C58BE42C6AFBF41866F79AD048647C41F8F8BF4EBE6B74A452A9959299FBF2053F7DD2B471FBA5FA68ECFBFC1F4524EBA2170C5C0402D811005024E0920009C9232B01E020001D0CEB0AF16F272F89B77CAC9A3476D9B0D8423B2F9';
wwv_flow_imp.g_varchar2_table(134) := 'ADB7CAE86BDF20C1A54B6DEBF76385D2A99372FE8777CBDE3BFFB1EEDD0873B66BE2A0B583499206F56330B8641302C025B0FDD02C020001D0CE389E79E629D97DF70F6CCFF827C616CBF6DFFE3D896CBAAC9DDD7BB6ADFC9E3DF2E4C73F2299F3E76C6D';
wwv_flow_imp.g_varchar2_table(135) := 'E0BA645B4454B88800028070B02480004000B4EBE3514DCDC89E7FFC7B999A9CACDBE4C26D97CBD6DFFB03090C0EB6ABEBBE68A77CE1823CF7898FCAF95DCFD9DAB37E30299A2B8002013B0208003B4206FF3B020001D0AEF04F3D709F3CBBB3FE0D7F83';
wwv_flow_imp.g_varchar2_table(136) := '6BD6C9F6DFFD7D098D2F6B57B77DD54EE9F83179EAE31F9599894375EDD2A381BA1F8002013B0208003B4206FF3B020001D08EF0AFCC4CC981AF7F4DCE5DB860D95C289194AB7FF7F725BEFDCA7674D9B76D649E795A1EFBC887A554E704856E085C934C';
wwv_flow_imp.g_varchar2_table(137) := '889E9CA040A01E010400F161490001800068C7C763E689C7E4B97BEFA9DBD415B7BF5F16BEF1CDEDE8AEEFDB38FB9D7F9667FFE2F375ED5C168FD72E0FA2400001400C344500018000682A702E79E8C0DFFDB59C3979CAB2A9E4F832B9F60B5F16F17937';
wwv_flow_imp.g_varchar2_table(138) := 'A94F3B38396DA35A2ECB23B7BF5732A74E5A3E32180AD566012810400010034D11400020009A0A9C8B1EAA4C4FC9B37FFB37329BCD5A3675DD7FFDEF92B8FA9A56BB32EAF999471E96C73FF261CB6BA8F50AE1CDC3431C09342A2A1A37962580C69919F3';
wwv_flow_imp.g_varchar2_table(139) := '04020001D06AB0679EDF2DBBBFFF3D2958244B1A185F26D77FEE4B22016EB66B8875B52A8FFEC6ED923AFAC2BC8F699AE4B5C90489811A826A5E650480793E776C31020001E03858E6AD5895733FBA570E3CF1B8E5D9FF35BFF86659F3EBEF6FAD1B439F';
wwv_flow_imp.g_varchar2_table(140) := '9EF8FC6764E2BB77590A00BD2D907D0086068743B311000E4199580D0180006829EE2B1579E19FBE21C70F1D9CB79940242257BCEF761979EDEB5BEAC6D487CF7FFB9FE4E92F7EC1D2FC45D1882C8DC7859D15A64688BDDD08007B46C6D6400020005A0A';
wwv_flow_imp.g_varchar2_table(141) := 'FE7249F6FDFDFF9673274FCCDB4C787454AEFACDDF91F8F6ED2D7563EAC3E9471F91A7FEFCCFA430353D2F02DD08B82A31207E36579A1A22B67623006C11995B010180006829FA4B4579F6AFBE22A9A9A9799B195EB65CAEF8F01F4970D1584BDD98FA70';
wwv_flow_imp.g_varchar2_table(142) := 'F6D9A7E5E9CFFDB9644ECC7F6150ECA5BB018208005343C4D66E04802D22732B20001000AD44BF5EFEF3F8FFF8921472B9799B59B87A8D6CFBE34FBE78C31FA56102C5D3A7E4C9FFE7C3927E6162DE67833EBF6C1C4A4AA85F6F4F6C98180F5C4A000140';
wwv_flow_imp.g_varchar2_table(143) := '4C5812400020005AF97854725979ECCB5F9452B138BF00D8B0512EFFE8C7C51726614D339CABF9BC3CF19F7E47A6F7EF9BF7719DFADF3898940819019BC16BC433080023DCDC9C91080004407391F3E253955C461EFDD217A56C7104706CD366D9FA471F';
wwv_flow_imp.g_varchar2_table(144) := '45003409B95A2CCA53FFE5F76572F7AE795BD0A3803A03404AE026011BF01802C00027376B22020001D06CEC20005A21E7EC590480334ED4B2268000203A5802683206F2C5A23C7BD7772C7FE146172E92EDB7BD5B020133AF666506A0C9C072F81802C0';
wwv_flow_imp.g_varchar2_table(145) := '2128AA59124000101C088026630001501F1C02A0C9C072F81802C02128AA21008881C609B004C01240E351F3D3271000ADD0B37F160160CF881AF509300340843003D0640C3003C00C4093A1D396C710006DC16874230800A3DD5FDF786600980168E5E3';
wwv_flow_imp.g_varchar2_table(146) := 'C10C402BF4EC9F4500D833A2063300C4409304100008802643A7F61802A0157AF6CF2200EC19510301400C3449000180006832741000AD8073F82C02C02128AA5912600980E0B02480004000B4F2F16006A0157AF6CF2200EC195183190062A049020800';
wwv_flow_imp.g_varchar2_table(147) := '044093A1C30C402BE01C3E8B0070088A6ACC0010038D13400020001A8F9A9F3EC10C402BF4EC9F4500D833A2063300C4409304EC04C0C04042B6DCF21AF107034DF6E0EDC7380658DF7F080077E31B01E02E5F135A670F80095E6ED2463B0110894665DB';
wwv_flow_imp.g_varchar2_table(148) := '2DAF956024DC640FDE7E0C018000E866042300BA49BF3FFA4600F4871F5DB1A252ADCAFE9994E4CAE5F9DBF7F964FDB5D7497470487C4DCC02448221098443AE8CBD138D220010009D8833AB3E1000DDA4DF1F7D2300FAC38FAE59B17F7A46325602407B';
wwv_flow_imp.g_varchar2_table(149) := 'F5F9C41F0C8ACFEFAFFDDD49A956AA22A5928C2E5B266BB7EF109F474500020001E024DEDDAA8300708BAC39ED2200CCF17553961E4AA525552C36F5ACDD43FE5058AE7AE5AB24904CD855EDC97F47002000BA199808806ED2EF8FBE1100FDE147D7AC38';
wwv_flow_imp.g_varchar2_table(150) := '99C9CA995CCE95F6FDFEC08B026078C895F6DD6E14018000703BC6EAB58F00E826FDFEE81B01D01F7E74CD8AD952490EA766A554ADB4BD8F40202057DE8C00683BD81E69905300EE3A0201E02E5F135A470098E0E5166D3C91C9C8D95CBEC5567EFE7104';
wwv_flow_imp.g_varchar2_table(151) := '40DB91F65483080077DD81007097AF09AD23004CF0728B365645E4D04C4AD2A5528B2DFDECE30880B6E2ECB9C61000EEBA0401E02E5F135A470098E0E536D8A847024F64B232592888FEBD1D0501D00E8ABDDB0602C05DDF2000DCE56B42EB080013BCDC';
wwv_flow_imp.g_varchar2_table(152) := '461BF544802E07142B152955AAA2C9822E3DFDA7FAA02AF6220101D046C7F460530800779D82007097AF09AD23004CF0B24B36EA2BBE3ACF6C80EF254570219FAFCD1A58CD1820005C724C8F348B0070D711080077F99AD03A02C0042F77C9469D259848';
wwv_flow_imp.g_varchar2_table(153) := 'A5256B91480801D025C774A85B0480BBA01100EEF235A1750480095EEE928DFACB5F1309E951C2F90A02A04B8EE950B7080077412300DCE56B42EB080013BCDC251B11008B64FB6DEF964020D8250F74B75B0480BBFC1100EEF235A1750480095EEE928D';
wwv_flow_imp.g_varchar2_table(154) := '080004C0A35FFAA2942D6680C6366D96AD7FF451F185235D8A506F778B00F0B6FF7A61F408805EF0429F8E0101B04876DCF66EF13303306F8423005AFBE023005AE3C7D3220800A2C03502C60B80C1A4EC78F7AF8A3F1A738D712F37CC1280BBDE4100B8';
wwv_flow_imp.g_varchar2_table(155) := 'CBD784D611002678B94B369A2E00F4B2A34DB7DC22C9F171A9562A52293BBB4F414F51FA0301090C0E797A7A1C01E0EE070F01E02E5F135A470098E0E52ED968BA0050EC3E9F5FC27E7F431EF0FB444281802C5CBF5116BFFA55E20B79738D1C01D090DB';
wwv_flow_imp.g_varchar2_table(156) := '1BAE8C006818190F5C4200014048B8460001D01ADA81685436BFF35D121E5DD85A435D7A1A01E02E780480BB7C4D681D01608297BB642302A035F0E15058B6BDF39D125DB4B8B586BAF43402C05DF0080077F99AD03A02C0042F77C94604406BE083A190';
wwv_flow_imp.g_varchar2_table(157) := '5CF18E7749740C01D01AC9FE7C1A01D09F7EEDA45508804ED236AC2F04406B0E4700B4C6AFDF9F4600F4BB87DDB70F01E03E63637B4000B4E67A04406BFCFAFD690440BF7BD87DFB1000EE3336B60704406BAE4700B4C6AFDF9F4600F4BB87DDB70F01E0';
wwv_flow_imp.g_varchar2_table(158) := '3E63637B400088F8C42741BF4F2EBD3559CFFA972A55D1FFB32A0800633F3A8E0C470038C244A53A04100084876B04100022AB130949868252BA4401047D3E49154B72389D4600701740539F41044053D878E822020800C2C13502A60B00BFCF275B8687';
wwv_flow_imp.g_varchar2_table(159) := '24A03FF7E729E56A55764F4D8B729AAF3003E05A68F645C30880BE7063578D400074157F7F778E00F0C986C1A4440381791D9D2B9765DF74CA72190001D0DF9F8F56AD4300B44A90E71100C4806B0410000800AE0376EDE3250800F7D89AD23202C0144F';
wwv_flow_imp.g_varchar2_table(160) := '77C14E0400020001E0DE070F01E01E5B535A460098E2E92ED889004000D413008B366E926D1FF998A76F3CECC2C7EA275D56B21979FABFFD1799DCB37BDE61E809948D43D64B50DD1C3B7DF7060104406FF8A12F4781004000D41300A3AB56CB151FFBA4';
wwv_flow_imp.g_varchar2_table(161) := 'F8E3037D19FF6E1B553A715C9EFAC4C764E6E07E0480DBB0FBB47D04409F3AB617CC42002000EA0980C8405C2EBFE30392B8FA3AF1357865B2C6B74F37578642BD10EA4D8FA19ACB8ACFF7F37922EA3658AD4A359F93D4938FCB337FF96529CECCCC5B5D';
wwv_flow_imp.g_varchar2_table(162) := '4FA16C1A1A6CF83AEAA68DE141CF11400078CE65DE1930020001504F006824072311892D5824120888BEB09C9472B128522AC8D2ABAF95E5EFBB5D7CC1A093C77AAF4EA52247FEF4637276E2B054AB55F1F9E73F2D72E9C0ABD58A540A45C99E3F27E552';
wwv_flow_imp.g_varchar2_table(163) := 'D1D2AEA0CF5F5B02083521AE7A0F162372830002C00DAAB4592380004000D80980563E2AC30B17CAF64F7E5A02A3A3AD34D3B5672BA9943C79C7FB647A7ACA953124824159934C381656AE0C82467B9A0002A0A7DDE3EDC1210010006E0A80783C21D7FC';
wwv_flow_imp.g_varchar2_table(164) := 'E9A72438BECC931F94CAD933F2E8076E97D94CC695F12F1F88CB8248C495B669B43F082000FAC38F3D6905020001E0A600480C24E4AA3FF1B60078FC8377486A76B6ED9F5F9DF6D7F57FAB2C946DEF90063D490001E049B77963D00800040002C0FAB3AA';
wwv_flow_imp.g_varchar2_table(165) := '33006E098015037119E5D7BF37BE28BB384A044017E1F77BD70800040002A0F302602C1A9525F19838DB52D9EFDF42D8578FC305C3D30000110749444154000280F8708D000200018000E89C00D053144B625159148DBAF699A6E1FE228000E82F7FF694';
wwv_flow_imp.g_varchar2_table(166) := '35080004809D00D06C7521BFFEFF9FFDBD5A91AAE86D895637256AA09BB007405FEA219FFF673ED77A5A52D7F8FD3E11BFF824E8F749D81FA85D3B1DB1B878AAA7BE18184CCF104000F48C2BFA6F20080004403D01A01BD496C46232147E3199CFDCCB5E';
wwv_flow_imp.g_varchar2_table(167) := '5F7AFAF74CA92C47673396B7259A2000D62613B5DB24E713429A4028E8F371CCAFFFBE3A3B661102A063A8CDEB08018000A82700E28180AC4E262C13D594AA55D93F3D23854A65DE0F4FBF0B009D15B96274D8BC2F0E2CEE18010440C7509BD711020001';
wwv_flow_imp.g_varchar2_table(168) := '5057000483A2BF70AD8EAAE912C0819994E4CA65230580CE846C1B1966339F795F9D1DB31801D031D4E67584004000D41300032F0900AB14C008009F6C1D1E628ADFBCAFCE8E598C00E8186AF33A420020001000D69F7BBB3C002A8C1000E67D6F76D262';
wwv_flow_imp.g_varchar2_table(169) := '044027691BD6170200018000400018F6B5E7297311009E7297B7068B00400020001000DEFAD6326BB40800B3FCDD516B11000800040002A0A35F3A74D61001044043B8A8DC08010400020001800068E43B83BA9D258000E82C6FA37A4300200010000800';
wwv_flow_imp.g_varchar2_table(170) := 'A3BEF43C662C02C0630EF3D27011000800040002C04BDF59A68D1501609AC73B682F0200018000400074F02B87AE1A248000681018D59D134000200010000800E7DF18D4EC34010440A7891BD41F0200018000400018F495E7395311009E739977068C00';
wwv_flow_imp.g_varchar2_table(171) := '400020001000DEF9C6326FA40800F37CDE318B11000800040002A0635F3874D430010440C3C878C029010400020001800070FA7D41BDCE134000749EB9313D2200100008000480315F781E341401E041A77965C808000400020001E095EF2B13C7890030';
wwv_flow_imp.g_varchar2_table(172) := 'D1EB1DB219018000400020003AF47543374D10400034018D479C11400020001000080067DF16D4EA0601044037A81BD2270200018000400018F275E7493311009E749B37068D00400020001000DEF8B6327394080033FDDE11AB11000800040002A0235F';
wwv_flow_imp.g_varchar2_table(173) := '3674D21401044053D878C809010400020001800070F25D419DEE1040007487BB11BD2200100008000480115F761E351201E051C77961D808000400020001E085EF2A53C7880030D5F31DB01B018000400020003AF05543174D12400034098EC7EC092000';
wwv_flow_imp.g_varchar2_table(174) := '100008000480FD370535BA450001D02DF206F48B00400020001000067CD579D6440480675DD7FB03B71300FE4050AE7EF5ABC59F4CF6BE31F38CB058AEC8D3FFFC4D29572AF38EDFEF4300200010009EFC701B32680480218EEE8699551139389392D952';
wwv_flow_imp.g_varchar2_table(175) := '69DEEE7D81806C7FCD6B25181F906A556B7BA3F844445FEE6AD7AE7FFEA6E5A0B5CEA6A14109FBFDF3D6C995CBB26F3A255599DFF660282457BCE35D121D5BEC0D30978CB292CB08020001E0C9E03564D00800431CDD2D335500A42D04808EC9EFF74B28';
wwv_flow_imp.g_varchar2_table(176) := '1412F1CDFF92ECD6B8EDFAAD562A522A16A5529DFFD7BF3E1FF2FB65C360B2F6DFF90A0220286B93899A989AAF94AB5539309312E5345F490C24E4AA3FF99404C797D9B9AB27FFBD72F68C3CFEC13B24353B6B3983B47578C8924F4F1AC5A03C450001E0';
wwv_flow_imp.g_varchar2_table(177) := '2977796FB087D369992E14BD37F0368C38190AC9EAC480E51738020001800068C3078D269A268000681A1D0F3A21703E9F9763B3192755FBAECE8A81B88C46229676210010000880BEFBD87BCA200480A7DCE5BDC1162B15D93F9312FDAF4945A7FD75FD';
wwv_flow_imp.g_varchar2_table(178) := '3F6031BDAD2C10000800048049DF0ABD672B02A0F77CD277239ACC17E488C53A67DF19FB924176BFFE1100220341040002A05FBF01BC611702C01B7EF2FC285F48CFCA54A1E0793B9C1830168DCA92784CE6DFDAF6D3169801400020009C7CA2A8E31601';
wwv_flow_imp.g_varchar2_table(179) := '04805B6469F76708E841B7D3D9AC9CCDE545F303F463D1DDEC4B625159148D3A320F018000400038FAA850C92502080097C0D2ECFC04F4A5972A16A550AE881EF3D23FA58AFEDD3BC474595FD7F8FD3E11BFF824E8F749D81F906428289140C0B1210800';
wwv_flow_imp.g_varchar2_table(180) := '040002C0F1C7858A2E104000B80095269D11D08D81FADEF75212A08B2DF3F97C12F4F99A3EA78D00400020009C7D5750CB1D02080077B8D22A046C09200010000800DB8F09155C24800070112E4D43A01E010400020001C0774437092000BA499FBE8D26';
wwv_flow_imp.g_varchar2_table(181) := '8000400020008CFE0AE8BAF10880AEBB8001984A00018000400098FAE9EF0DBB1100BDE10746612001040002000160E007BF874C4600F49033188A5904F2E5B2ECB5B90EF8CA7FF7EF25941CF426984A451EF9EC67A45C9AFF32A8783028EBB80D90DB00';
wwv_flow_imp.g_varchar2_table(182) := 'BD19DD7D316A04405FB81123BC48A050A9C8DEE919CBC4487ACC70DB9BDE2CC9F51B44FC01A9D60E4D7AA3F834BFC399D3F2E8DFFDADE8D5C9F3150400D7017B239AFB77940880FEF52D96F538012717258587862434342281A0BFC7ADF9D9E1954B1529';
wwv_flow_imp.g_varchar2_table(183) := 'A666A43079C172DC099D01184C5AFEBB26893A3093AA5D9A345F490C24E4AA3FF99404C797798ACDDC602B6711009E745C1F0D1A01D047CEC4146F11D094C813A9B4A44B256F0DBC4DA31D0E87655562000160715196A696DE3A3CD474A2A936B98966FA';
wwv_flow_imp.g_varchar2_table(184) := '980002A08F9D8B69BD4FE04C362727B3D9DE1FA80B235C1A8BC958CCFADE04660010002E841D4D5E440001403840A08B04741960DF744A4AD5F9D7C9BB383457BB0EFAFCB2712859BB53C1AA20001000AE06218D0B0280208040970998360BE0139FAC4C';
wwv_flow_imp.g_varchar2_table(185) := 'C4459700EA15040002A0CB1FCDBEEF1E01D0F72EC6402F1038369B91F3F9BC1786DAD218F5E5BF301A96F178DCB61D040002C03648A8D0120104404BF8781802ED2330992FC8894CB66F9703023E9F2C1FB0FFE53F471401800068DFA78B96E623800020';
wwv_flow_imp.g_varchar2_table(186) := '2E20D04304744F40AA5894E94251E6AE4BD6D3029A33C04B4577B087FD7ED115FEA0DF2FB1604016442275D7FC2FB50F018000F052CC7B71AC08002F7A8D311B41405FFA8572452A1E4A0074B163FCE29390DF279140A0297F210010004D050E0F392680';
wwv_flow_imp.g_varchar2_table(187) := '00708C8A8A1080402709200010009D8C3713FB420098E8756C86800708200010001E08534F0F1101E069F7317808F42F01040002A07FA3BB372C4300F4861F18050420700901040002800F85BB041000EEF2A5750840A04902760260602021D77CE6F312';
wwv_flow_imp.g_varchar2_table(188) := '58B4A8C91EBAFB586572521EBBE3BD92E62E80EE3AC2E0DE1100063B1FD321D0CB04F4F8E3FE3AB701866371B9F1B35F90C0A2B15E36C3726CA5F3E7E5B13BDE27996C66DE3A5C06E449B77A6AD008004FB98BC142C01C027602C01F0ECB55BF7E870C6C';
wwv_flow_imp.g_varchar2_table(189) := 'BB422414F216985249D2BB9F93673EFB1929168BF38E5DB3265E3E3A2C3E6F59C6683D440001E02167315408984660DFF48C64CB656BB37D3E89C6072414B34F2DDC2BECAA5295522E2FB9D99448B56A392C4DA4B47978A85786CD38FA900002A00F9D8A';
wwv_flow_imp.g_varchar2_table(190) := '4910E817028752E95A6644134B221894758349134DC7E60E114000740834DD4000028D13D0BB11CEE6728D3FD8074F2C8A46653C1EEB034B30A1570920007AD5338C0B0210906CA92C13E974ED5E04934AC41F9035C981A6D3289BC40A5B9B278000689E';
wwv_flow_imp.g_varchar2_table(191) := '1D4F4200021D2070219F97A3B3F3EF94EF40F75DE962593C2E0BA391AEF44DA7E610400098E36B2C858067099CCC64E58C214B0163D1A82C65EADFB3B1EAA5812300BCE42DC60A018309E815C9A7B3D9FAA7023CCC271A08D47EF5EBB5C9140874820002';
wwv_flow_imp.g_varchar2_table(192) := 'A01394E9030210680B01DD0B30552848AA58AAED0BD05C017A5EDE8B458F03EAD8037E9F0C8542321C098B1EFDA340A0530410009D224D3F1080405B09E8097A4D17ECE512F07955BE78993A639F2380002016200001084000020612400018E8744C8600';
wwv_flow_imp.g_varchar2_table(193) := '0420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E874';
wwv_flow_imp.g_varchar2_table(194) := '4C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080000420800020062000010840000206124000';
wwv_flow_imp.g_varchar2_table(195) := '18E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080000420800020062000010840000206';
wwv_flow_imp.g_varchar2_table(196) := '12400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080000420800020062000010840';
wwv_flow_imp.g_varchar2_table(197) := '00020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080000420800020062000';
wwv_flow_imp.g_varchar2_table(198) := '01084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080000420800020';
wwv_flow_imp.g_varchar2_table(199) := '06200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080000420';
wwv_flow_imp.g_varchar2_table(200) := '80002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119021080';
wwv_flow_imp.g_varchar2_table(201) := '00042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0D33119';
wwv_flow_imp.g_varchar2_table(202) := '02108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC76408400002108000028018800004200001081848000160A0';
wwv_flow_imp.g_varchar2_table(203) := 'D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC7640840000210800002801880000420000108184800';
wwv_flow_imp.g_varchar2_table(204) := '0160A0D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC7640840000210800002801880000420000108';
wwv_flow_imp.g_varchar2_table(205) := '1848000160A0D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC7640840000210800002801880000420';
wwv_flow_imp.g_varchar2_table(206) := '0001081848000160A0D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC7640840000210800002801880';
wwv_flow_imp.g_varchar2_table(207) := '0004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC7640840000210800002';
wwv_flow_imp.g_varchar2_table(208) := '8018800004200001081848000160A0D3311902108000042080002006200001084000020612400018E8744C86000420000108200088010840000210808081041000063A1D9321000108400002080062000210800004206020010480814EC7640840000210';
wwv_flow_imp.g_varchar2_table(209) := '8000028018800004200001081848E0FF072FD142772C8FF7850000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74321346521477535380)
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
 p_id=>wwv_flow_imp.id(74321337704997535370)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15646353704049
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321338059203535370)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15646353704054
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321338349324535370)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321338625875535371)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321338993178535371)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321339277340535371)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321339537840535371)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321339833538535371)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321340143661535371)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15646353704059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321340405117535371)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15646353704073
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321340798430535372)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15646353704073
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321341055189535372)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15646353704073
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321341374901535372)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15646353704073
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74321341654142535372)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15646353704073
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(74321349491898535383)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15646353704223
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(74321349521077535383)
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
,p_version_scn=>15646353704227
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(74321349654490535383)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15646353704227
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(74321349098006535382)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15646353704201
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(74321349251470535382)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15646353704206
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(74321349324862535383)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15646353704206
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
 p_id=>wwv_flow_imp.id(74321350491439535384)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_version_scn=>15646353704238
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(74321350708429535384)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15646353704239
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
 p_id=>wwv_flow_imp.id(74321624225613537071)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15646353724630
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321520743916536967)
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
,p_version_scn=>15646353723101
);
end;
/
prompt --application/shared_components/user_interface/lovs/eba_projects_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321389801865535426)
,p_lov_name=>'EBA_PROJECTS.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_PROJECTS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15646353704944
);
end;
/
prompt --application/shared_components/user_interface/lovs/eba_project_milestones_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321399690044536189)
,p_lov_name=>'EBA_PROJECT_MILESTONES.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_PROJECT_MILESTONES'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15646353714213
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321631714264537077)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(74321631714264537077)||'.'
,p_location=>'STATIC'
,p_version_scn=>15646353724748
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321632099193537077)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321649012079537092)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(74321649012079537092)||'.'
,p_location=>'STATIC'
,p_version_scn=>15646353724872
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321649340282537092)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321649745403537092)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321650128348537092)
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
 p_id=>wwv_flow_imp.id(74321661461874537102)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(74321661461874537102)||'.'
,p_location=>'STATIC'
,p_version_scn=>15646353724962
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321661747238537102)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321662121458537102)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321662586959537103)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321662967573537103)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321540442012536985)
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
,p_version_scn=>15646353723298
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321521462471536968)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(74321521462471536968)||'.'
,p_location=>'STATIC'
,p_version_scn=>15646353723118
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321521793511536968)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(74321589136778537039)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(74321589136778537039)||'.'
,p_location=>'STATIC'
,p_version_scn=>15646353724138
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321589708821537039)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(74321590142249537039)
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
 p_id=>wwv_flow_imp.id(74321351099997535384)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(74321706730388537144)
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
 p_id=>wwv_flow_imp.id(74321342555897535373)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321342708245535373)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321374070065535408)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321376871348535414)
,p_short_name=>'Projects'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321391949065535429)
,p_short_name=>'Milestones'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321422496183536208)
,p_short_name=>'Tasks'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321425386882536211)
,p_short_name=>'Calendar'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321430751171536216)
,p_short_name=>'Project Costs'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74321687510581537126)
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
 p_id=>wwv_flow_imp.id(74321343446426535374)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>3544795214802435419
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
 p_id=>wwv_flow_imp.id(74321341996779535372)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15646353704076
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321346762358535381)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353704192
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321346863971535381)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353704192
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321346903445535381)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353704195
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321347130240535381)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353704192
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321347435227535381)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353704195
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321347542544535381)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353704195
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321706929839537144)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353725357
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(74321707248626537144)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15646353725361
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
 p_id=>wwv_flow_imp.id(74321342265124535372)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15646353704078
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
,p_step_title=>'Create App Wizard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321363750497535400)
,p_plug_name=>'Create App Wizard'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Maintain Project Details'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321507698648536953)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(74321504907295536951)
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
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321365000564535401)
,p_plug_name=>'Project Budget'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(74321365414855535402)
,p_region_id=>wwv_flow_imp.id(74321365000564535401)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(74321367176476535403)
,p_chart_id=>wwv_flow_imp.id(74321365414855535402)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'EBA_PROJECTS'
,p_series_type=>'bar'
,p_items_value_column_name=>'BUDGET'
,p_items_label_column_name=>'NAME'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(74321365947335535402)
,p_chart_id=>wwv_flow_imp.id(74321365414855535402)
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
 p_id=>wwv_flow_imp.id(74321366566565535403)
,p_chart_id=>wwv_flow_imp.id(74321365414855535402)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321367736566535404)
,p_plug_name=>'Project Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(74321368127835535404)
,p_region_id=>wwv_flow_imp.id(74321367736566535404)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(74321368655437535404)
,p_chart_id=>wwv_flow_imp.id(74321368127835535404)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'EBA_PROJECT_STATUS'
,p_series_type=>'pie'
,p_items_label_column_name=>'ID'
,p_aggregate_function=>'COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321369299326535404)
,p_plug_name=>'Chart 3'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(74321369634875535405)
,p_region_id=>wwv_flow_imp.id(74321369299326535404)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(74321371336838535406)
,p_chart_id=>wwv_flow_imp.id(74321369634875535405)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Series A'' label, 30 value from dual',
'union all',
'select ''Series B'' label, 20 value from dual',
'union all',
'select ''Series C'' label, 34 value from dual',
'union all',
'select ''Series D'' label, 6  value from dual',
'union all',
'select ''Series E'' label, 10 value from dual',
'order by 1 desc'))
,p_max_row_count=>20
,p_series_type=>'line'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(74321370167306535405)
,p_chart_id=>wwv_flow_imp.id(74321369634875535405)
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
 p_id=>wwv_flow_imp.id(74321370714780535405)
,p_chart_id=>wwv_flow_imp.id(74321369634875535405)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321372082676535406)
,p_plug_name=>'Chart 4'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(74321372423901535407)
,p_region_id=>wwv_flow_imp.id(74321372082676535406)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(74321372919556535407)
,p_chart_id=>wwv_flow_imp.id(74321372423901535407)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Series A'' label, 30 value from dual',
'union all',
'select ''Series B'' label, 20 value from dual',
'union all',
'select ''Series C'' label, 34 value from dual',
'union all',
'select ''Series D'' label, 6  value from dual',
'union all',
'select ''Series E'' label, 10 value from dual',
'order by 1 desc'))
,p_max_row_count=>20
,p_series_type=>'pie'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321373582161535407)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Projects'
,p_alias=>'PROJECTS'
,p_step_title=>'Projects'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321375190805535411)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'       "STATUS_ID",',
'       ( select l1."CODE" from "EBA_PROJECT_STATUS" l1 where l1."ID" = m."STATUS_ID") "STATUS_ID_L$1",',
'       "NAME",',
'       "DESCRIPTION",',
'       "PROJECT_LEAD",',
'       "BUDGET",',
'       "COMPLETED_DATE",',
'       "CREATED",',
'       "CREATED_BY",',
'       "UPDATED",',
'       "UPDATED_BY"',
'from "EBA_PROJECTS" m'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P3_ORDER_BY", "orderBys": [{"key":"NAME","expr":"\"NAME\" asc"},{"key":"DESCRIPTION","expr":"\"DESCRIPTION\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(74321375670965535413)
,p_region_id=>wwv_flow_imp.id(74321375190805535411)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPTION'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'BUDGET'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321376453555535414)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321376139946535414)
,p_name=>'P3_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321375190805535411)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NAME'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Name;NAME,Description;DESCRIPTION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Milestones'
,p_alias=>'MILESTONES'
,p_step_title=>'Milestones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can insert, update, and delete data directly within this interactive grid.<br>',
'  Insert a new row by clicking the Add Row button.<br>',
'  Double click into a cell, or click the <strong>Edit</strong> button to update data values, similar to editing data in a spreadsheet.</p>',
'',
'<p>Use the Row Actions menu ( <span class="fa fa-bars" aria-hidden="true"></span> ) at the top of the report to duplicate, delete, refresh or revert selected rows.<br> ',
'  Use the Row Actions menu on individual rows to also access the single row view or add a new row.</p>',
'',
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define an additi'
||'onal view of the data using the chart option.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive grid back to the default settings.</p>'))
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321378051375535417)
,p_plug_name=>'Project Milestones'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECT_MILESTONES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Milestones'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321379362576535418)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321379807395535419)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321380846333535420)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'ID'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321381844065535421)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(74321389801865535426)
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321382864985535422)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321383890312535422)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321384801247535423)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321385884908535424)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321386876187535424)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321387921317535425)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(74321388986945535426)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(74321378593112535417)
,p_internal_uid=>74321378593112535417
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(74321349654490535383)
,p_update_authorization_scheme=>wwv_flow_imp.id(74321349654490535383)
,p_delete_authorization_scheme=>wwv_flow_imp.id(74321349654490535383)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(74321378976949535417)
,p_interactive_grid_id=>wwv_flow_imp.id(74321378593112535417)
,p_static_id=>'743213790'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(74321379105466535418)
,p_report_id=>wwv_flow_imp.id(74321378976949535417)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321380290329535419)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(74321379807395535419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321381201784535420)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(74321380846333535420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321382225456535421)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(74321381844065535421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321383259468535422)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(74321382864985535422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321384248790535423)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(74321383890312535422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321385218207535423)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(74321384801247535423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321386269533535424)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(74321385884908535424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321387366119535425)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(74321386876187535424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321388398556535425)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(74321387921317535425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74321389381201535426)
,p_view_id=>wwv_flow_imp.id(74321379105466535418)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(74321388986945535426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321391421804535428)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321390665801535427)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(74321378051375535417)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Milestones - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321390665801535427
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
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
 p_id=>wwv_flow_imp.id(74321414191960536201)
,p_plug_name=>'Project Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECT_TASKS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tasks'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(74321414219456536201)
,p_name=>'Tasks'
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
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:RP:P6_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(74321349654490535383)
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>74321414219456536201
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321415016899536202)
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
 p_id=>wwv_flow_imp.id(74321415423998536203)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(74321389801865535426)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321415881314536203)
,p_db_column_name=>'MILESTONE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(74321399690044536189)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321416204616536203)
,p_db_column_name=>'NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321416679078536204)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321417075960536204)
,p_db_column_name=>'ASSIGNEE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Assignee'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321417430304536204)
,p_db_column_name=>'START_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321417888394536204)
,p_db_column_name=>'END_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321418293705536205)
,p_db_column_name=>'COST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321418663826536205)
,p_db_column_name=>'IS_COMPLETE_YN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Is Complete '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321419060788536205)
,p_db_column_name=>'CREATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321419458697536205)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321419871876536206)
,p_db_column_name=>'UPDATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321420246053536206)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(74321467894233536918)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743214679'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_ID:MILESTONE_ID:NAME:DESCRIPTION:ASSIGNEE:START_DATE:END_DATE:COST:IS_COMPLETE_YN'
,p_sort_column_1=>'PROJECT_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321421912915536207)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321420732172536206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321414191960536201)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321421030027536206)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(74321414191960536201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321421552479536207)
,p_event_id=>wwv_flow_imp.id(74321421030027536206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321414191960536201)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Project Task'
,p_alias=>'PROJECT-TASK'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Task'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(74321349654490535383)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321396821593535995)
,p_plug_name=>'Project Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECT_TASKS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321409759343536197)
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
 p_id=>wwv_flow_imp.id(74321410151465536198)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321409759343536197)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321411569057536199)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321409759343536197)
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
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321411922325536199)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(74321409759343536197)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321412331584536199)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(74321409759343536197)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321397283847535995)
,p_name=>'P6_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
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
 p_id=>wwv_flow_imp.id(74321399106783536188)
,p_name=>'P6_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EBA_PROJECTS.NAME'
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
 p_id=>wwv_flow_imp.id(74321399545602536189)
,p_name=>'P6_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EBA_PROJECT_MILESTONES.NAME'
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
 p_id=>wwv_flow_imp.id(74321400292758536189)
,p_name=>'P6_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
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
 p_id=>wwv_flow_imp.id(74321400604291536190)
,p_name=>'P6_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
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
 p_id=>wwv_flow_imp.id(74321401005901536190)
,p_name=>'P6_ASSIGNEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assignee'
,p_source=>'ASSIGNEE'
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
 p_id=>wwv_flow_imp.id(74321401478052536190)
,p_name=>'P6_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
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
 p_id=>wwv_flow_imp.id(74321401852044536191)
,p_name=>'P6_END_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
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
 p_id=>wwv_flow_imp.id(74321402214611536191)
,p_name=>'P6_COST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
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
 p_id=>wwv_flow_imp.id(74321402619879536191)
,p_name=>'P6_IS_COMPLETE_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Complete '
,p_source=>'IS_COMPLETE_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321403049218536192)
,p_name=>'P6_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321403841849536193)
,p_name=>'P6_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321404222286536193)
,p_name=>'P6_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321405173070536194)
,p_name=>'P6_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_item_source_plug_id=>wwv_flow_imp.id(74321396821593535995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(74321403568632536192)
,p_validation_name=>'P6_CREATED must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P6_CREATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(74321403049218536192)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(74321404898663536194)
,p_validation_name=>'P6_UPDATED must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P6_UPDATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(74321404222286536193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321410299260536198)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321410151465536198)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321411022736536198)
,p_event_id=>wwv_flow_imp.id(74321410299260536198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321413115571536200)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(74321396821593535995)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project Task'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321413115571536200
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321413512589536200)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>74321413512589536200
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321412742041536200)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(74321396821593535995)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Project Task'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321412742041536200
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Calendar'
,p_alias=>'CALENDAR'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321424419568536210)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECT_TASKS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'display_column', 'NAME',
  'drag_and_drop', 'N',
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'time_format', '00')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321424888743536211)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Project Costs'
,p_alias=>'PROJECT-COSTS'
,p_step_title=>'Project Costs'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321426488186536212)
,p_plug_name=>'Project Costs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(74321426875821536213)
,p_region_id=>wwv_flow_imp.id(74321426488186536212)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(74321428516482536214)
,p_chart_id=>wwv_flow_imp.id(74321426875821536213)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ( select l."NAME" from "EBA_PROJECTS" l where l."ID" = c."PROJECT_ID") "PROJECT_ID", ',
'       sum(c."COST") value',
'  from "EBA_PROJECT_TASKS" c',
' where c."COST" is not null',
' group by c."PROJECT_ID"',
' order by 2 desc'))
,p_max_row_count=>40
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'PROJECT_ID'
,p_items_label_rendered=>false
,p_items_label_position=>'auto'
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(74321427933037536213)
,p_chart_id=>wwv_flow_imp.id(74321426875821536213)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(74321427377091536213)
,p_chart_id=>wwv_flow_imp.id(74321426875821536213)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321430263661536215)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Statuses'
,p_alias=>'STATUSES'
,p_page_mode=>'MODAL'
,p_step_title=>'Statuses'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_dialog_resizable=>'Y'
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
 p_id=>wwv_flow_imp.id(74321455178576536904)
,p_plug_name=>'Project Status'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECT_STATUS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Statuses'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(74321455273431536904)
,p_name=>'Statuses'
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
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP:P10_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ELAHEHNAJAFIAN@GMAIL.COM'
,p_internal_uid=>74321455273431536904
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321455904914536905)
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
 p_id=>wwv_flow_imp.id(74321456328567536905)
,p_db_column_name=>'CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321456729172536905)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321457173130536905)
,p_db_column_name=>'DISPLAY_ORDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Display Order'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321457511273536906)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321457901715536906)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321458365096536906)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321458706914536906)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(74321490198280536938)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743214902'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODE:DESCRIPTION:DISPLAY_ORDER'
,p_sort_column_1=>'CODE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321459291184536907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321455178576536904)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321459501521536907)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(74321455178576536904)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321460080247536907)
,p_event_id=>wwv_flow_imp.id(74321459501521536907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321455178576536904)
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Project Status'
,p_alias=>'PROJECT-STATUS'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Status'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321441650744536727)
,p_plug_name=>'Project Status'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECT_STATUS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321450787209536900)
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
 p_id=>wwv_flow_imp.id(74321451148493536901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321450787209536900)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321452544423536902)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321450787209536900)
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
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321452901685536902)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(74321450787209536900)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321453314348536902)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(74321450787209536900)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321442038943536728)
,p_name=>'P10_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
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
 p_id=>wwv_flow_imp.id(74321444681416536895)
,p_name=>'P10_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
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
 p_id=>wwv_flow_imp.id(74321445041673536896)
,p_name=>'P10_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
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
 p_id=>wwv_flow_imp.id(74321445518994536896)
,p_name=>'P10_DISPLAY_ORDER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Order'
,p_source=>'DISPLAY_ORDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321445905791536897)
,p_name=>'P10_CREATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321446713732536897)
,p_name=>'P10_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321447185526536898)
,p_name=>'P10_UPDATED'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321447900406536898)
,p_name=>'P10_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_item_source_plug_id=>wwv_flow_imp.id(74321441650744536727)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(74321446473326536897)
,p_validation_name=>'P10_CREATED must be timestamp'
,p_validation_sequence=>40
,p_validation=>'P10_CREATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(74321445905791536897)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(74321447645874536898)
,p_validation_name=>'P10_UPDATED must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P10_UPDATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(74321447185526536898)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321451208816536901)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321451148493536901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321452063609536901)
,p_event_id=>wwv_flow_imp.id(74321451208816536901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321454193699536903)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(74321441650744536727)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project Status'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321454193699536903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321454546689536903)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>74321454546689536903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321453758779536902)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(74321441650744536727)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Project Status'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321453758779536902
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Create App Wizard - Log In'
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
 p_id=>wwv_flow_imp.id(74321356267686535392)
,p_plug_name=>'Create App Wizard'
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
 p_id=>wwv_flow_imp.id(74321358446269535395)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(74321356267686535392)
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
 p_id=>wwv_flow_imp.id(74321356741517535393)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321356267686535392)
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
 p_id=>wwv_flow_imp.id(74321357115336535394)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321356267686535392)
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
 p_id=>wwv_flow_imp.id(74321357510218535394)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321356267686535392)
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
 p_id=>wwv_flow_imp.id(74321357953142535395)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321356267686535392)
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
 p_id=>wwv_flow_imp.id(74321360620749535397)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321360620749535397
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74321361119706535397)
,p_page_process_id=>wwv_flow_imp.id(74321360620749535397)
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
 p_id=>wwv_flow_imp.id(74321361621018535397)
,p_page_process_id=>wwv_flow_imp.id(74321360620749535397)
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
 p_id=>wwv_flow_imp.id(74321358714830535395)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321358714830535395
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74321359276829535396)
,p_page_process_id=>wwv_flow_imp.id(74321358714830535395)
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
 p_id=>wwv_flow_imp.id(74321359790796535396)
,p_page_process_id=>wwv_flow_imp.id(74321358714830535395)
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
 p_id=>wwv_flow_imp.id(74321360200253535397)
,p_page_process_id=>wwv_flow_imp.id(74321358714830535395)
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
 p_id=>wwv_flow_imp.id(74321362551022535398)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321362551022535398
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321362143246535398)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>74321362143246535398
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321687005096537125)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(74321342555897535373)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321694310490537130)
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
 p_id=>wwv_flow_imp.id(74321694742243537130)
,p_plug_name=>'Application Administration'
,p_parent_plug_id=>wwv_flow_imp.id(74321694310490537130)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(74321693645410537129)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321695111269537131)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(74321694310490537130)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(74321687754682537126)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(74321347130240535381)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321695523673537131)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(74321694310490537130)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(74321688407391537126)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(74321347542544535381)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321695923716537131)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(74321694310490537130)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(74321689167629537127)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321696365633537132)
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
 p_id=>wwv_flow_imp.id(74321696761691537132)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(74321696365633537132)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321697528205537133)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(74321696761691537132)
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
 p_id=>wwv_flow_imp.id(74321697913105537133)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(74321696761691537132)
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
 p_id=>wwv_flow_imp.id(74321698689500537135)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74321699008137537135)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74321699459150537135)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321702590913537138)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(74321696761691537132)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(74321691805975537129)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321702949595537139)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(74321696365633537132)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(74321703344361537139)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(74321702949595537139)
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
 p_id=>wwv_flow_imp.id(74321704000742537140)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74321704445982537141)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321706303844537143)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(74321702949595537139)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(74321692919385537129)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321697159149537132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321696761691537132)
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
 p_id=>wwv_flow_imp.id(74321701656611537137)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321697159149537132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321702151152537138)
,p_event_id=>wwv_flow_imp.id(74321701656611537137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321697913105537133)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321347130240535381)
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
 p_id=>wwv_flow_imp.id(74321508061248536953)
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
 p_id=>wwv_flow_imp.id(74321508291681536953)
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
 p_id=>wwv_flow_imp.id(74321508898669536954)
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
,p_internal_uid=>74321508898669536954
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321509577331536956)
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
 p_id=>wwv_flow_imp.id(74321509986384536956)
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
 p_id=>wwv_flow_imp.id(74321510328055536956)
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
 p_id=>wwv_flow_imp.id(74321510707444536957)
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
 p_id=>wwv_flow_imp.id(74321511197331536957)
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
 p_id=>wwv_flow_imp.id(74321511561659536958)
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
 p_id=>wwv_flow_imp.id(74321511947855536958)
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
 p_id=>wwv_flow_imp.id(74321514772242536961)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743215148'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321516390278536963)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321508061248536953)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321515671715536962)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321508291681536953)
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
 p_id=>wwv_flow_imp.id(74321517118081536964)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321516751221536963)
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
,p_internal_uid=>74321516751221536963
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321347542544535381)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321517494978536964)
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
 p_id=>wwv_flow_imp.id(74321517566831536964)
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
 p_id=>wwv_flow_imp.id(74321519952034536966)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321517494978536964)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321518523573536965)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321517494978536964)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(74321520311301536966)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321520668791536967)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321517566831536964)
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
 p_id=>wwv_flow_imp.id(74321521395142536968)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321517566831536964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(74321521462471536968)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321518656494536965)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321518523573536965)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321519334700536966)
,p_event_id=>wwv_flow_imp.id(74321518656494536965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321522576924536969)
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
,p_internal_uid=>74321522576924536969
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321522987927536969)
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
,p_internal_uid=>74321522987927536969
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321523286909536970)
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
 p_id=>wwv_flow_imp.id(74321523351971536970)
,p_region_id=>wwv_flow_imp.id(74321523286909536970)
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
 p_id=>wwv_flow_imp.id(74321525471581536971)
,p_chart_id=>wwv_flow_imp.id(74321523351971536970)
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
 p_id=>wwv_flow_imp.id(74321526068008536971)
,p_chart_id=>wwv_flow_imp.id(74321523351971536970)
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
 p_id=>wwv_flow_imp.id(74321526697410536972)
,p_chart_id=>wwv_flow_imp.id(74321523351971536970)
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
 p_id=>wwv_flow_imp.id(74321523467399536970)
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
 p_id=>wwv_flow_imp.id(74321523571849536970)
,p_region_id=>wwv_flow_imp.id(74321523467399536970)
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
 p_id=>wwv_flow_imp.id(74321530422764536975)
,p_chart_id=>wwv_flow_imp.id(74321523571849536970)
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
 p_id=>wwv_flow_imp.id(74321531041271536975)
,p_chart_id=>wwv_flow_imp.id(74321523571849536970)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(74321531628973536975)
,p_chart_id=>wwv_flow_imp.id(74321523571849536970)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321523680489536970)
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
 p_id=>wwv_flow_imp.id(74321523725569536970)
,p_region_id=>wwv_flow_imp.id(74321523680489536970)
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
 p_id=>wwv_flow_imp.id(74321527930637536973)
,p_chart_id=>wwv_flow_imp.id(74321523725569536970)
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
 p_id=>wwv_flow_imp.id(74321528554381536973)
,p_chart_id=>wwv_flow_imp.id(74321523725569536970)
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
 p_id=>wwv_flow_imp.id(74321529127242536973)
,p_chart_id=>wwv_flow_imp.id(74321523725569536970)
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
 p_id=>wwv_flow_imp.id(74321523876039536970)
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
 p_id=>wwv_flow_imp.id(74321532739429536977)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74321533124209536978)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(74321523998414536970)
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
 p_id=>wwv_flow_imp.id(74321535983008536981)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74321536379605536981)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321524071559536970)
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
 p_id=>wwv_flow_imp.id(74321538630783536984)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321523286909536970)
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
 p_id=>wwv_flow_imp.id(74321539008152536984)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321523467399536970)
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
 p_id=>wwv_flow_imp.id(74321539407334536984)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321523680489536970)
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
 p_id=>wwv_flow_imp.id(74321539842384536984)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321523876039536970)
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
 p_id=>wwv_flow_imp.id(74321524104068536970)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321524071559536970)
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
 p_id=>wwv_flow_imp.id(74321524227936536970)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321541435713536986)
,p_event_id=>wwv_flow_imp.id(74321524227936536970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321523286909536970)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321541909862536986)
,p_event_id=>wwv_flow_imp.id(74321524227936536970)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321523680489536970)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321542464480536987)
,p_event_id=>wwv_flow_imp.id(74321524227936536970)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321523467399536970)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321542997261536987)
,p_event_id=>wwv_flow_imp.id(74321524227936536970)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321523876039536970)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321543485881536987)
,p_event_id=>wwv_flow_imp.id(74321524227936536970)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321523998414536970)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
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
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
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
 p_id=>wwv_flow_imp.id(74321576323836537020)
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
 p_id=>wwv_flow_imp.id(74321577433680537020)
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
,p_internal_uid=>74321577433680537020
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321578155054537024)
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
 p_id=>wwv_flow_imp.id(74321578560143537024)
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
 p_id=>wwv_flow_imp.id(74321578920573537025)
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
 p_id=>wwv_flow_imp.id(74321579408211537026)
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
 p_id=>wwv_flow_imp.id(74321580068774537026)
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
 p_id=>wwv_flow_imp.id(74321580421758537027)
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
 p_id=>wwv_flow_imp.id(74321580827903537028)
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
 p_id=>wwv_flow_imp.id(74321581254591537028)
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
 p_id=>wwv_flow_imp.id(74321584625746537034)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743215847'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321576476037537020)
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
 p_id=>wwv_flow_imp.id(74321576659775537020)
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
 p_id=>wwv_flow_imp.id(74321576717675537020)
,p_region_id=>wwv_flow_imp.id(74321576659775537020)
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
 p_id=>wwv_flow_imp.id(74321588670217537038)
,p_chart_id=>wwv_flow_imp.id(74321576717675537020)
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
 p_id=>wwv_flow_imp.id(74321585954233537035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321576323836537020)
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
 p_id=>wwv_flow_imp.id(74321576853321537020)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321576476037537020)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(74321589136778537039)||'.'
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
 p_id=>wwv_flow_imp.id(74321577075889537020)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321576476037537020)
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
 p_id=>wwv_flow_imp.id(74321576551478537020)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321587231741537037)
,p_event_id=>wwv_flow_imp.id(74321576551478537020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321576323836537020)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321590931690537040)
,p_event_id=>wwv_flow_imp.id(74321576551478537020)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321576323836537020)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321569338466537013)
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
 p_id=>wwv_flow_imp.id(74321569978074537013)
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
,p_internal_uid=>74321569978074537013
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321570584029537014)
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
 p_id=>wwv_flow_imp.id(74321570957806537015)
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
 p_id=>wwv_flow_imp.id(74321571414481537015)
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
 p_id=>wwv_flow_imp.id(74321571806928537016)
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
 p_id=>wwv_flow_imp.id(74321572293737537016)
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
 p_id=>wwv_flow_imp.id(74321572638894537016)
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
 p_id=>wwv_flow_imp.id(74321575138005537019)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743215752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321576000692537020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321569338466537013)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
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
 p_id=>wwv_flow_imp.id(74321555228745536999)
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
 p_id=>wwv_flow_imp.id(74321555880731536999)
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
,p_internal_uid=>74321555880731536999
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321556527902537000)
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
 p_id=>wwv_flow_imp.id(74321556964773537001)
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
 p_id=>wwv_flow_imp.id(74321557325384537001)
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
 p_id=>wwv_flow_imp.id(74321557762527537002)
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
 p_id=>wwv_flow_imp.id(74321558185554537002)
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
 p_id=>wwv_flow_imp.id(74321558566939537002)
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
 p_id=>wwv_flow_imp.id(74321558977929537003)
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
 p_id=>wwv_flow_imp.id(74321559312502537003)
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
 p_id=>wwv_flow_imp.id(74321559758207537003)
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
 p_id=>wwv_flow_imp.id(74321560190956537004)
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
 p_id=>wwv_flow_imp.id(74321560573515537004)
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
 p_id=>wwv_flow_imp.id(74321560979319537004)
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
 p_id=>wwv_flow_imp.id(74321561357405537005)
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
 p_id=>wwv_flow_imp.id(74321561787408537005)
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
 p_id=>wwv_flow_imp.id(74321566651009537010)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743215667'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321555322403536999)
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
 p_id=>wwv_flow_imp.id(74321567556684537011)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321555228745536999)
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
 p_id=>wwv_flow_imp.id(74321555103023536999)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321555322403536999)
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
 p_id=>wwv_flow_imp.id(74321555453064536999)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321568820922537012)
,p_event_id=>wwv_flow_imp.id(74321555453064536999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321555228745536999)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
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
 p_id=>wwv_flow_imp.id(74321543976917536988)
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
 p_id=>wwv_flow_imp.id(74321544571654536988)
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
,p_internal_uid=>74321544571654536988
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321545245665536989)
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
 p_id=>wwv_flow_imp.id(74321545656554536989)
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
 p_id=>wwv_flow_imp.id(74321546081094536990)
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
 p_id=>wwv_flow_imp.id(74321546445549536990)
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
 p_id=>wwv_flow_imp.id(74321546877627536990)
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
 p_id=>wwv_flow_imp.id(74321547270378536991)
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
 p_id=>wwv_flow_imp.id(74321547614257536991)
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
 p_id=>wwv_flow_imp.id(74321548075147536991)
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
 p_id=>wwv_flow_imp.id(74321548402270536992)
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
 p_id=>wwv_flow_imp.id(74321548899956536992)
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
 p_id=>wwv_flow_imp.id(74321552513649536996)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743215526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321544033044536988)
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
 p_id=>wwv_flow_imp.id(74321553498728536996)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321543976917536988)
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
 p_id=>wwv_flow_imp.id(74321543887226536988)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321544033044536988)
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
 p_id=>wwv_flow_imp.id(74321544167420536988)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321554729287536998)
,p_event_id=>wwv_flow_imp.id(74321544167420536988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321543976917536988)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
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
 p_id=>wwv_flow_imp.id(74321591468881537040)
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
 p_id=>wwv_flow_imp.id(74321592021529537041)
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
,p_internal_uid=>74321592021529537041
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321592876989537042)
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
 p_id=>wwv_flow_imp.id(74321593338255537042)
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
 p_id=>wwv_flow_imp.id(74321593905816537043)
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
 p_id=>wwv_flow_imp.id(74321594377135537043)
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
 p_id=>wwv_flow_imp.id(74321594771416537043)
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
 p_id=>wwv_flow_imp.id(74321595197936537044)
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
 p_id=>wwv_flow_imp.id(74321595587533537044)
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
 p_id=>wwv_flow_imp.id(74321595947794537044)
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
 p_id=>wwv_flow_imp.id(74321596314066537045)
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
 p_id=>wwv_flow_imp.id(74321600115044537048)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743216002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321601075788537049)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321591468881537040)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346863971535381)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321601725337537050)
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
 p_id=>wwv_flow_imp.id(74321604519570537052)
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
 p_id=>wwv_flow_imp.id(74321604945504537054)
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
 p_id=>wwv_flow_imp.id(74321605344333537054)
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
 p_id=>wwv_flow_imp.id(74321605700799537054)
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
 p_id=>wwv_flow_imp.id(74321606174196537055)
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
 p_id=>wwv_flow_imp.id(74321602337146537050)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321601725337537050)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321602899544537051)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321601725337537050)
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
 p_id=>wwv_flow_imp.id(74321603330387537051)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321601725337537050)
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
 p_id=>wwv_flow_imp.id(74321603773135537052)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321601725337537050)
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
 p_id=>wwv_flow_imp.id(74321604142183537052)
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
,p_internal_uid=>74321604142183537052
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
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
 p_id=>wwv_flow_imp.id(74321608495935537057)
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
 p_id=>wwv_flow_imp.id(74321608560886537057)
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
 p_id=>wwv_flow_imp.id(74321609761769537059)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321608560886537057)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321610088150537059)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321608560886537057)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(74321611457341537060)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321611798185537060)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321608495935537057)
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
 p_id=>wwv_flow_imp.id(74321610164823537059)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321610088150537059)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321610882533537059)
,p_event_id=>wwv_flow_imp.id(74321610164823537059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321612276523537061)
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
,p_internal_uid=>74321612276523537061
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
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
 p_id=>wwv_flow_imp.id(74321612603251537061)
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
 p_id=>wwv_flow_imp.id(74321613423233537061)
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
,p_internal_uid=>74321613423233537061
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321614177778537063)
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
 p_id=>wwv_flow_imp.id(74321614542712537063)
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
 p_id=>wwv_flow_imp.id(74321614936079537063)
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
 p_id=>wwv_flow_imp.id(74321616572501537065)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743216166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321617474612537066)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321612603251537061)
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
 p_id=>wwv_flow_imp.id(74321617827515537066)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(74321612603251537061)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321618207701537066)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(74321612603251537061)
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
 p_id=>wwv_flow_imp.id(74321612742961537061)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(74321612603251537061)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321618846202537067)
,p_event_id=>wwv_flow_imp.id(74321612742961537061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321612603251537061)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
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
 p_id=>wwv_flow_imp.id(74321619372433537067)
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
 p_id=>wwv_flow_imp.id(74321619462495537067)
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
 p_id=>wwv_flow_imp.id(74321622270563537069)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(74321619462495537067)
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
 p_id=>wwv_flow_imp.id(74321622656976537070)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(74321619462495537067)
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
 p_id=>wwv_flow_imp.id(74321620406722537068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321619462495537067)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321621848258537069)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321619462495537067)
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
 p_id=>wwv_flow_imp.id(74321622975123537070)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321619372433537067)
,p_item_source_plug_id=>wwv_flow_imp.id(74321619372433537067)
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
 p_id=>wwv_flow_imp.id(74321623376743537070)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321619372433537067)
,p_item_source_plug_id=>wwv_flow_imp.id(74321619372433537067)
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
 p_id=>wwv_flow_imp.id(74321623755068537071)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321619372433537067)
,p_item_source_plug_id=>wwv_flow_imp.id(74321619372433537067)
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
 p_id=>wwv_flow_imp.id(74321624127244537071)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321619372433537067)
,p_item_source_plug_id=>wwv_flow_imp.id(74321619372433537067)
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
 p_id=>wwv_flow_imp.id(74321625450920537073)
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
 p_id=>wwv_flow_imp.id(74321620521058537068)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321620406722537068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321621244811537069)
,p_event_id=>wwv_flow_imp.id(74321620521058537068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321625777464537073)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(74321619372433537067)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321625777464537073
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321626195609537073)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(74321619372433537067)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321626195609537073
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321626510027537073)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321626510027537073
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321626913228537073)
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
 p_id=>wwv_flow_imp.id(74321627006035537073)
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
 p_id=>wwv_flow_imp.id(74321627136106537073)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321626913228537073)
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
 p_id=>wwv_flow_imp.id(74321629102140537075)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321626913228537073)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(74321630426112537076)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(74321627136106537073)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321630804811537076)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321627006035537073)
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
 p_id=>wwv_flow_imp.id(74321631263008537077)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321627006035537073)
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
 p_id=>wwv_flow_imp.id(74321631686606537077)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321627006035537073)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(74321631714264537077)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321629237117537075)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321629102140537075)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321629973448537076)
,p_event_id=>wwv_flow_imp.id(74321629237117537075)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321632714584537078)
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
,p_process_when_button_id=>wwv_flow_imp.id(74321627136106537073)
,p_internal_uid=>74321632714584537078
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346762358535381)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321627217171537073)
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
 p_id=>wwv_flow_imp.id(74321627301325537073)
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
 p_id=>wwv_flow_imp.id(74321627551689537073)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(74321627301325537073)
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
 p_id=>wwv_flow_imp.id(74321634604145537081)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74321635055943537081)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321627608210537073)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(74321627301325537073)
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
 p_id=>wwv_flow_imp.id(74321627721112537073)
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
 p_id=>wwv_flow_imp.id(74321638125248537084)
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
 p_id=>wwv_flow_imp.id(74321638800405537085)
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
 p_id=>wwv_flow_imp.id(74321627871501537073)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321627217171537073)
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
 p_id=>wwv_flow_imp.id(74321639554071537085)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321627217171537073)
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
 p_id=>wwv_flow_imp.id(74321639944703537086)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321627217171537073)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321641226944537086)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321627721112537073)
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
 p_id=>wwv_flow_imp.id(74321641638511537087)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321627721112537073)
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
 p_id=>wwv_flow_imp.id(74321642006588537087)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321627721112537073)
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
 p_id=>wwv_flow_imp.id(74321640073218537086)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321639944703537086)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321640720333537086)
,p_event_id=>wwv_flow_imp.id(74321640073218537086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321642413358537088)
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
,p_process_when_button_id=>wwv_flow_imp.id(74321627871501537073)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>74321642413358537088
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321642880987537088)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321642880987537088
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321643215902537088)
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
 p_id=>wwv_flow_imp.id(74321643349928537088)
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
 p_id=>wwv_flow_imp.id(74321643483616537088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321643349928537088)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321646472261537090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321643349928537088)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(74321654180327537095)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321647765677537090)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321643215902537088)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321648161315537091)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321643215902537088)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321648592833537091)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321643215902537088)
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
 p_id=>wwv_flow_imp.id(74321648998835537092)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(74321643215902537088)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(74321649012079537092)||'.'
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
 p_id=>wwv_flow_imp.id(74321650827765537093)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321643215902537088)
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
 p_id=>wwv_flow_imp.id(74321653798126537095)
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
 p_id=>wwv_flow_imp.id(74321646531799537090)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321646472261537090)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321647244748537090)
,p_event_id=>wwv_flow_imp.id(74321646531799537090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321651225206537093)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74321643483616537088)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>74321651225206537093
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74321651737482537094)
,p_page_process_id=>wwv_flow_imp.id(74321651225206537093)
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
 p_id=>wwv_flow_imp.id(74321652258541537094)
,p_page_process_id=>wwv_flow_imp.id(74321651225206537093)
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
 p_id=>wwv_flow_imp.id(74321652772155537094)
,p_page_process_id=>wwv_flow_imp.id(74321651225206537093)
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
 p_id=>wwv_flow_imp.id(74321653233433537095)
,p_page_process_id=>wwv_flow_imp.id(74321651225206537093)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321643883638537088)
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
 p_id=>wwv_flow_imp.id(74321643799473537088)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321643883638537088)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321643962119537088)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321643799473537088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321655716031537097)
,p_event_id=>wwv_flow_imp.id(74321643962119537088)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
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
 p_id=>wwv_flow_imp.id(74321645100247537088)
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
 p_id=>wwv_flow_imp.id(74321668615972537106)
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
,p_internal_uid=>74321668615972537106
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321669357173537108)
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
 p_id=>wwv_flow_imp.id(74321669715803537108)
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
 p_id=>wwv_flow_imp.id(74321670144667537109)
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
 p_id=>wwv_flow_imp.id(74321670557776537109)
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
 p_id=>wwv_flow_imp.id(74321670945146537110)
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
 p_id=>wwv_flow_imp.id(74321671392266537110)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(74321649012079537092)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321671713397537110)
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
 p_id=>wwv_flow_imp.id(74321672115110537111)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(74321661461874537102)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(74321672530458537111)
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
 p_id=>wwv_flow_imp.id(74321672932130537111)
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
 p_id=>wwv_flow_imp.id(74321673392108537112)
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
 p_id=>wwv_flow_imp.id(74321673732102537112)
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
 p_id=>wwv_flow_imp.id(74321674137595537113)
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
 p_id=>wwv_flow_imp.id(74321678756207537117)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743216788'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321679654907537118)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321645100247537088)
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
 p_id=>wwv_flow_imp.id(74321645004073537088)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(74321645100247537088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321680363843537118)
,p_event_id=>wwv_flow_imp.id(74321645004073537088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74321645100247537088)
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(74321349491898535383)
,p_required_patch=>wwv_flow_imp.id(74321346903445535381)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321644586049537088)
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
 p_id=>wwv_flow_imp.id(74321644663381537088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321644586049537088)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321657395366537098)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(74321644586049537088)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74321644883778537088)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(74321644586049537088)
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
 p_id=>wwv_flow_imp.id(74321658950497537100)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321659300992537100)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321659751328537100)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321660100004537101)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321660523613537101)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321660948687537102)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321661388500537102)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(74321661461874537102)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74321663621737537103)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(74321644490447537088)
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
 p_id=>wwv_flow_imp.id(74321657446725537098)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74321657395366537098)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321658168501537099)
,p_event_id=>wwv_flow_imp.id(74321657446725537098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321664112248537104)
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
,p_internal_uid=>74321664112248537104
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321664499583537104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74321644663381537088)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>74321664499583537104
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74321664931823537104)
,p_page_process_id=>wwv_flow_imp.id(74321664499583537104)
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
 p_id=>wwv_flow_imp.id(74321665494808537105)
,p_page_process_id=>wwv_flow_imp.id(74321664499583537104)
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
 p_id=>wwv_flow_imp.id(74321665931361537105)
,p_page_process_id=>wwv_flow_imp.id(74321664499583537104)
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
 p_id=>wwv_flow_imp.id(74321666346564537105)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74321644883778537088)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>74321666346564537105
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(74321666888807537105)
,p_page_process_id=>wwv_flow_imp.id(74321666346564537105)
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
 p_id=>wwv_flow_imp.id(74321667321917537106)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(74321644883778537088)
,p_internal_uid=>74321667321917537106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74321667772519537106)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>74321667772519537106
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
,p_group_id=>wwv_flow_imp.id(74321351099997535384)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(74321347435227535381)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321681229465537119)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Allow users to insert, update and delete all of details related to project management including projects, milestones and tasks.'
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
,p_required_patch=>wwv_flow_imp.id(74321347435227535381)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321681937936537120)
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
 p_id=>wwv_flow_imp.id(74321682349947537121)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321681937936537120)
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
,p_group_id=>wwv_flow_imp.id(74321706730388537144)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(74321707248626537144)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321711819936537149)
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
 p_id=>wwv_flow_imp.id(74321712349175537149)
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
 p_id=>wwv_flow_imp.id(74321712861901537150)
,p_region_id=>wwv_flow_imp.id(74321712349175537149)
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
 p_id=>wwv_flow_imp.id(74321713371370537150)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(74321710893662537148)
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
,p_group_id=>wwv_flow_imp.id(74321706730388537144)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(74321706929839537144)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74321708250452537145)
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
 p_id=>wwv_flow_imp.id(74321708632014537146)
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
 p_id=>wwv_flow_imp.id(74321707957835537145)
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
 p_id=>wwv_flow_imp.id(74321709190628537146)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(74321708632014537146)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74321709486047537147)
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
 p_id=>wwv_flow_imp.id(74321709960682537147)
,p_event_id=>wwv_flow_imp.id(74321709486047537147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74321710414650537147)
,p_event_id=>wwv_flow_imp.id(74321709486047537147)
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
