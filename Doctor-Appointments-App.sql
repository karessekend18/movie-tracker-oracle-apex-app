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
,p_release=>'24.2.5'
,p_default_workspace_id=>27405923665045594898
,p_default_application_id=>244109
,p_default_id_offset=>0
,p_default_owner=>'WKSP_KARESSEKEND1821APEX'
);
end;
/
 
prompt APPLICATION 244109 - Doctor Appointments
--
-- Application Export:
--   Application:     244109
--   Name:            Doctor Appointments
--   Date and Time:   05:13 Monday May 26, 2025
--   Exported By:     MARKARE171893@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     13
--       Items:                  118
--       Computations:             3
--       Validations:             21
--       Processes:               60
--       Regions:                 84
--       Buttons:                 89
--       Dynamic Actions:         73
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              7
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   8
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.5
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_KARESSEKEND1821APEX')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Doctor Appointments')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DOCTOR-APPOINTMENTS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CAC91933AC2ADBA8807BCC0F8FB70BCDE8FC9A6C71AE443B622D83B01E0DF99E'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(27487632570693078477)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Doctor Appointments'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Doctor Appointments'
,p_substitution_string_02=>'APP_EMAIL'
,p_substitution_value_02=>'no-reply@abchospitals.com'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15617587960551
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(244109)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(27487633313362078478)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(27487634541203078480)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/workflow/task_definitions/appointment_request
begin
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(27494871188964558810)
,p_name=>'Appointment Request'
,p_static_id=>'APPOINTMENT_REQUEST'
,p_subject=>'Appointment for &PATIENT_NAME. on &APPOINTMENT_DATE.'
,p_task_type=>'APPROVAL'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>'select * from doctor where dno = :APEX$TASK_PK'
,p_initiator_can_complete=>false
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27498866305497346256)
,p_task_def_id=>wwv_flow_imp.id(27494871188964558810)
,p_label=>'Appointment Date'
,p_static_id=>'APPOINTMENT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27498866740697346257)
,p_task_def_id=>wwv_flow_imp.id(27494871188964558810)
,p_label=>'Consultation Form'
,p_static_id=>'PATIENT_DESC'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27498867136059346257)
,p_task_def_id=>wwv_flow_imp.id(27494871188964558810)
,p_label=>'Patient Name'
,p_static_id=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(27498865941994346254)
,p_task_def_id=>wwv_flow_imp.id(27494871188964558810)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>':DNAME'
);
end;
/
prompt --application/shared_components/workflow/task_definitions/invoice_request
begin
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(27499262012923356399)
,p_name=>'Invoice Request'
,p_static_id=>'INVOICE_REQUEST'
,p_subject=>'Invoice for &PATIENT_USERNAME. for consultation on &SCHEDULE.'
,p_task_type=>'ACTION'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>'select * from appointment where BOOKING_ID = :APEX$TASK_PK'
,p_initiator_can_complete=>false
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27500402927713642049)
,p_task_def_id=>wwv_flow_imp.id(27499262012923356399)
,p_label=>'Doctor Name'
,p_static_id=>'DOCTOR_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27500403339166642050)
,p_task_def_id=>wwv_flow_imp.id(27499262012923356399)
,p_label=>'Fees'
,p_static_id=>'FEES'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27500403746130642050)
,p_task_def_id=>wwv_flow_imp.id(27499262012923356399)
,p_label=>'Patient Name'
,p_static_id=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(27500402566081642047)
,p_task_def_id=>wwv_flow_imp.id(27499262012923356399)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'&PATIENT_USERNAME.'
);
end;
/
prompt --application/shared_components/workflow/task_definitions/feedback_request
begin
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(27501093911835381575)
,p_name=>'Feedback Request'
,p_static_id=>'FEEDBACK_REQUEST'
,p_subject=>'Feedback for Consultation on &SCHEDULE.'
,p_task_type=>'ACTION'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:P4_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>'select * from appointment where BOOKING_ID = :APEX$TASK_PK'
,p_initiator_can_complete=>false
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(27501175660216389018)
,p_task_def_id=>wwv_flow_imp.id(27501093911835381575)
,p_label=>'Booking Id'
,p_static_id=>'BOOKING_ID'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(27501175207486389015)
,p_task_def_id=>wwv_flow_imp.id(27501093911835381575)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'&PATIENT_USERNAME.'
);
end;
/
prompt --application/shared_components/workflow/workflows/calculate_fees
begin
wwv_flow_imp_shared.create_workflow(
 p_id=>wwv_flow_imp.id(27411506506079833630)
,p_name=>'Calculate Fees'
,p_static_id=>'CHECK_APPT_FEE'
,p_title=>'Check Appointment Fee for Patient &PATIENT.'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507284753833637)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_label=>'Booking ID'
,p_static_id=>'BOOKING_ID'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507372376833638)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_label=>'DNO'
,p_static_id=>'DNO'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507422076833639)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_label=>'Patient Email'
,p_static_id=>'PATIENT_EMAIL'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507502720833640)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_label=>'Patient Name'
,p_static_id=>'PATIENT_NAME'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507699069833641)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_label=>'Request Date'
,p_static_id=>'REQUEST_DATE'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP'
,p_is_required=>false
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507766278833642)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_label=>'Status'
,p_static_id=>'STATUS'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_workflow_version(
 p_id=>wwv_flow_imp.id(27411506655477833631)
,p_workflow_id=>wwv_flow_imp.id(27411506506079833630)
,p_version=>'1.0'
,p_state=>'DEVELOPMENT'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507886722833643)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_label=>'Approver'
,p_static_id=>'APPROVER'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411507907243833644)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_label=>'Fees'
,p_static_id=>'FEES'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27411508063878833645)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_label=>'Task Outcome'
,p_static_id=>'TASK_OUTCOME'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27411506787300833632)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Start'
,p_static_id=>'New'
,p_display_sequence=>10
,p_activity_type=>'NATIVE_WORKFLOW_START'
,p_diagram=>'{"position":{"x":700,"y":970},"z":1}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27411506986513833634)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'End'
,p_static_id=>'New_2'
,p_display_sequence=>30
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":750,"y":1320},"z":3}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491102620356455314)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Free Consultation'
,p_static_id=>'New_1'
,p_display_sequence=>40
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'FREE'
,p_attribute_14=>'1'
,p_diagram=>'{"position":{"x":890,"y":970},"z":5}'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102887181455316)
,p_activity_id=>wwv_flow_imp.id(27491102620356455314)
,p_label=>'Free'
,p_static_id=>'FREE'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'FUNCTION_BODY'
,p_value_language=>'PLSQL'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_free NUMBER := 1;',
'BEGIN',
'SELECT 1',
'INTO   l_free',
'FROM   dual',
'WHERE  EXISTS (SELECT patient_username',
'           FROM   appointment',
'           WHERE  patient_username = :PATIENT_NAME',
'                  AND doctor_no = :DNO',
'                  AND schedule >= To_timestamp_tz(:REQUEST_DATE,',
'                                  ''DD-MON-YYYY HH24:MI:SS'')',
'                                  - 7',
'                  AND status = ''PAID'');',
'',
'RETURN 1;',
'EXCEPTION',
'WHEN OTHERS THEN',
'RETURN 0;',
'END;'))
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491102902583455317)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Update Fees'
,p_static_id=>'New_3'
,p_display_sequence=>50
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'UPDATE_FEES'
,p_diagram=>'{"position":{"x":900,"y":1080},"z":7}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491103072877455318)
,p_workflow_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'FEES'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491103153027455319)
,p_workflow_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_name=>'p_doctor_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491103206170455320)
,p_workflow_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_name=>'p_request_date'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491103351299455321)
,p_workflow_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_name=>'p_booking_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'ITEM'
,p_value=>'BOOKING_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491103415996455322)
,p_workflow_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_name=>'p_patient_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491103666748455324)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Send Invoice Email to Patient'
,p_static_id=>'New_4'
,p_display_sequence=>60
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&PATIENT_EMAIL.'
,p_attribute_06=>'Appointment Confirmed!'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello &PATIENT_NAME. ,',
'Your appointment for &REQUEST_DATE. with Dr. &DNAME. is confirmed, The consultation charge is Rs &FEE. .',
'An invoice has been raised for this appointment. Kindly make the required payment and confirm the same at the earliest.',
'Please note that no payment will be required if this is a follow-up consultation.',
'',
'Regards,',
'Management Team',
'ABC Hospital'))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":1130,"y":1080},"z":9}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491104158201455329)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Raise Invoice Request'
,p_static_id=>'New_5'
,p_display_sequence=>70
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(27499262012923356399)
,p_attribute_05=>'BOOKING_ID'
,p_due_on_type=>'INTERVAL'
,p_due_on_value=>'PT30M'
,p_diagram=>'{"position":{"x":1170,"y":1220},"z":14}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27491104277595455330)
,p_workflow_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_task_def_param_id=>wwv_flow_imp.id(27500402927713642049)
,p_value_type=>'STATIC'
,p_value=>'&DNAME.'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27491104323675455331)
,p_workflow_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_task_def_param_id=>wwv_flow_imp.id(27500403339166642050)
,p_value_type=>'ITEM'
,p_value=>'FEES'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27491104407694455332)
,p_workflow_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_task_def_param_id=>wwv_flow_imp.id(27500403746130642050)
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491104656214455334)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Set Status To Rejected'
,p_static_id=>'New_6'
,p_display_sequence=>80
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>':STATUS := ''REJECTED'';'
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":890,"y":1310},"z":16}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491104850979455336)
,p_workflow_version_id=>wwv_flow_imp.id(27411506655477833631)
,p_name=>'Set Status To Approved'
,p_static_id=>'New_7'
,p_display_sequence=>90
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>' :STATUS := ''APPROVED'';'
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":910,"y":1550},"z":18}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27411507095520833635)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27411506787300833632)
,p_to_activity_id=>wwv_flow_imp.id(27491102620356455314)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":4,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491103757968455325)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27491102620356455314)
,p_to_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"45.455%","dy":"16.667%","rotate":true}},"vertices":[],"z":10,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491103886638455326)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27491102620356455314)
,p_to_activity_id=>wwv_flow_imp.id(27491103666748455324)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"54.545%","dy":"16.667%","rotate":true}},"vertices":[],"z":11,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491103939619455327)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491102902583455317)
,p_to_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"9.091%","dy":"16.667%","rotate":true}},"vertices":[],"z":12,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491104039863455328)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491103666748455324)
,p_to_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"31.818%","dy":"16.667%","rotate":true}},"vertices":[],"z":13,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491104924491455337)
,p_name=>'Invoice Incomplete'
,p_transition_type=>'TIMEOUT'
,p_from_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_to_activity_id=>wwv_flow_imp.id(27491104656214455334)
,p_diagram=>'{"source":{},"target":{"pos":{"x":1280,"y":1440}},"vertices":[],"z":19,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491105160270455339)
,p_name=>'New_1'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491104158201455329)
,p_to_activity_id=>wwv_flow_imp.id(27491104850979455336)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"77.273%","dy":"16.667%","rotate":true}},"vertices":[],"z":21,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491105007242455338)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491104656214455334)
,p_to_activity_id=>wwv_flow_imp.id(27411506986513833634)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"16.667%","dy":"33.333%","rotate":true}},"vertices":[],"z":20,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491105217073455340)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491104850979455336)
,p_to_activity_id=>wwv_flow_imp.id(27411506986513833634)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"66.667%","dy":"100%","rotate":true}},"vertices":[],"z":22,"label":{"distance":0.5,"offset":0}}'
);
end;
/
prompt --application/shared_components/workflow/workflows/doctor_appointment
begin
wwv_flow_imp_shared.create_workflow(
 p_id=>wwv_flow_imp.id(27411508107677833646)
,p_name=>'Doctor Appointment'
,p_static_id=>'DOC_APPT'
,p_title=>'Workflow for patient &PATIENT_NAME.'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491101582394455303)
,p_workflow_id=>wwv_flow_imp.id(27411508107677833646)
,p_label=>'Patient Name'
,p_static_id=>'PATIENT_NAME'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491101650542455304)
,p_workflow_id=>wwv_flow_imp.id(27411508107677833646)
,p_label=>'Patient Age'
,p_static_id=>'PATIENT_AGE'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491101761237455305)
,p_workflow_id=>wwv_flow_imp.id(27411508107677833646)
,p_label=>'Request Date'
,p_static_id=>'REQUEST_DATE'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP'
,p_is_required=>false
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491101855008455306)
,p_workflow_id=>wwv_flow_imp.id(27411508107677833646)
,p_label=>'Patient Email'
,p_static_id=>'PATIENT_EMAIL'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491101993804455307)
,p_workflow_id=>wwv_flow_imp.id(27411508107677833646)
,p_label=>'Problem'
,p_static_id=>'PROBLEM'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_version(
 p_id=>wwv_flow_imp.id(27411508296935833647)
,p_workflow_id=>wwv_flow_imp.id(27411508107677833646)
,p_version=>'1.0'
,p_state=>'DEVELOPMENT'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTOR'
,p_pk_column=>'DNAME'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102056861455308)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_label=>'Availability'
,p_static_id=>'AVAILABILITY'
,p_direction=>'VARIABLE'
,p_data_type=>'BOOLEAN'
,p_value_type=>'NULL'
,p_format_mask=>'AVAILABLE,BUSY'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102164161455309)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_label=>'Fees'
,p_static_id=>'FEES'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'STATIC'
,p_value=>'0'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102201343455310)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_label=>'Approver'
,p_static_id=>'APPROVER'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102312082455311)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_label=>'ID'
,p_static_id=>'ID'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102403698455312)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_label=>'Sub Task Status'
,p_static_id=>'TASK_STATUS'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(27491102563247455313)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_label=>'Task Outcome'
,p_static_id=>'TASK_OUTCOME'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27411508300439833648)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Start'
,p_static_id=>'New'
,p_display_sequence=>10
,p_activity_type=>'NATIVE_WORKFLOW_START'
,p_diagram=>'{"position":{"x":940,"y":620},"z":1}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27411508520784833650)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Close Request'
,p_static_id=>'New_2'
,p_display_sequence=>30
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'TERMINATED'
,p_diagram=>'{"position":{"x":750,"y":1250},"z":3}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491105324452455341)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Compute Doctor Availability'
,p_static_id=>'New_1'
,p_display_sequence=>40
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'CHECK_AVAILABILITY'
,p_diagram=>'{"position":{"x":850,"y":760},"z":5}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491105496503455342)
,p_workflow_activity_id=>wwv_flow_imp.id(27491105324452455341)
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'AVAILABILITY'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491105561643455343)
,p_workflow_activity_id=>wwv_flow_imp.id(27491105324452455341)
,p_name=>'p_doctor_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27491105683855455344)
,p_workflow_activity_id=>wwv_flow_imp.id(27491105324452455341)
,p_name=>'p_request_date'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491105866478455346)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Doctor Available ?'
,p_static_id=>'New_3'
,p_display_sequence=>50
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'AVAILABILITY'
,p_attribute_14=>'BUSY'
,p_diagram=>'{"position":{"x":1060,"y":860},"z":7}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27491106159175455349)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'No Appointment Mail'
,p_static_id=>'New_4'
,p_display_sequence=>60
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&PATIENT_EMAIL.'
,p_attribute_06=>'Appointment Cancelled'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello &PATIENT_NAME. ,',
'',
'We regret to inform you that your appointment request for &REQUEST_DATE. It could not be confirmed due to the unavailability of the doctor/non-confirmation of the invoice.',
'The requested appointment has been canceled.',
'Please try again at a later date.',
'We regret the inconvenience caused.',
'',
'Regards,',
'Management Team',
'ABC Hospital'))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":820,"y":1070},"z":10}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686073108292827901)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Raise Appointment Request'
,p_static_id=>'New_5'
,p_display_sequence=>70
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(27494871188964558810)
,p_attribute_05=>'DNO'
,p_attribute_08=>'TASK_OUTCOME'
,p_attribute_09=>'APPROVER'
,p_diagram=>'{"position":{"x":1060,"y":1150},"z":12}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27686073316748827903)
,p_workflow_activity_id=>wwv_flow_imp.id(27686073108292827901)
,p_task_def_param_id=>wwv_flow_imp.id(27498866305497346256)
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27686073481894827904)
,p_workflow_activity_id=>wwv_flow_imp.id(27686073108292827901)
,p_task_def_param_id=>wwv_flow_imp.id(27498866740697346257)
,p_value_type=>'ITEM'
,p_value=>'PROBLEM'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27686073565768827905)
,p_workflow_activity_id=>wwv_flow_imp.id(27686073108292827901)
,p_task_def_param_id=>wwv_flow_imp.id(27498867136059346257)
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686073638304827906)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Complete Appointment'
,p_static_id=>'New_6'
,p_display_sequence=>80
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":1220,"y":2180},"z":14}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686073893776827908)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Appointment Approved ?'
,p_static_id=>'New_7'
,p_display_sequence=>90
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'CHECK_WF_VARIABLE'
,p_attribute_10=>'TASK_OUTCOME'
,p_diagram=>'{"position":{"x":850,"y":1310},"z":16}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686074052769827910)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Confirm Appointment'
,p_static_id=>'New_8'
,p_display_sequence=>100
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'CONFIRM_APPOINTMENT'
,p_diagram=>'{"position":{"x":1100,"y":1430},"z":18}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074110603827911)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074284023827912)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_name=>'p_doctor_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074372129827913)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_name=>'p_request_date'
,p_direction=>'IN'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074483080827914)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_name=>'p_doctor_email'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'&DOC_EMAIL.'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074558130827915)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_name=>'p_patient_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074653617827916)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_name=>'p_patient_email'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>60
,p_value_type=>'ITEM'
,p_value=>'PATIENT_EMAIL'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686074766244827917)
,p_workflow_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_name=>'p_workflow_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>70
,p_value_type=>'STATIC'
,p_value=>'&APEX$WORKFLOW_ID.'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Check Appointment Fee'
,p_static_id=>'New_9'
,p_display_sequence=>110
,p_activity_type=>'NATIVE_INVOKE_WF'
,p_attribute_01=>wwv_flow_imp.id(27411506506079833630)
,p_attribute_03=>'ID'
,p_attribute_05=>'Y'
,p_attribute_06=>'RESUME'
,p_diagram=>'{"position":{"x":790,"y":1460},"z":21}'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(27686076059252827930)
,p_workflow_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_variable_id=>wwv_flow_imp.id(27411507284753833637)
,p_value_type=>'ITEM'
,p_value=>'ID'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(27686076144185827931)
,p_workflow_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_variable_id=>wwv_flow_imp.id(27411507372376833638)
,p_value_type=>'STATIC'
,p_value=>'&DNO.'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(27686076235749827932)
,p_workflow_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_variable_id=>wwv_flow_imp.id(27411507422076833639)
,p_value_type=>'ITEM'
,p_value=>'PATIENT_EMAIL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(27686076397293827933)
,p_workflow_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_variable_id=>wwv_flow_imp.id(27411507502720833640)
,p_value_type=>'ITEM'
,p_value=>'PATIENT_NAME'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(27686076426111827934)
,p_workflow_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_variable_id=>wwv_flow_imp.id(27411507699069833641)
,p_value_type=>'ITEM'
,p_value=>'REQUEST_DATE'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(27686076575570827935)
,p_workflow_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_workflow_variable_id=>wwv_flow_imp.id(27411507766278833642)
,p_value_type=>'ITEM'
,p_value=>'TASK_STATUS'
,p_ignore_output=>false
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686076744074827937)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Approved ?'
,p_static_id=>'New_10'
,p_display_sequence=>120
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'TASK_STATUS'
,p_attribute_14=>'APPROVED'
,p_diagram=>'{"position":{"x":1050,"y":1580},"z":23}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686076997374827939)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Update Appointment'
,p_static_id=>'New_11'
,p_display_sequence=>130
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'EBA_DEMO_WF_DOC_APT'
,p_attribute_04=>'UPDATE_APPOINTMENT'
,p_diagram=>'{"position":{"x":820,"y":1700},"z":25}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686077017482827940)
,p_workflow_activity_id=>wwv_flow_imp.id(27686076997374827939)
,p_name=>'p_booking_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686077123842827941)
,p_workflow_activity_id=>wwv_flow_imp.id(27686076997374827939)
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'PAID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27686077239507827942)
,p_workflow_activity_id=>wwv_flow_imp.id(27686076997374827939)
,p_name=>'p_fee'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>30
,p_value_type=>'ITEM'
,p_value=>'FEES'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686077556127827945)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Wait Before Requesting Feedback'
,p_static_id=>'New_12'
,p_display_sequence=>140
,p_activity_type=>'NATIVE_WORKFLOW_WAIT'
,p_attribute_01=>'SQL_QUERY'
,p_attribute_02=>'select schedule from appointment where booking_id = :ID;'
,p_diagram=>'{"position":{"x":1230,"y":1740},"z":28}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27686077822132827948)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Request For Feedback'
,p_static_id=>'New_13'
,p_display_sequence=>150
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(27501093911835381575)
,p_attribute_05=>'ID'
,p_due_on_type=>'INTERVAL'
,p_due_on_value=>'PT24H '
,p_diagram=>'{"position":{"x":850,"y":1850},"z":31}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(27686077917122827949)
,p_workflow_activity_id=>wwv_flow_imp.id(27686077822132827948)
,p_task_def_param_id=>wwv_flow_imp.id(27501175660216389018)
,p_value_type=>'ITEM'
,p_value=>'ID'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27860800010770855101)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'End Without Feedback'
,p_static_id=>'New_14'
,p_display_sequence=>160
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":930,"y":2020},"z":33}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(27860800238872855103)
,p_workflow_version_id=>wwv_flow_imp.id(27411508296935833647)
,p_name=>'Send Thankyou To Patient'
,p_static_id=>'New_15'
,p_display_sequence=>170
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&PATIENT_EMAIL.'
,p_attribute_06=>'Thankyou'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear &PATIENT_NAME. ,',
'',
'Thank you for your feedback regarding your recent appointment with Dr. &DNAME.',
'We hope to keep serving you in the future!',
'',
'Regards,',
'Management Team,',
'ABC Hospital Pvt Ltd.'))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":1130,"y":2000},"z":35}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491101362042455301)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27411508300439833648)
,p_to_activity_id=>wwv_flow_imp.id(27491105324452455341)
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"54.545%","dy":"16.667%","rotate":true}},"vertices":[],"z":4,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491105978633455347)
,p_name=>'New_1'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491105324452455341)
,p_to_activity_id=>wwv_flow_imp.id(27491105866478455346)
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"4.55%","dy":"50%","rotate":true}},"vertices":[],"z":8,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491106001060455348)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27491105866478455346)
,p_to_activity_id=>wwv_flow_imp.id(27491106159175455349)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{},"vertices":[],"z":9,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686073281175827902)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27491105866478455346)
,p_to_activity_id=>wwv_flow_imp.id(27686073108292827901)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":13,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27491106207263455350)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27491106159175455349)
,p_to_activity_id=>wwv_flow_imp.id(27411508520784833650)
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"83.333%","dy":"50%","rotate":true}},"vertices":[],"z":11,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686073730537827907)
,p_name=>'new'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27686073108292827901)
,p_to_activity_id=>wwv_flow_imp.id(27686073893776827908)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"72.729%","dy":"0.019%","rotate":true}},"vertices":[],"z":15,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686073912418827909)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27686073893776827908)
,p_to_activity_id=>wwv_flow_imp.id(27491106159175455349)
,p_condition_type=>'EQUALS'
,p_condition_expr1=>'REJECTED'
,p_diagram=>'{"source":{"name":"top","args":{"dx":0,"dy":10}},"target":{"name":"topLeft","args":{"dx":"63.636%","dy":"83.333%","rotate":true}},"vertices":[],"z":17,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686074839335827918)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27686073893776827908)
,p_to_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_condition_type=>'EQUALS'
,p_condition_expr1=>'APPROVED'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":19,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686076647132827936)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27686074052769827910)
,p_to_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"95.455%","dy":"66.667%","rotate":true}},"vertices":[{"x":1050,"y":1480}],"z":22,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686076873942827938)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27686075973001827929)
,p_to_activity_id=>wwv_flow_imp.id(27686076744074827937)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"27.276%","dy":"0.019%","rotate":true}},"vertices":[],"z":24,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686077350958827943)
,p_name=>'New'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27686076744074827937)
,p_to_activity_id=>wwv_flow_imp.id(27686076997374827939)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"72.727%","dy":"0%","rotate":true}},"vertices":[],"z":26,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27860800418929855105)
,p_name=>'New_1'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(27686076744074827937)
,p_to_activity_id=>wwv_flow_imp.id(27491106159175455349)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{},"vertices":[{"x":1040,"y":1290},{"x":1010,"y":1250}],"z":37,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686077673262827946)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27686076997374827939)
,p_to_activity_id=>wwv_flow_imp.id(27686077556127827945)
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"16.667%","dy":"33.333%","rotate":true}},"vertices":[],"z":29,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686077760430827947)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27686077556127827945)
,p_to_activity_id=>wwv_flow_imp.id(27686077822132827948)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"77.273%","dy":"0%","rotate":true}},"vertices":[],"z":30,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27686078030396827950)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27686077822132827948)
,p_to_activity_id=>wwv_flow_imp.id(27860800238872855103)
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"31.818%","dy":"0%","rotate":true}},"vertices":[{"x":1180,"y":1980}],"z":32,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27860800128003855102)
,p_name=>'No Feedback'
,p_transition_type=>'TIMEOUT'
,p_from_activity_id=>wwv_flow_imp.id(27686077822132827948)
,p_to_activity_id=>wwv_flow_imp.id(27860800010770855101)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":34,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(27860800322137855104)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(27860800238872855103)
,p_to_activity_id=>wwv_flow_imp.id(27686073638304827906)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":36,"label":{"distance":0.5,"offset":0}}'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(27487633313362078478)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15617587605739
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27487645112390078498)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28243639564215779434)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Patient Appointments & Feedbacks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(27487645112390078498)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28250853107824253835)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Monitor Appointment Workflows'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-workflow'
,p_parent_list_item_id=>wwv_flow_imp.id(27487645112390078498)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27957641695325533849)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'New Appointment'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28199539893540852320)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Patient Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-tasks'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28199591601711857231)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Doctor Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-tasks'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(27487634541203078480)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15617032160460
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27487646650636078501)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27487647106556078502)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(27487646650636078501)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27487647540755078502)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(27487646650636078501)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000261494441545847ED96D14B53511CC7BF67DB75B35C861BDA14D7966ECED1029BAB9C418DFE8108A2081F821E0C7A2988028910';
wwv_flow_imp.g_varchar2_table(2) := '8AA81E841E22821E7CE8218AF04FC8186A4B16666DE55D39D962A62E2D8773DBDD3CE1B9150C7A38BB3822B8F7E5702EBFFBFB7EEEF7FC7EBF7BC999F3CF29FEE1455400D501D581FFDB8152469E205AA3E249A27C0ED035F474B733E1F1C91888A64E11';
wwv_flow_imp.g_varchar2_table(3) := '842200495AC77E4F33CC0D3B98E8D2F22AA6DECD4327182A8650004091CB2E618FB5A94C2C9EF80AFDB6F27B3C34150314F26B18B8740C9D8EC6B2FC517101B7EF8D42A8A9E5D1FD1353318041C8E2FEDDD3C8174A78383CCA12F59F3D0A41D0E0C295A7';
wwv_flow_imp.g_varchar2_table(4) := '2814AB0CE0711971B13F80D442062FC7661840E0700776351A31F4E00522E2AFCEE0F4A16207027E0BFA4EFA58FAE0AB59683404BD07EC6C3FFC2484606881535A0EAB18C0EF35E35C9FFFAF228F1E8F6122FCAD7A00F95C06F6D6EDB831709C89FCC8E4';
wwv_flow_imp.g_varchar2_table(5) := 'D85A6F94DBEFDAAD11CC25B3D01BF80713B7039BBDEF7698B0B2B28A3B832798E087D8225B373B6283525C1D1C81A9A11ED1581A82C0578CDC0075B5127C5DEDF8924AE3486F1B7ABA6D6500E39373084E7C468BC58C50584436AFE73A0A6E008B99C0E5';
wwv_flow_imp.g_varchar2_table(6) := 'B482528AD76FA218BA790A9FE2F279B7D94CB87CFD197C5D2E1042F0514C603ECDF7ABC90DD06C26E8705A99E0D4FB591CF4DAB0B7B385EDA7234984DF26B1CF2D77C38C9840AA1A004E472BA623712C2E174137D671C8BB9B39120A2741B406349974F0';
wwv_flow_imp.g_varchar2_table(7) := 'B8ED1063C9AD07D091EFA0D0422A1AA0D10AEC4D8B92DC05BF3F42A592841A5D0E042514E9CEADAD01AE6C0A82B86B40416EAE475400D501D5819FEFD208F044440A710000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(27487635681952078484)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000132B49444154785EED9D79785445BAC6DFEA4E279D7D610DBBB2C8269B402004483097011C88A4014DC230E092051F14AF8C5E9F';
wwv_flow_imp.g_varchar2_table(2) := '99E1E233C3E8CC5C371CC832A808249140C23E2A2A9B2C065004C34074C20E094B36924E3ABD9CBA56C746965ECF399D7443D5BF5D5FD5576FFDFA9C3AB57C45C0135740820244822D37E50A8003C42190A4000748927CDC9803C41990A4000748927CDC';
wwv_flow_imp.g_varchar2_table(3) := '9803C41990A4000748927CDC9803C41990A4000748927CDC9803C41990A4000748927CDC9803C41990A4000748927CDCD823019AF6D4E6603F755360805115682234084A45A0C924040282FAFEE832854EA954686112B44A4AEA1B7C0CDA269D9F76CB07';
wwv_flow_imp.g_varchar2_table(4) := '09759ED6FE56068892A4D4C287144A44514AA2008C04300880CAD384F2107F0C008E13A018841E124C28CECFD1940284B6967F2D0AD0CC0505EDFC8CCAD1028505961100425BABF1F748BDB5000E139062810AC546A3B07FFDFBB3AA5AAA6D2D081025C9';
wwv_flow_imp.g_varchar2_table(5) := '691BA711425FA640744B35F03EAB673F017923376BFAF6967A2AB91DA0D4D46C9556D16E2E25741128FADC671DDA4ACD25A5A0F4EF41F4FAEA9C9C34F6DA735B722B4073D20B3A1BA1DC0CE011B7B580176C4F8123069569CAFAF7665D73974C6E032825';
wwv_flow_imp.g_varchar2_table(6) := 'ADA0BF40943B08D0D95DCEF3729D52A08C2A6942FEF219279CCAED6226B70094945A144314741B1F20BBD81BEECB5E4B0949C8CF4CDC237715B203C49E3C94280F030890DB595E9E24051AA8928E94FB49242B40A9A95B03EA1586C300ED2FA9A9DCD83D';
wwv_flow_imp.g_varchar2_table(7) := '0A509C08A2BE237372A636C85581AC0025A517AD22A0BF95CB395E8EFC0A50908FF2B312E7CA55B26C0025A71732A73E94CB315E8E5B15989797A55925470DB20034F3C5027F55A3F2128070399CE265B85D81AA20C1B7AB1CAF3259004A492B4AA78466';
wwv_flow_imp.g_varchar2_table(8) := 'BABDD9BC02D914209464E4662766492D50068028494EDF7812A00F497586DBB79C020438999B953840EA9287648092D28A2611423F69B9A6F39AE452805232393F3BF15329E549062839BD9039F02B294E70DB5653E0B3BC2CCD2429B54B0268EEDC0FD5';
wwv_flow_imp.g_varchar2_table(9) := '7A75881680428A13DCB6D514100CFEA6A0F56FCF6A14EB81248066A7AF8F15A0D825B6726ED7FA0A2820C4ADCD9AB95BAC2792004A4ADFF03F04E475B19573BBD6578082BE9A9F35E30DB19E480228397DC326802488AD9CDB79820274735ED68CC7C57A';
wwv_flow_imp.g_varchar2_table(10) := '220120F6F95EC4F699B4115B39B7F30805AEE465693A8AF544344033E717745409CA72B115733BCF51C04749DAAE5E9E5829C623D100253DB761003191123195721BCF52802AE940B1DB3C44039432BF70041570C8B3A4E0DE885180283032778586EDE1';
wwv_flow_imp.g_varchar2_table(11) := '723989062829A3603CA14AD19F7F2E7BCA0DDCA60025A6D8FCCC59A2762B8A07882F61B8AD435BBA604215F1B9D9D3BF1453AF688092D38A124168A1984AB98D672920654D4C3C40E94529005DEB5952706F44294089262F3BB1488CAD0480EEFD1D888D';
wwv_flow_imp.g_varchar2_table(12) := 'DAE613C2FE811162B4F5221B323B2F2B31578CC3A2014ACAD8309B50B2464CA5DE60535F77157A5D73300C5F75308282DB7B83DB227DE4008914CEBA59FD8D0AE89BB4E8D8A1AD3943C595EBF0F50B4250480759EBF19CC23840B2F5455D6D390CFA0644';
wwv_flow_imp.g_varchar2_table(13) := '4484635CF46073B95F1D3C86CACA6AA87C03111C2A7AD65F361FE52F8803248BA6DABAAB68D2D521242418B1638741E5A334976B309AB067DF51D4D6DE809F3A1881F7DCEB8C032419205D630D1AEA2B111C1C84D898A1F0F5BD3DC6955E6FC0CEBDDF40';
wwv_flow_imp.g_varchar2_table(14) := 'AB6D4040505BA8FDEFA5B0461C204900B1F10E1BF70404A811376E38D47EBE56CBD335E9B173EF113436E8101CDA092A5F7F49F57A8E310748745F50C1849AAAF30004C4C78D4648B07D286A6E68B1730F5B0254202CBC2B88A2F935E7DD890324BAFF2C';
wwv_flow_imp.g_varchar2_table(15) := '83E6FE7D7BA2DF43DD9D2AE7C4A97338555A065FBF400485DC0B836A0E90531D7F67A626DD0D68EBAE9907CDF1B1C3418873D36294527CB9EB306AEBEACD9FF6EC13DFBB1307C8E5FEFBE5D545111F37CAE1ABEBCE0A6A6F68F1E5EE6280281116D10D84';
wwv_flow_imp.g_varchar2_table(16) := '78F3C1140E90CB0069EBAFA3A9B11603FAF542DF3EDD5CB66706274BCFE1DFA7CAA00E084340A037EFECE500B90480C9A8476DF505F8F9F9216AC4C32022C32C0B14283E741CEC133FAC4D7728143E2EF9E1399939402EF5455D6D050C7A761E52BEE4DD';
wwv_flow_imp.g_varchar2_table(17) := 'EB651C20A74930990CA8AD3A8F077A44624C943CF120F67D5D8AB3E7CABDF829C401721A20CBD867E1FCA9181FDDCB693B7B1977EDFF11CB32B7C13F20DC4BB77E70809C02817D7ED7549E855249B026673ED4BEF28C59744D46FC266D050481989F42DE';
wwv_flow_imp.g_varchar2_table(18) := '9738404EF59965DE67DC9887F16246BC5336CE66FABFE53BB0FFE009F3C4229B60F4AEC40172AABF2C83E7DFFF6E26860FEE62D3A64167C0F61D253877BE39C07B8F6EED3065E24004A86D5F2274E8DBF378FDAD422F5DADE700390488BDBEAA2BCF2028';
wwv_flow_imp.g_varchar2_table(19) := '408D35D9E936F39FBF5483D7DE284455F58DDBF244848760C9AB33D0B593ED55F894D44C34EA0C086FD3C3A13F9E958103E4B03F2C2BEE53268EC0B37362ACE63709025EFAC33A5CBA7C0D8FFD2A0A3D1F6C0F06DEE933D7B0FDB36274EDDC1E7FFFD32C';
wwv_flow_imp.g_varchar2_table(20) := '2815D6679DB3567D85CFBE388290F02EF0F1F173E893E764E00039EC8B86FAEBD035D6E2F525B3D1B7573BABF9BF3F5981C54BF3312E6610460CEB795B9EC3DF9661EFBEE358BA3819FDFB58DFDA7AA2F40AFEF0A73CF3AC349B9DF69EC40172D85775B5';
wwv_flow_imp.g_varchar2_table(21) := '9761D03762E3DA176DE6DDFEF909ACFC6807340931E8D1FD76C80493016F2FDF86B4A72661D2847E56CBD01B4C7862DE322FDC84CF0172085075E5598404ABB16A79AACDBCFB8A4FE3CDF736E3B14951E8DBA7D36DF94E955E36BFC67EF7C274448FB03D';
wwv_flow_imp.g_varchar2_table(22) := 'C6999D9A099D9E2234DCF620DDA1B32D9E8103645772816D1AAB3C6B9E7D7EEBCF4FDACC7BF57A3DD216FE133DBA4742336D1460D9DD4181C2CD0771F6C215AC5C968A36E1B6EF9159F04A2E2E5EBE8688B60FE097025A9C08172BE400D915CC686CC28D';
wwv_flow_imp.g_varchar2_table(23) := 'EA8B1836A437FEB8E8D776F3AEDBF40D3EDEB017E161C1E8DA956D16A3B870E10AAA6BEA30FB893868A60EB16BFFDADFB6E0BBE3655EB6ACC101B2DBA96CECC3C640F17143F1DCD3B1F69F569462DB672558F3F12E188D26735E1F950FE63C1987C7260E';
wwv_flow_imp.g_varchar2_table(24) := '80C2C1A6B377737662F7DE635EF625C601B20B85BEA91EF537AE60C6F4B148D10C77FAF17EEE6235944A05DAB70D82AFCAB9BDCFABD71563E3D6035EB6E99E0364170ACB1246EABC4998FCA8F52F28A7A9729071DB8E12BCBFFA732FDBEACA01720AA067';
wwv_flow_imp.g_varchar2_table(25) := 'E74EC494F80172B162B51CCB54003B7CC80E217A47E20039F50AD33C1E83D93346B8B54FD7AC3F84A2CDFBF913C891CADE149D839D7567C77726C40EC18267E21C354DD2EF9641B4771D3CE44F20273FE37BE18F8BA64A02C491B1E533DEBBD6C3384076';
wwv_flow_imp.g_varchar2_table(26) := 'FB957D81B12FB1EEDD3AE29DBF24396240D2EFE689C44B57BD6C39830364B3D32DF0B00C41C101589399E6342025A72ACC7907F675FEF469F2332BD0A86B32DB79CF467B0E9055282C81A2BA74EE08411070B9FC2A56BE97667729E2D6829E5DF821D8CE';
wwv_flow_imp.g_varchar2_table(27) := '8DECB7E63905DDB52A2D529FCF41A7C80E5028082E5EAAF092C0541CA03B3A98A2AEF68AF9E84E64647B8C1E3100E72E5CC537474FE0858CA9881DE3DC66FA679EFF006CE2F99FEF3EE514405FECFD01CB73B663F8B0FEE8D6A5030E1E3E81F2F2AB3F9F';
wwv_flow_imp.g_varchar2_table(28) := 'A1675B409C3B3AED5465B266E200DD26E7CD10751DDB217AE440F39977169A65FBA7FB303E661016A63FEA94FCAE0264D9173D75F258737C21B619EDC0A1EF5151C142E4797220060ED04D20740D3568D056A27DDB36881EFDF06DBB07BFD87D0426A301';
wwv_flow_imp.g_varchar2_table(29) := 'ABB3D3409C781AB802904029529ECD84BFBF1A13C63D72D31F9349B81922CF73379A7180CC1D663EB25C7311016A35E2278CBC19A2CED29B25A7CEA2B4F434DE5CFA5B3CD8DD71E85E5700FAE1F475BCB2780DFAF5ED89FE77848931188DD8B1B3183A9D';
wwv_flow_imp.g_varchar2_table(30) := '1EA1E15DA154DADE9CEFD4A351F64C1C20F3B68BDAAA8B3099F4183FF611B48DB87BF37B65751D76EF3D8C39491330FDB1E6009AF6922B006DD87214B905BB11171B8588D0BB8FF55CBD568DAF0E1C85D2C70FA1E19D3D6C3CC40182C1D088BA9ACB8808';
wwv_flow_imp.g_varchar2_table(31) := '0F43DCB86156B9A0A0D8FAAF7D68DF2E14CBFE3ADBE1D60C6701629BF1E72FFA08D5D55A4C9B32D62693EC15CA0275868475868F4AED88DF16FC9D0304CB8A7B9FDE3DF070FF076D8A7FE2E4199CFAE10C163DFF38C68C64BB066D276701DA73B00CEF2C';
wwv_flow_imp.g_varchar2_table(32) := 'DF62F5F5756BE9C74ACAF09FB273E628AF9EB5D0CA014283B60ABA866A448F1A8AC80EE136A9D01B8CF864C70174681FE6F029E40C406CF09CF1127BFAD463F2C4E8BBC65DB73A72B9A212078B8F79E0197A0E9039541D7B0A3D1A1785B010FB478B4B7F';
wwv_flow_imp.g_varchar2_table(33) := 'BC80927FFF8897174EC7E8E1B637C83B03D0BEE23378F3BD4D1834F021F4EEC9C636B6130BD0F9E5AE62F8F9872230A8390ABE67240E904B00B14F6BF6148A8C6C83B7963E61F393DE1140ECE9B3E095B5A8AAAAC7A4FF1A65F3C0A105929B00A9431018';
wwv_flow_imp.g_varchar2_table(34) := '6CFD6C5AEB00C501720920D64965672FE3BB63A7F0EA7F6B307298F510778E003A78E42CFEF6CE463C32A43F7A7477BC5EC601BAE5EFE169FB815C7985B166B05962F6140A0CF4C7DBAFA72028E0EEE0E2F600AA6FD0E3F99757A3496FC4A4F8514E4578';
wwv_flow_imp.g_varchar2_table(35) := 'E500DD4300194D267CB5FF18AAAA6B3064502F2C7EF9D777BDCA6C01C45E5DAFFD752B8E9794A14D441862A207C347E978D33D1F03DD2300E9F446EC3BF09D794E8685E7A554B07AE6CB1640059BBE45FE863D376D43434310133DC461C02A0ED03D0050';
wwv_flow_imp.g_varchar2_table(36) := '5D7D03F61D3C86868646F35C0C5B9F62CB1F543062E9E214F4EBFDCBC572D600627B84580006A2F041685817F3BA1BBBE12720C01FE3C60C456080ED0942FE0AF37280AE57D5E2C0C163606B53EC1A4B16D39025CBC955B6E1ECEDBFFC066D7F3EBAFCF4';
wwv_flow_imp.g_varchar2_table(37) := '82F7CD639B95CB9AB773B0A3CF2FFD7E2DEAB58DB71D1C6C6CA806BB1E53A55221267A2822C2AC47AEE74F202F06884DE27D7DE8B879F06CED7A020B04212181888F1B628E46C6CEC3B3A449180D16B5ECF39DDFA1AE4E6B357C8BE5F022DB4816356210';
wwv_flow_imp.g_varchar2_table(38) := '3A75BC3BF03807C84B01FAF1F4251CFFBED43C66090E8DB4B90EC59E220C247BC95E2456A341673EFDC1C6544306F545CF076E8FF0C15F615E089065FD49A1F4311F3776B49582753EDB16C2165ED97E6A96D8138BC1C76C1DDD89C1E250B3455D4130A2';
wwv_flow_imp.g_varchar2_table(39) := '77CFEE1834F0974055FC09E44500B1EB078E1C2D4579C55573B839F6E471F56EAF9ACA73E616BB1ABA978593A9AF2D378FAD3A45B6C7F0A17DA152F98003E40500DDF9FA317F6905B5736AA2EF4E5BB10059262AB5F5D76E5E1D7E6BD97C2D0C80A7CD44';
wwv_flow_imp.g_varchar2_table(40) := 'B34F697D53F33DEFEC3641F6CA62FB90552AF1D752B2A8F62C4959F864A165F47A2D58883CB6E98D253F758887DD31D60A6B61C969458920B4D0EE8893FFE81D0A50A2C9CB4E2C12E3ACE873264969459308A19F88A994DB7896029492C9F9D9899F8AF1';
wwv_flow_imp.g_varchar2_table(41) := '4A3C401905E30955EE165329B7F12C052831C5E667CEDA23C62BD100A5CC2F1C4105B0EB8B79F272058802237357680E8B69866880929EDB3080984889984AB98D672940957460FEF21927C478251AA0E48CC207415126A6526EE3610A10F4CCCBD49C16';
wwv_flow_imp.g_varchar2_table(42) := 'E395688066CE2FE8A81294E5622AE5369EA58041618A5CBF6256732812179368805253B355F58AB6EC4A1B4F3AE0E462F3797600BA20E17A484E4E1A9BA87239890688D5949C5EC8BEC2C6BB5C2B37F02405F6E46569EC07CFB6E3AD548096FC34BDFABF';
wwv_flow_imp.g_varchar2_table(43) := '9EA406F7C565055ECBCBD2B07E14952401343B7D7DAC00C52E513573238F504001216E6DD64CD1F37992009A3BF743B55E1DC236D0F0719047E0E0B2133A5FDD8DF055ABE6E95CB6FCD9401240E6715046E1C7A07842AC03DCAE151520589797A9B17D7D';
wwv_flow_imp.g_varchar2_table(44) := '9113AE49062825A37014A568DEFBC9935729400846E7666ABE96E2B4648058E52919855FFF744E2F4A8A23DCB665152004C5B9999A51526B9505A0E4F4A227019A2FD5196EDF920A90A4BCACC48FA5D6280B40B14B76F974AAA83A03C09BEE7994AA9DD7';
wwv_flow_imp.g_varchar2_table(45) := 'DA53E05279C7881EBB97C419A536421680CC83E9B4A20410BA49AA43DCDEFD0A504AA7E567CFD82A474DB201648628BDE81D80BE208763BC0C772940DECDCB4A5C2857E9B202F4F3FAD87E00EEBD5349AED6DF67E55090DDC1C2B58962D7BDACC9252B40';
wwv_flow_imp.g_varchar2_table(46) := 'AC8227D337F65050E12808C2EEB3FEF1F4E65EA1469FC1F92B139A0FBBC9946407A819A20D4315206C93B6EDF87132358017E39402E7149424ACCD4E3CE6546E1732B9052056FF9CE78ADA184D947D26C6BBE00FCF2ABF023B7D9464D6EAE58995F217ED';
wwv_flow_imp.g_varchar2_table(47) := 'E6DB3F66CE2C50AADA2AFE014AD2DDE13C2FD3BE021478D358697A65FDFA59CDF797BB21B9ED0974ABAF296945E994D077D9155A6E68032FF26E051A09C5BCDC6CCD3A778BD32200995F69E9059D0D54F13421E419005DDDDDB0FBB4FC8B3F4DE6AEF481';
wwv_flow_imp.g_varchar2_table(48) := '69E5EAAC59975A42831603C8D218F65AF36DA39C46017675E0440FBB34A2253497BB0E1308FE2500D9A6EBA64FDDF9BAB2E6788B0374AB1333530B4255443918A04329510C25108601A41F001FB955BE47CA3302F42408394A80A302C851FF26E5B71F7C';
wwv_flow_imp.g_varchar2_table(49) := '9060090AD0E2CD6C55806CB576DA539B83FDD44D81014655A089D0202815812693100808F7C9C635854EA954686112B44A4AEA1B7C0CDA269D9F764B2B8262ABAF3C12A016FF1BF10A452BC001122D1D37640A708038079214E00049928F1B7380380392';
wwv_flow_imp.g_varchar2_table(50) := '14E00049928F1B738038039214E00049928F1B738038039214E00049928F1B738038039214E00049928F1B738038039214E00049928F1BFF3FF07A3F092E33100F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(27487635913018078485)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE9000016D949444154785EED5D797854D5F97E49663233996C93B06F01026187B0CA2A200202F2ABD5567EB5288B42A98A020F6AD58A5A';
wwv_flow_imp.g_varchar2_table(2) := 'AD7B0B6A7143C40597D68756C4CAA6AC1204122590B00742088B907D2699496692F439E726939B30997BEFCC64E37CE71F25F39DE57BBFEFBD67FF4E8BBB16AEAF0025424050045A100104B53CA9CD1120029023088D00114068F393F24400F201A11120';
wwv_flow_imp.g_varchar2_table(3) := '02086D7E529E08403E2034024400A1CD4FCA1301C8078446800820B4F949792200F980D008100184363F294F04201F101A012280D0E627E58900E4034223400410DAFCA43C11807C4068048800429B9F942702900F088D00114068F393F24400F201A111';
wwv_flow_imp.g_varchar2_table(4) := '2002086D7E529E08403E2034024400A1CD4FCA1301C8078446800820B4F949792200F980D008100184363F294F04201F101A012280D0E627E58900E4034223400410DAFCA43C11807C4068048800429B9F942702900F088D00114068F393F24400F201A1';
wwv_flow_imp.g_varchar2_table(5) := '112002086D7E529E08403E2034024400A1CD4FCA1301C8078446800820B4F949792200F980D008100184363F294F04201F101A012280D0E627E58900E4034223400410DAFCA43C11A0917CA0BCDC8522EB155EBB39BC358282748DD412B1AB25023482FD';
wwv_flow_imp.g_varchar2_table(6) := 'CBCB9C28CCBF0846029698F34744B54750B0BE115A237695448006B67F1977FE0BA8282FAB51738BA060444475403091A0412D42046840B85DAE1258F32FA2A2A25C1AFA8485F2FF16D98AF97F5BB4084278547BE87486066C95D85511011AC8FE2EA703';
wwv_flow_imp.g_varchar2_table(7) := 'D6824BD5CE6F3661FCD821BCF69D7B92515464271234902DE4D510011A0074A7D3CEBFFC55C96C0EC5F8B183613484F03F394A4AB173CF4F282A92F50491EDA0D31B1BA07562574104A867FBB3096F415E96FBCB1F1E1E86716306C1105273C25B52EAC4';
wwv_flow_imp.g_varchar2_table(8) := '8EDDAC27A82641A4A5234D8CEBD93E44807A04988DF50BF2CEA3BC4C5AED31998C98387ED835CE5FD504D6137CBF33090E8783FF2938380411960E7C6E40A97E102002D40FAE002AF898DF592A8DEDF53A1D264E180E73A8F7614DA1B5183B7727C1E992';
wwv_flow_imp.g_varchar2_table(9) := '48A30F31213CB27DBDB552F4828900F5E4016C93ABC4619526B64141183F6608A22DE1AA6ACBC9B362D70FC9A82897568B8CA6488486B554959784B4214004D086972A6987BD00C5B66CB7ECC81B06A27DDB185579AB842E5ECEC1BEFD29EE3CE6F05630';
wwv_flow_imp.g_varchar2_table(10) := '1823349541C2CA0810019431D224C1D6FA0BF3B2DC7906F4EB891E711D349551257CFCF479A4A59D92FED9A20522A33A225827AD1C510A0C024480C0E0C84BA9A8A8A89CF43AF9BFDBB56B8D51C3FBF955C3BE0369B878E9175E069B14474677646CF0AB';
wwv_flow_imp.g_varchar2_table(11) := '4CCA5C8D00112080DEC0863D6CF8C392C968C0A48923A0D705FB55039B0C6FDB7E0076BBB432640CB520D41CED579994990810701FA8BDD935E1C661AA27BD4A8DC9CE2DC0AE3DC96EB1084B473A2EA1049ACADFA9075009943731BEDE9F7BDE7DBAB34F';
wwv_flow_imp.g_varchar2_table(12) := 'AF38F4EE191B8092AB8B483B7616C74F9EE57F60A746232D9DD0A2050D85FC059908E02F82EC309B6CC993EDF44E9A302CE0CEC9E6175BBEDFEFDE2936982261A6A551BFAD4704F013C2DAAB3E811CFAD46E5A766E2176ED4972FF99F502B42AE49F0189';
wwv_flow_imp.g_varchar2_table(13) := '00FEE1C72FB6B89CD26E6FD7D80E189CD0D3CF12BD673F78E80432CF5DE042FA1033C223DBD66B7DD77BE144003F2C5C5A52045BE165C919753ADC326924426A1D72F3A3788F591DA52E6CDD96E83E2AC12ED1D0A951DF512602F88C5D050A72B3505656';
wwv_flow_imp.g_varchar2_table(14) := 'CA4B189CD0075D631BE66B9C9E710987528EF17AD9E519B62A44C937048800BEE186127B218A6C577DCC1DD86C61116D1062080B6CA182944604F0C1D06C45263FF7DC35F77A7D282A2059828275888A0EECB26B401AD60C0A2102F860A4A6F4F5AF6A3E';
wwv_flow_imp.g_varchar2_table(15) := 'F5023E18921D2AB96BE1FA0ADFB28A9B2B3F3713ECA6174BCB1EBA0DA387776D14307ED87F067F7B73833417D09B7868154ADA10200268C38B5F70B11648F77BC3C3CD58BBEA3E040735CE8DADB2F272CC7BF07D141616F1F6D011098DC6A41E403B60D6';
wwv_flow_imp.g_varchar2_table(16) := '82CB70964A0EF7BBDF8CC39DB70DD65E4800737CFEEF64FCEBDFBB79890663388F3247493D02D403A8C78A0F7BD8F08725760E67ED5B0B1119DEB8911B72F28A31FFA1F7F8516C7667C0121D0B16648B923A048800EA70E252C545397014E7F3FF1F3BAA';
wwv_flow_imp.g_varchar2_table(17) := '3F96DE7FB386DCF527FAEA3FB620F1C7A3BC8250730C8CA151F557D975563211408341F373CEB94F7CBEF0F4EFD1BB47D3186EA41EBF8CA79EFF9C6B421B631A0C4A7300F560C90FBD45474760CD1BF7AACF2C93CCCDB763E3E61464665D45FAD94BFC97';
wwv_flow_imp.g_varchar2_table(18) := 'B8AEED10DBA9356E9D3200D151269FCA9DF3C07B282890E62696982E340C528922F5002A81B217E7C15E94CBA5A74E1A8A05B3C7AACC592D9694928595AB36A2A858BADD553BB190298B1F9881A103B51F6D58B56627BEDBF1332F922ED0AB370D114025';
wwv_flow_imp.g_varchar2_table(19) := '562CA2338BEFC9D213CB7E8361099D54E694C4FEBB2D0DEF7FB455559E0573A760EAC43EAA64AB84F62565E09595FFE1FF0C31981116D130E7923435B2090A13015418858532CFCBC9E09241C141F8FCFD0711A257BFD29279211F4B9FFC18652E29247A';
wwv_flow_imp.g_varchar2_table(20) := '5CD70E1836A4073AB49326AB172EE5E360F249A49F95F617747A1D5E7F6936DAB7511F06A5D8E1C4ACF9FF80B41814044BCB2E74795E856D89002A406201AEAA5E731934B03B963F3243452E49846D562D7DF20B649E97223B240CE88E89E3FB7BCCFFDD';
wwv_flow_imp.g_varchar2_table(21) := '8E234839729AFFD6BD5B7BBCF4CC6F356DB23DF5C257483D2A5D9B64D1E45854394ADE112002A8F09022EB5594380AB9E47DB32763FAA4BE2A724922C74E5DC113CF7ECAFF9F8DF117DE7B0B5FAFF7982A2AF0CE9ACDEE39C22BCFDD8D1E5DD54784DBB0';
wwv_flow_imp.g_varchar2_table(22) := 'E9083EFCF43B5EB429D40213458F50B41311401122F0175DAAC6FFAF3E770FBA77551FE56DD7BE74AC5CF535AF6560FF38DC3C6180D71ABFDB71182947D2B98CD67346C74F5FC5E3CFACE379691EA0C2B0B40CAA0EA4DCEC332CEA1517FEFC83453086A8';
wwv_flow_imp.g_varchar2_table(23) := '7FD06EE3E6547CB06E1BCF3B7AE4008C1816E7B5D2FD49A7F04362AA4FBD8DADB814772F58C5F3B2C81151D19DD52928B014F5000AC6971F7F68191385D5AFCFD5E42EC9295978FED52F7DEA01963F762706F5D7165671EE83AB919F6FE3F545B7EA4613';
wwv_flow_imp.g_varchar2_table(24) := '61056B1101140092DFFB1D9CD0034F2DBB551301D8599DFB16BDCBF398CD262C9C37C5EB1CE0ED359B515CB94FB066D54244476A9BC83EFBCAD73874581A42D1E950655311011430926F80FD7AC648DC33738432AAB5245E58B10907938F57F602DD71F3';
wwv_flow_imp.g_varchar2_table(25) := '84BA5681AAC7FF4307F7C4934BA769AEEB83CF12B1F1DBFD12E1C25BF313A294EA468008A0E01D36EB159456C6F95FB4F056DC34A687667F62BDC003CBD6A2A444BA401FD7B53D860D8997ED0314E0E04F27907E46DA07301842F0D6DFE6F9742C62DBCE';
wwv_flow_imp.g_varchar2_table(26) := '1378EBFD6F7939EC501C3B1C478908E0B30F48AFBC48EF763DF3C44C0CECE3DBADABCDDB8FE1DD0F36AB6AC71FEF9D8AC9137AA992AD2D249F73D0FD006508A90750C048BE04FAF25FEE467C37F5EBF2B58B56731668C9033330C487B3405575C9F71D68';
wwv_flow_imp.g_varchar2_table(27) := '299408A08C8082047BE1B1CC55C2A5DE78651E3AB58FF4AB4C761AF49B2D8791917905A7D32F42A70F4697CE6DD0AD4B1B4C9BD4DFA7618FBC4119E7F3B0E4F10FF99FE89EB0B2A9A80750C088853FA97AE571F59B7F404B8BF4BA7B534DBF64DBB070F1';
wwv_flow_imp.g_varchar2_table(28) := '6ADEBC609D01ECA9554A7523400450F08EBCECB3EE377ED7AD7E006653D37EA2A8D05682D90BDFE25A0505E9101543F182BC999808A04080DCABD29A3A4BEB3F598CA0261E93BFD459869973DFE0ED954E85364EC896E6D2EB10019408203B06F1E5470F';
wwv_flow_imp.g_varchar2_table(29) := '4317DC382150D43A94D355863BE748046087EEA25BB2DD604A75214004D03004FAF8DDFB116E3634696FB2DA4A704FE510887A006553110194089093E18E01FADEEB0BD02AC6AC8C6A234A5CC9B6E10F9593609A03281B8208A080913C0CE2EB2FCF45E7';
wwv_flow_imp.g_varchar2_table(30) := '0E4D3BE44846561E96FC495A06959E55D5767553D965AE2F092280823DE52FC0BCFCEC2CC4C7B56AD21E20DF086337C2D8CD304A7523400450F00EF6020C3B11CAD2E34BEFC0F0C14DFB8C7DCDCBF1616051A32911017CF601F959A079B32661C62DFEBD';
wwv_flow_imp.g_varchar2_table(31) := 'FCEE73435466FCEADBC3F8E8B3EFB934BD21A60C1AF5005E3092DF05666253270FC3827BC628A3DA88126FAFDD8DADDF573FAA6D3046F03841943C234004A8C333E46FFF5689688D08D1184EF7CCCB1B9072E44C8DAA89043404D2E48BB5BFFC5599DBB4';
wwv_flow_imp.g_varchar2_table(32) := 'B6E09DBFCFD154565DC2B90576BCF6E626FEF3B2455335DFFCAAABDCF98BD7223B5B0AE02B4FF4B036F500AA1CB7B6F377EED80E9959520C4F96FEB36E89AA729484E491E2B4865AF156F6AF67AD70FFDCA9633B9C97B59D48702D7234049261527BD8D3';
wwv_flow_imp.g_varchar2_table(33) := '39B6038626C463F7DEC3C8CECEE1922B5E9C832E9D2C4AFEADF8FBFA8D3F63DD3F7772B95933C7E38E198314F32809A467E460D99F3FE662AD5AC560ECA801483A74D2FDB036FB3B5D92A9892211A0128FDACEDF25B6038654BEFA9E76FC1C8E9F900EC5';
wwv_flow_imp.g_varchar2_table(34) := 'CD9F3319D36E561F18AB2EA7AD0F026CDC928A0F3E9142B0F4EE15873E3DA593A0C9874E20A3F27579220111E01A9FACEDFC71DD3A23A17F77B7DC2F57F2F0C33E29F2F2C81BFAE0D14553943EC68ABFD707015E5CB9090792A4CBF763470F46EB96D5BB';
wwv_flow_imp.g_varchar2_table(35) := 'D64402CF2611BE07A83DE68F8F8B45FF7E358357B9CACAB0E19B5D1CC15093019FAEBE5FD1C19504024D80F28A0ACC9AFF36EC8E121E79F1FFA68FBFE6E4EAA1D474A4A79F73378DE604823F93EAB0E7A3D8268DED59EA15DF157D7B7B3E3FFFFDAE64E4';
wwv_flow_imp.g_varchar2_table(36) := 'E71770B9409C090A3401E46780A22D519870A3E7C7FB8EA4A6E3A48C04A16131309A9AF6F926A58F893FBF0BDB03B0480F6C97B72AF5ECD90DFD7AB190E29E937C1E30FBF71371DB54EF313E958C126802ACFFE610D67DB18357DBB77777F48AAFFBC8C6';
wwv_flow_imp.g_varchar2_table(37) := '91A36771F29414459A259123490B4900F6A222BBEBCBE2FEB314CB577B7A7AF5D942AB1DDBB6EFE3325DBBB4C3DF9FFF7F251FF7FA7BA00970FFB28F71E9B2D49B4D9B3C1A2693F77B0B493F9FC0B9CC0B5C9EBD2A19C55E976CE2B7DDFC02BC8ECC4212';
wwv_flow_imp.g_varchar2_table(38) := '401EED2D323202378F1FAA0ADBADDB0FC06A95E26EBEB3723EDAB40C5395CF93502009C01EE078F8B1B5BC9AA8A8484C1C374455BBB66D3F8842AB95CB8AFABAA4900490BFF6387AC420B46DA36E5DFFC4A9F3483D7A8A3B8CBF8F64079200F2C7B207F4';
wwv_flow_imp.g_varchar2_table(39) := 'EB891E71EA02EA5EBC9C837DFB53B83EA25E9E118E002CCE3F0B76C592C968C0B429A3557D2D99100B5ABB695B22978FB64460F51BF37CBE241F2802B01768163CBC16B979D2031ED36F1903A3417DE48A6FB726C26E97DE3E133198AE7004903F761DDF';
wwv_flow_imp.g_varchar2_table(40) := 'A30BFAF7D176697CFBEE64E4E549AB418F2DB91D2386F81676245004483C9881575F971EC78B8E8EC284B19E577FEA62794ADA199C3E2DBD7F660CB52054B05765842380FC86D74DE386C312A56D1C9F91F90B927F4EE30ED3BB572C5EF8F3EDAA7B10B9';
wwv_flow_imp.g_varchar2_table(41) := '60A008F0C8F27FE1F419A9471B36A41F3A77D4F67877766E2176ED49E2F945BC41261C01E4777C7F75EBB59B454ADECC5690FEBB3511250E295CE28A97E6A04B477573884013E0D4996C3CBAFC136938673262EAA4919A57729C4E17BEFE76372F43C43B';
wwv_flow_imp.g_varchar2_table(42) := 'C4C21140FEDCD11DBFBA49C9DF3DFE7E2AFD020EA79EE0BF8DBF71201E5EA0BD9C40F4002BDEFE0EBBF71EE1ED4818D08B875DD79AD81CE2AB8DD2A13C11C3A888470059A4375F09C0824F6DDAB2174E970B41412DB0EAB57BD1B6B5B68728FC25C085CB';
wwv_flow_imp.g_varchar2_table(43) := '8558F4C81AFE745948889EAFFD07FB18B46BFD86ED6EDE44B7F2FE8699568235757922808F164A3B9E81E327A49B57C387F6C2E38BA76A2AC95F02C86F7EF5E9DD1DBDBDECFC2A358C08A084D075F4BB3CD6A7AF3D0083837DFD376FDB87D2522747E7AF';
wwv_flow_imp.g_varchar2_table(44) := 'CBEF429F78F51118FC21C0E1A397F0F40B5FF07AF57A3DA64D19055DB0FA97EB6B9B9308701D39B8922A812200ABE7ECB9CBF8E9D0515E253B1EF1DA733355EF0BF84A800A5460C9139FE35CA6F4F2FCD0C17D10DBA9AD92DA5E7F2702F8055FF3CA1C48';
wwv_flow_imp.g_varchar2_table(45) := '0230CDE5FB028BEF9F8171A3AAEF117843C657026CDF730A6FBEFB0D2F5ACBB107AF6DA13940F372627F5A1B6802E415D8B07DE701DEA4B03013DE7A6D2EC2C39403E8FA4280FC4207163DFA216C363BAF6FE2F8E1888AD4B68FE1093BEA01FCF1A86696';
wwv_flow_imp.g_varchar2_table(46) := '37D00460EA271D3A817395570E870E8EC7934BA72BA2E20B01E4135FF9954DC5CA14048800FE22D88CF2D70701D28E9DC5F193D5E7EB1F5C301D136F8CF73EEED678297ECB8E6378674DF52B93DE2EEF68350711402B62CD583E900460BBC2492935A32E';
wwv_flow_imp.g_varchar2_table(47) := '30680C212178E395D968EDE5B8B4961EE0D2152B1E7AEC43B89CAE1AC8F3A81503E335EFFED6361F11A0193BB4D6A6078A006C1974DF81345CBD5A7DA592EDA4565494F326B155A1979EFE2D42F49E9727D512C051EAC2A3CBFF89F3595778B9F23AD8BF';
wwv_flow_imp.g_varchar2_table(48) := '59F89391C3FB42AFD36985C22D4F04F019BAE697311004B0DB4BB06BEFCF282A921ED0E65F7D63043F49C99E552D2F97BED4A347F4C5B207277B04490D01D892E78B2B36E360B214E9819DD967AF3E1617E5A2C4211D7F66C96C0EC5B8D183146F81D565';
wwv_flow_imp.g_varchar2_table(49) := '2D2240F3F3639F5BEC2F0172F3ACD8FBE321F706186B4868584B184DD2FBC12E578974DF809D510070F7EF6EC2EDD3075ED35E3504F872C34FF8EC4B291A054BF2F3FA0E7B018A6DD9EEDFD8718831A306C1E2C3AA1011C067776A7E19FD2140D6C5AB38';
wwv_flow_imp.g_varchar2_table(50) := '90940A36F667890D4758FC7D7D48CDB783E5CEC9AED93EFDA79918D8B7E641352502B057E5FFFAEA976E803D456F6017FB6D85BFB8875DEC4EEF0DC3FAA3433B6DAFD913019A9F1FFBDC625F0970EC64268E1E3BEDAE970D47C223DB2158E7F9F695FC61';
wwv_flow_imp.g_varchar2_table(51) := '0D968945941B353C0E5111465E465D04606BFD7BF7A7E3FD8FB6567FDD0D66844578DEED653D8EADE0B27BD8C532294585A80D1E11C067776A7E19B512807DED0F241F43D685CB6E65D90BECCCF98382EA3E7FC326C30579E7DDAFCCFB8A5450301BF777';
wwv_flow_imp.g_varchar2_table(52) := 'F6BAD2535E5EC643BC94B9A43B0A2C6959212202F86A9D66984F0B01D841B7C403A9C8C9C9736BCA5E5D61C31E3521449863B29E80DD43F625E9F4265E9737A25595CB88CAEA62C3A2AA141363C1E811FD1557888800BE58A799E6514B005BB1033F24B2';
wwv_flow_imp.g_varchar2_table(53) := '951EE9D8014BC6D0281E3E446B6211E89CA50EFE85AE5A21AAAB0C36B4623D8C3EC4E853C4363631667390AAC45688C68C4A4058A834F4F29488005A2DDA8CE5D51080DD934DFC31054EA774D49905DB3487B5E44B9D814AF6A25CB0F8442C99422D3005';
wwv_flow_imp.g_varchar2_table(54) := 'F0323A5B2265314FAB123B323D666402A22D9E2FED10010265D566508E12014E9FBD8894C3D2BABBE4FB6CA5A72DBF301EC8549F0460ED7496DAF990A86A638EFD2D61602FC475B9F6DA24112090966DE26579224081B5183939F938999E89225BF5189A';
wwv_flow_imp.g_varchar2_table(55) := '4D4059DCCCE0607DC0B5AA6F02B00697B94A612DBC5463221E166646F7B8CE68191389C87069F996081070F336DD02E504F0D64A36010D67935D2F2B3DFE68D9100460ED63F14FAD1A26E27427D81FAB3683BC79D9676B0C0B6A37997DF5D94437C4E0FF';
wwv_flow_imp.g_varchar2_table(56) := '397B6F70388AF3C18274B1D4107139D944DC5E94E755778A0AD10C1CD8DF2616D9B251225B2561E5E97406E8F446B0AF7E88C1EC6F15AAF2F3E1496578766F1B6AAA0A5329545EE684C351C887466565A5D7EC5188F8608670512154FA0A890982001140';
wwv_flow_imp.g_varchar2_table(57) := '1043939A9E1120029067088D00114068F393F24400F201A1112002086D7E529E08403E2034024400A1CD4FCA1301C8078446800820B4F949792200F980D008100184363F294F04201F101A012280D0E627E58900E4034223400410DAFCA43C11807C4068';
wwv_flow_imp.g_varchar2_table(58) := '048800429B9F942702900F088D00114068F393F24400F201A1112002086D7E529E08403E2034024400A1CD4FCA1301C8078446800820B4F949792200F980D008100184363F294F04201F101A012280D0E627E58900E4034223400410DAFCA43C11807C40';
wwv_flow_imp.g_varchar2_table(59) := '68048800429B9F942702900F088D00114068F393F24400F201A1112002086D7E529E08403E2034024400A1CD4FCA1301C8078446800820B4F949792200F980D008100184363F294F04201F101A012280D0E627E58900E4034223400410DAFCA4FCFF00B4';
wwv_flow_imp.g_varchar2_table(60) := '8ECCC80CF02D0C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(27487636206246078486)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D077814D5DAC7FF33BBD97452E8A144A4088234A902D7A022585049A801BCD8C202F6EF5EEBBDD75CBB57';
wwv_flow_imp.g_varchar2_table(2) := 'EFC54A42EC0AA126A85CB00BA84817109022166AE8E96DCBCC77CF0CD96C20213BBB3BB333BBEF791E9F079339E7BCEFEF9CF9E7CC29EFE140890810819025C085ACE7E4381120022001A04E4004429800094008373EB94E044800A80F10811026400210';
wwv_flow_imp.g_varchar2_table(3) := 'C28D4FAE13011200EA034420840990008470E393EB44800480FA0011086102240021DCF8E43A112001A03E4004429800094008373EB94E044800A80F10811026400210C28D4FAE13011200EA034420840990008470E393EB44800480FA00110861022400';
wwv_flow_imp.g_varchar2_table(4) := '21DCF8E43A112001A03E4004429800094008373EB94E044800A80F10811026400210C28D4FAE13011200EA034420840990008470E393EB44800480FA00110861022400E734FE3DF7AC0C2F2DAD8E2C8FB2479860090BE379B3D36E337310C2049E379B9C';
wwv_flow_imp.g_varchar2_table(5) := '9C5930F1C44D872F0DEF1444A74974F082E010C1DB4D6116875D101C4ED8ECD1156155B1B1E195AFBD767DB50E4D0F984921D99127642CEB68E2C45E1C8F5EA228F4828864705C0B0049016B09AA584B0247218A27C0E100C7F1DB4501DBC18BDB72B3D2';
wwv_flow_imp.g_varchar2_table(6) := '7ED3D2083DD4151202903E73596F08C26800D780C3E51011AD07F86483CE0870288788CDE0F0152F70CBE7CD4DDDAE330BFD6E4E500AC0B8718B2D6189FC35E0B81B01B0FFDAF99D1C1518FC0438FC0E91FB84139DCB6D67C4EF962C196F0B36A7834A00';
wwv_flow_imp.g_varchar2_table(7) := 'A6CC5CDCC9299A6E87885B39A04DB03516F913380222708403DEE779E7BBF3E68CDF1F384BFC5BB3E10560DCCCC53116811F2F72DC6D1031D4BF78A83422703E0111DC771CC477ECBC73E99239E3CB8CCCC8D00230D99A374614F114387437722390ED86';
wwv_flow_imp.g_varchar2_table(8) := '25B005101FCFCD1EFBB9513D30A4004CB12E4911C03F07609051C193DD4145603D0FE1D179D9E3561BCD2B4309001BEE8709A637014C341A68B237F809702237CF6672CC30D26781610460E2CC2557F002FF21808B83BF2B91870626F02B387E426ED698';
wwv_flow_imp.g_varchar2_table(9) := '2D46F0C11002903E3DFF567022FBCB6F310254B231E409D8207277E5CE4DFD40EF24742E0022976ECD7F1AC0637A0749F61181F30888783A776EDADFF54C46B702206DE669C62F80C8A5EA1920D946042E4880C307F653CEBBF4BA894897029092B9CA9C';
wwv_flow_imp.g_varchar2_table(10) := '74ECF43240DAC9478908189A80087C52D02A316D75E67087DE1CD1A5004CB6E6E78A1027E90D16D94304BC25C05608E6CF4D9DEA6D7EB5F2E94E00D2A7E73D0F0E0FABE530954B04024640C40BB973D31E0958FDF554AC2B01983C23EF7E51C46C3D0122';
wwv_flow_imp.g_varchar2_table(11) := '5B88803F09701C1E989F95F6B23FCBF4A52CDD08C0646BDE1011F81600EF8B43949708E89C805314B8940539A9DFEBC14E5D088034E3DFD4F433808E7A80423610019509ECB79F7676D7C3CA802E0480BEFB55EE6E54BCFE08E8643E20E00230D59ADFC3';
wwv_flow_imp.g_varchar2_table(12) := '09711B0093FE5A892C2202AA11707282A9CFFC9C5B76A856830705075C00D2AD4B3F02B89B3DB0951E2102414640FC38377BEC2D81742AA00270F680CFDA4002A0BA894020098802372C901382011580C9D6BCB5227045201B80EA26020126B026373B2D';
wwv_flow_imp.g_varchar2_table(13) := '255036044C0026CD587A0B2772CB02E538D54B04F4424014B9EB16CC4DFD2C10F6044C00D2AD792C7ACA9581709AEA24023A2310B051404004207D565E329CF81D4040EAD759E39339444034399C1D3F7C6B3C7B27344D017901D3AD7999009ED0D453AA';
wwv_flow_imp.g_varchar2_table(14) := '8C08E89BC03F73B3D3D87BA1690A800048413E98D2256BEA29554604F44C80C3EFB959A91D014ED4D24CCD0560F28CBC41A288755A3A497511012310E0380C9E9F95B65E4B5B351700DAF6AB65F3525D0623A0F96780E60230C99AB78D037A19AC61C85C';
wwv_flow_imp.g_varchar2_table(15) := '22A03A018EC386F959699ADE75A1A9004CBCFBE324DEE1384CB3FFAAF725AAC0980444BBE04C589233BE582BF3351580746BDEB4FF4DFEBDAB9573540F11301E016E526E76EA42ADECD65400265BF3B24560BA56CE513D44C068043860EEFCEC34AB5676';
wwv_flow_imp.g_varchar2_table(16) := '6B2B0033F2D68B22066AE51CD543048C4640EB7900CD0420333393DF77EC32769572A4D11A85EC25021A12A8E8D26A476C6666A6A0459D9A0940FACC65BD21085BB5708AEA20024626200A62B7053963F768E183660230797ABE55E4C42C2D9CA23A8880';
wwv_flow_imp.g_varchar2_table(17) := 'B109683711A89D00D004A0B1FB2459AF1D010DE3056A2600E9D63C76DE79A47614A92622605402DA850AD34C006807A0513B23D9AD350111D8BE203BADB716F56A2600E9D6BC63005A6AE114D541040C4EE0786E765A2B2D7CD04400CE2E015603306BE1';
wwv_flow_imp.g_varchar2_table(18) := '14D541040C4EC0DEA5D58E082D96023511809B6EFF3836C6E2283178A390F944403302A5C2A9E8E539D32BD4AE50130198366D59BC2D422854DB192A9F08040B014B159FF0DE7B638AD4F6471301986ACD6FE184785C6D67A87C22102C044CE05A7E989D';
wwv_flow_imp.g_varchar2_table(19) := '7A426D7F341180291979AD051E47D57686CA2702C142801790342F27AD406D7F341180893317B4E305CB41B59DA1F28940B01010785BFB8573261D52DB1F6D04C0BAEC221E82E6218FD58647E51301B50808E03B2CCC1EF3875AE5D794AB89004CC858D6';
wwv_flow_imp.g_varchar2_table(20) := 'D1C40BFBD57686CA2702C142C029F09D16E58CF9556D7F341180A933F3BB3905F167B59DA1F295111045F9C429C7F1CA32D2D3AA13709AB84B16BD91BA4FED8A3411800933F3BB994800D46E4B45E5DBAACB505E7A52CA131DDB1C96F01845F9E9617509';
wwv_flow_imp.g_varchar2_table(21) := '3879EED245735277AB5B8B4657739100A8DD8CCACA672F7F59E909403C7B0705C72126B6252CE1D1CA0AA2A755234002A01ADAD02E587AF94BEAD9922189400B1A09E8A47B9000E8A42182C98CEAAA5294B3BFFC6753744C94F4AFF2B2DA1DA7D1B12D10';
wwv_flow_imp.g_varchar2_table(22) := '1E111B4C6E1BD217120043369B7E8DAEAE2A717DF34BDFFDD191481976B964F0EAEF7F2411D059D39100E8AC418C6C4E756509CACBE4093FF9E58F42CAB0BE8808B748FF5F556DC39AEFB7A2ACACBCF699D8E6088F686264B70D6D3B0980A19B4F3FC6DB';
wwv_flow_imp.g_varchar2_table(23) := '6D15282DAEDD511A1B1B832B87F641B825AC8E91553607D67CB7A58E08C4C6B5469845FE4CA0A42D0112006D7907656D0E47354A8B8EA266BD9FBDFC2943FBC072CECB5FE33C1381EFD66E454949A9F423B63FA0497C1B98CCF248819276044800B4631D';
wwv_flow_imp.g_varchar2_table(24) := '9435098203C58587210A4EC9BFA8A8480CBFB23F222C178EC9C244E09B551B5059C5E2B7003C6F469384B6E079535072D2AB5324007A6D1903D8258A224A0A0FC3E9B449D69ACD665C9DD21F31D19EDDC952525A8155DF6E86C3E190F29BCCE1D24880E3';
wwv_flow_imp.g_varchar2_table(25) := '34D9376600C2EA9B4802A03EE320AD414469F131B06F7F79180F0C1B72399A378D53E4EFF1138558BB7EAB6BAF5098251AB1719A84A9536467B03E4C0210AC2DABB25F1565A75055597BBB74DF3EDDD1A1BD77B1587FFBA3005BB7D7EE468D884A405474';
wwv_flow_imp.g_varchar2_table(26) := 'A2CA1E50F18C000900F503C504ECB64A9416D7C65DE990DC067D7B5FA2B81CF70C9BB6EDC5C103475C3F8A8D4F425898679F123E551CE299490042BC0328759F4DF615151E724DFAC5C444E39A94FE30997C3BE9E7740AF872F546D7462136291897D88E';
wwv_flow_imp.g_varchar2_table(27) := '4E102A6D2085CF9300280416EA8FB3B57ED7773FCF63C45583101B1DE1172CC525E5F87ACD2688827C7C989D1C8C69E2DD67855F0C0A8142480042A091FDE5E2B93BFDFAF4EE868B935BFBAB78A99C73E7039800D01162BF22AE531809807A6C83AA64C1';
wwv_flow_imp.g_varchar2_table(28) := '6997D7FBCF06F768DDAA39AE1878992A3EFEB071270A0AE4C3446C9310FB14609F0494FC4F8004C0FF4C83B2C492A22370D8AB24DFC2CC668C1A31B8C19D7EBE02B0D9ECF8ECCB75B09FDD1F106689446C5C92AFC552FE7A08900050B76894C0B967FBD5';
wwv_flow_imp.g_varchar2_table(29) := '18FA9F6BC4B99F02745EA0D166F2EA011200AFB08552261145670E4270CABBF5E2E3E370F595F2F15E359308115FADDAEC3A2F603259A44F014AFE254002E05F9E41571ADBECC336FDD4A4AB870F447C136D427A151695E19B351B5D75531011FF772F12';
wwv_flow_imp.g_varchar2_table(30) := '00FF330D9A12D95EFFA233075C6BFEFED8F0A314CEE6AD7B71E0A0BC41883799119FD89E4D0D2A2D869E6F80000900758D0609545614A2B2FC8CEBF7F1F14D549BF86BC8089BCD81A2A2DA2DC75131CD1011A9ECBC013571C3044800A877D44B40DAF177';
wwv_flow_imp.g_varchar2_table(31) := 'E6A06BD94F2F9838DE84F8C4643A31E8A7062101F013C8602BA6A2FC0CAA2AF479D37A544C534444C6071BF280F843021010ECFAAFB4F0F41FAE6FFF7E7D2F41D7CEFEDDF1A794C09E5F8E62F38FF20536F25C40B2D222E8F97A08900050B7388F807B58';
wwv_flow_imp.g_varchar2_table(32) := '6F76CEFFADD7AC488C0FECC9BCD38515B8EBDEB9AEB801B42FC03F1D9704C03F1C83AA1416E587C5F96369D0806E78F8DE51BAF0EFB9973FC5C6CD7B245B5810512602947C234002E01BBFA0CBCD5E7C260035E9C9C727E1B26EFA88D0B3FDE7A3C87C76';
wwv_flow_imp.g_varchar2_table(33) := '91CB36B624C89BEA461D0EBA0651D921120095011BAD7876979FAD4A8ED6DBBA5553BCF1D254703A597767BB03AD0FBE8713278A24FBD872205B16A4E43D011200EFD9055D4E76D2AFF0D4EF2EBFAC778CC2C8E1DD74E5E7CAAF76E1CDF7BE906C622705';
wwv_flow_imp.g_varchar2_table(34) := '139A75D0957D46338604C0682DA6A2BDEE877E2222C2F1EE9C8C46C37B7B62CEE10279234FDBD6BE6FE0A9A8B2E3B6597361ABB64B65B25382ECB42025EF08900078C72D2873B90FFF5386F5C27DD3AFF2DACFCF57EDC6CACFB7E2E091BAD78327B76D81';
wwv_flow_imp.g_varchar2_table(35) := 'EBAEED8B91C3BB7A5DF64B6F7C89B5EB76D26780D7046B339200F80162B014C186FF35013F1EBCFB660C1B74B162D7AA6D4ECC797B15BE5DBBE38279FF34A42766DD99024B98F28B4056AFDD8F57B2964BE5B34940F97C00256F08900078432D08F3B060';
wwv_flow_imp.g_varchar2_table(36) := '1F2CE8474DFA207B266263C2157BFA70E612ECDB5FBB8A70A102BA746E87179E18ABB88EA2922ADC3633CB958F5603142374652001F09E5D50E574DFFADBA5535BBC90394EB17F8B3FFA110B96AE71E5EBDAA53DFAF6E984D62DE4DB7F0B4E94E0C7ADFB';
wwv_flow_imp.g_varchar2_table(37) := 'B167DF41D73393270CC7D8D1BD15D7F57F7F5F84DF7E974393D30121C5F84800BC47169C3959BC3FE7D9CD3FE9E35330EEA63E8A1CFDE350211E7CEC7DB023C42C0D1E7829AE1858FF5D013F6CD883751BE48B40389EC7CBCFFD19EDDB28DBDBBF207F0B';
wwv_flow_imp.g_varchar2_table(38) := '16E77F2B95419B821435559D876904E03DBBA0C9C94EFEB1BDFF35E9C5A76E45A70E4D15F937E79D35F8F29B1FA53CEDDAB5C0F85B86347C6C5F04167FF43D0E1D3A293D7FDD887EC8F8F33045F5EDD97F128F66CE73E5496CDE51517E7A58264002403D';
wwv_flow_imp.g_varchar2_table(39) := '01EE37FDB08B39977E701F78851774BA7FFB5F3F7200BA5DD2E6826477EF3D82959FCBD17EBA754DC6B37F4B55D4120EA780F1D35E758D38E212DAD1F5E28A08920078812B38B3545516A1A2ECB4E45C878B5AE33F4F4F54ECE8C43BDE4075B57C4BF0D4';
wwv_flow_imp.g_varchar2_table(40) := '4957A34573F9BBBFA174E264093E5CF0B5F4EBA8A808CCCF99A1B8CE7B1F998F4387E5F0E1747F80627C3402F00E59F0E52A2F3D01760290A594613D71DFF4AB153B39EBA10F71F4A81C3B70CAC4E168D9E2C2DFF4274E16E3C305DF48CFB7496A86D7FF';
wwv_flow_imp.g_varchar2_table(41) := '3555719DB3B3BE722D37D285A28AF1910078872CF872B94F00DE3AE92A8CB9A1976227DD5FC621832FC3A0FE9D2E58C6FA4DFBB076DD2EE9992B87F6C4FD56E5A293B77C1BE62D5A259541D78A2B6E321200EF90055FAE33A77E43CD41FBC7FF3216FD7A';
wwv_flow_imp.g_varchar2_table(42) := '2B0FBFBD6CE54FF820571ED287475870FBD46B111559FF49BD8A4A1BDEFEE00BD776DEDBA78CC0E8513D1483DDB8F5209EFB779E948F828428C64702E01DB2E0CAE574D8505C78C8E554F6ECBBD0B2798C62270B8B2B71F75FDF4345857C7B5052EB66B8';
wwv_flow_imp.g_varchar2_table(43) := 'F98681888AB2D429ABA2A21A1FFD77030A8EC9730E31319178E3A5DBD0C48B4D4705274A31F3C1B75CE52734BB9862052A6C395A0550082CD81E6737FDB21B7F6B52FEBCFBBD3EFEFBC3A63FF0E22BCBEA20BAACC7C568D14C3E0474FC641176EEAA3D6D';
wwv_flow_imp.g_varchar2_table(44) := 'C87EF6B7BF8EC3E5BDDA7A85D5667762C26DAFBAF2D24A80728C2400CA9905550EF71380E1E1162C7C7B964FFEBDB7603D3E5EB1CEA332C68D198AF4B4FE1E3DDBD04363A6CC76FDAA497C1B98C3FC7355B94F461928330980811A4B0D53ABAB4A505E2A';
wwv_flow_imp.g_varchar2_table(45) := '6FC869D6341E6FBE729BCFD5ECDC730CB3DF5881338525F596D5AC691CEE9B713D7A74F53DD2D01DF7BCEDAA27A6492B58C2B5B9B5C867483A29800440270D112833DCAFFE4A6EDF0A2F3F3BC92FA69457DAB0E3E7021C3E7206070E9D84C96442BB3689';
wwv_flow_imp.g_varchar2_table(46) := '689394889EDD931015E19F505EF73C3C1F87D9916300747598F2A6230150CE2CA872B8DFFE7359F78BF1E4A3371BCABFC79FCEC7CF7B0E4836D3A120E54D4702A09C5950E5703F05C80EF03C74CF4843F9F7ECEC4FB1698B1C2938323A1191510986B23F';
wwv_flow_imp.g_varchar2_table(47) := 'D0C6920004BA05025C7F79D9295457CA21BB465CD517336FBF32C01629ABFED5375761D59A6D52A688A87844452B3BC4A4ACB6E07B9A0420F8DA549147EE0270EDD57D31E3366309C01B6FAFC657ABB64A3E8747C6219AA2042B6A7F120045B882EFE18A';
wwv_flow_imp.g_varchar2_table(48) := 'F2D3A8AA90C36C0FBBE2323C38F31A4339F9D2EB5F60ED7A794B318D0094371D098072664195C37D0EA06FEFCEF8FB5F6E34947F4FBEB81C5BB7EF97E700A212A479004A9E132001F09C55503EC9FEFAB351004BDE9CCB0F3414F73804746BB0F2D62001';
wwv_flow_imp.g_varchar2_table(49) := '50CE2CA872B86F04BA28B935663FA33C16402081B8EF03A09800CA5B82044039B3A0CAE17E16A0458B78CCFD8FEF3B01B504E4BE13902E09514E9E044039B3A0CAE17E19286FE291F7FE7D86F14F10458C9BF62A04A720D9DC24A12DCC66E5A1CC0DE3B0';
wwv_flow_imp.g_varchar2_table(50) := '0A869200A800D5484596951C073B105493725ECD40F34463ECA73F76A21433DC8E035BC263A4D060943C274002E039AB207B5284FCF297D7F14B4FD78137067CEBCE2378F2F9C5751E6387816411E01ACB4EBFA7A8C0A1DB07CEFDCB5F4362C61DD7E15A';
wwv_flow_imp.g_varchar2_table(51) := '1FEEEDAB8FE8B69DF2051EBD7B24F915B8FB4DC1EE05D348C073CC3402F09C55D03C79EECB6F369BE1703824FF6EBE6130A64D1AE4375FBFDFF03BFEFDDA4752790FDD3F0683FB5DE4B7B2DF9AF703567CB6412ACFDD07F6FF24029E612601F08C53D03C';
wwv_flow_imp.g_varchar2_table(52) := '555672ACCEB0BF5DBB24344D8CC3B6EDF24D3D3D2EED80A71EBBC56FFEBE356F2D567C26C7FFBF61D440DC39E50ABF95FDE89379AE6BC6FAF4EE8653A78B71E8903CDA2011F00C330980679C82E02911A5C5C761B7D57EF3B76DD30A03FA7543494905BE';
wwv_flow_imp.g_varchar2_table(53) := '5A55F397D484056FDF0DB389F78BCF6F7EF03D567EB1491680910370E7D4217E299785034BBFF37538CFAE008CB86A10626323B171F36E1C3E72CC55871C2D98E6041A824E02E097EEA8F7421A78F92FEF2605D1142162F98AEF603FFB19F0AF27A7A2F3';
wwv_flow_imp.g_varchar2_table(54) := 'C5CDFCE2945A02B0FB971378EC9FF3251BC3CC66DC74C39FA47FB3BB09D76DDC898263729423E9F724020DB62509805FBAB99E0B39FFE56FDDAA39060FE8512782EE0F1B77A1A0E0B8E4C8ED534760F448E561BAEBA3A09600B887214F4A6A89C1FDBBBB';
wwv_flow_imp.g_varchar2_table(55) := 'AA2711F0BC3F920078CECA904F9EFBCDDFB2650B0C19D8FDBCF0D9BFFC7A043FEDDC2BF9387840373C74EF28BFF85B4700460DC09D53FCF309F0CC7F5662F38FB2BDBD7A5E824E1DEADE45C84460ED869D387EBC7624202F11FA1E87D02F607452080980';
wwv_flow_imp.g_varchar2_table(56) := '4E1A420D332ACA4E81C5FCAB492D5B3693FEF29BF8F3BFEFCF149662D5B7F2B77A5C5C34DE7B23C32F26A93102603B00A76664A1A2B25AB2F1AA940148883BFF2E03A72060EDFA1D3879523EECC4121D19AEDBAC24007EE9E6FA2BC4FD900FB3AE59B344';
wwv_flow_imp.g_varchar2_table(57) := '0C1DD413A60B4CEE7DB2F23BD8ED76C999979EBE151D2FF23DBA8E1A23807DBF9EC4C34FC85783878787E3C6510D8F2AD824E1F7EB7FC2A953675C8D44C1436BFB2B0980FEDE5D9F2D1204278ACE1C705DF7151D138DAB53FA23AC9199FDAD3FEDC76FBF';
wwv_flow_imp.g_varchar2_table(58) := '1F94EABFE5C6C1F8F344DFF703A831027827771D96AF5C2FD9D9A963327AF5E878416676BB035FAFD98CF2F20AE9398EE31197D81E3C6FF299B5D10B2001307A0BD663BFFB6DBF6C86FCAAE1031013D5F885196C1D7DCDF75BA41213139AE0ADD76EF7FA';
wwv_flow_imp.g_varchar2_table(59) := '96A01AB3FC3D02602B16B7CEC84159A9FC320FFF537F2426C436DA8AA5E555F866F546D786A7F08826888E6DDE68BE607F800420C85AD8E9B4A3F88CFC579CA59EDDBBA07327CFAFDE5AF1F90FA8AA92EFF77BE61FE9B8B48B6F876BFC3D02D8B5F738FE';
wwv_flow_imp.g_varchar2_table(60) := 'F654AE645F7844386E1CE9F9A4E2DE5F0E61E7CFBFC860380ED2556226FFDC4F60D46E440260D4966BC06EF789BFC8C8088C1A31083CE7F9A69E1DBB7EC3BEFD7F48A55F7F6D7FDC75EB509F08F95B0072DEFF0E9F7EB959B2A96B970EE8DEAD83C7F6B1';
wwv_flow_imp.g_varchar2_table(61) := 'F9804FBF5A87EA2A79F29026040112008FBB8F311E2C2E3C0CA743EEE0DDBB7542D72EED15195E585C260D95598A8A0CC7DBAF672022DCACA80CF787FD290055D50EDC71778E6BF6FFEAE10311DF44D9D1657689C8EEBDBF4A26B2D8012C864028271280';
wwv_flow_imp.g_varchar2_table(62) := '206A7D5170A2F0B4FCD79B254FBF8FCF45F0F59A2D282A92970FEF9A762DAEBFA676938D525CFE1480155FEEC25BEF7F21991017D704D7A4F4536A0E4E9D29C69AEFE4790E96129A75902605433591000451CBDB6D95282DAE3D0C937AD3F0F336FC78E2';
wwv_flow_imp.g_varchar2_table(63) := 'EEE1A327B161D30EE9D1E6CDE391FD9F69E039EFCED7FB4B00D89ABEF581F771EAB41CC27CF0809E486AAD7CBBB2DD29E093FFAE7661888D4F425858A4275882F2191280206A56F7ABBE2DE1168C1EE5DDF73BDB45F7D997EB51515929D179F881540CBA';
wwv_flow_imp.g_varchar2_table(64) := '3CD92B52FE12801F36FD81175F5926D9101D138591570FF47A85E2E315DFBA560342FD46611200AFBAB53E33B96FFEF176885CE3D9AFBF1FC5B69FE43BF73A756C8B17FF39CE2BA7FDB50CF897BF2F02B389A5BEBD2F458764EFB7F47EF1CD469496CA61';
wwv_flow_imp.g_varchar2_table(65) := 'D0427D5310098057DD5A9F99AA2B4B505E26EF7D6F9A1087943F5DEEB5A16CC67CE5176B61B3C93B039F78648257117DFC3102D8BCED109E7969A96487C512861B470DF5EAD3A606C6AA6F7FC49942F95382ED05607B02423591000451CBFB530018963D';
wwv_flow_imp.g_varchar2_table(66) := 'FB0E62D76EF9D69DA4A46678ED85298AE7027C15008753C0ACBFBE8F1327E417B67BF7CEE8DAA99D4FAD4602508B8F04C0A7AEA4AFCCFE16003661F699DB2860C69DD7E3DA944B1439EDAB007CFAF5CFC879F773A94EB6EF9FED6B309B7CDBC24B024002';
wwv_flow_imp.g_varchar2_table(67) := 'A0A8131BE5617F0B00F3FB8F03C7B065DBCF1282989848E4BC720722C33DDF3DE78B009457DA9071EF5BAE75FF7E7DBB23B99D6F3B13991F240024004679A715D9A98600B0BDF75F7CBD1165657228B1EBAEED8F0C05BB037D1180AC77D7E08BAF7F94EA';
wwv_flow_imp.g_varchar2_table(68) := '8D8B8DC135570D50C4A3A18749004800FCD291F456881A02C07C3C71BA18DF9D3D24C4FEFFE97FA4A3BB876704BC15801DBB0BF08F6716BA10A7FCA93F9A7A70E8C7933621012001F0A49F18EE19B5048081F881C5D92B38213169D6340EAFFE6BAA479F';
wwv_flow_imp.g_varchar2_table(69) := '02DE08001BFACFFACBFB282E9697EADAB4698941FDBCDF8D786E439200900018EEE5F6C460F77D00BE2E039E5BDFE18253D8B0F127D78FAF19DE07B3EE4869D42C6FF601BC92F30D567FBBDD55F6A0013DD1C68B5D7FF409D068F3D061A0C61119E709B5';
wwv_flow_imp.g_varchar2_table(70) := '460005C7CF60DDC69F200AF2259C3529F3B109E875E9856FFB513A02D8B2FD309E7E71499D7A4C261306F6BF0CAD5B26FAA5316804402300BF7424BD15A28600ECDD7F183B77EDABD7D5D8D868CC7E760A9A264435884289009C3C5D8E071EFD00E51572';
wwv_flow_imp.g_varchar2_table(71) := '3C827393D2D806340268BC87D23E80C61919E6097F0A003B0FB079FB3E1C3C70C4E53FCF9BA58B37D9D56282205F25D6E1A2243CFFC45858C2EA5F9BF75400AA6C0E3CF48F453874589E67A8AF2EF6F38B92DBA06FAF2EB413D04FBD9204C04F20F5508C';
wwv_flow_imp.g_varchar2_table(72) := 'BF04805D10B26EE3AE3AD1744D260BD8C9391647CF61AF424951AD300C1DDC1DFF37EBDA7A117822006CA9F1B9D99F61D316F9EC014B4DE2DBC01C160116DFB0B4E8289C4E9BEB77CD9B3795A21B8799BDDB10449F00F409A087F7D5EF36F86312B0B2B2';
wwv_flow_imp.g_varchar2_table(73) := '1A6BD66E7505D064468659A2A4BFFCEEE7E62BCBCFA0B2A2D0E5C3D4495721F5865EE7F9E4C924E0924FB6227771ED11DDC8E844444625B8CA1245411A75D86D721C4096626363306C702F4446862BE648024002A0B8D3182183AF02C0EE0658BB7E9BEB';
wwv_flow_imp.g_varchar2_table(74) := '0010F3393C22563A31575F2A2D2EA8F352DE3F7334AEBCA2539D47DD05E0FA910370D73977037EFDED3EBC9EB3C29587894D6C5CEB7AEB730F76CA1E600783860EEE8D84F8C68382BA17480240026084F759B18DBE08C011B6CCB7698774B75E4D8A8A6E';
wwv_flow_imp.g_varchar2_table(75) := '2AC5CD6B28B1BFCC2C0499E0944F0CB27469D76474EFD60EE116398CD886CDBF80DD3AC452E78E6D30B05F67E9DFEC9B7FD7CF07B17B6F6D0053DE1486B884B6178CD0535551848AF2DA8B3ED8DD866C8540C9322109000980E297CB0819BC1500F7537F';
wwv_flow_imp.g_varchar2_table(76) := '357EB221BF25FCFCDB76CEE5E074D850527C142C1C992F89E34DD277BF27517ADD039FD4D4D9E3D2CEB8A4B367A704490048007CE9ABBACDAB741290FDB5DFB8A5EE75DAEC3B9F0DC1D9049CA7894DD4B13B08D9E4A0378905E78C896BADE8A20E5617FB';
wwv_flow_imp.g_varchar2_table(77) := '0461A3909AD43EB90DFA79B04240024002E04D3FD57D1E25230016E8836DEF3D7DBA76228F3799111B97E4D15FE1FA60D8AACBE17054838D0A00F9C5743AECAE2543B6B46732D79C24E461325BA4C8BCECD24E6F12BB0381C540149CF292244B4D9B2662';
wwv_flow_imp.g_varchar2_table(78) := 'C8C01E080B6B3892310900098037FD4DF7793C1D01945554E1FB1FD84CBF1CF38F25130B911DD71A6C28EECF545E7A124C985852E3361E6999B0B8C0150A9DD5131D1D852B87F469708580048004C09F7D5C37657932023876FC0C366ED9E5BA0494191F';
wwv_flow_imp.g_varchar2_table(79) := '6661D766B3653EEF22FF5E08401D01888C43748CF248BE8D01669F32EC13C47D9990AD100CB8BC075AB6A85D4EAC2987048004A0B13E65C8DF3724006CC6BDB2B20AFB7F3D8C83876AC3864B7F95557A296B006A2100F5D555F3B3F6ED92A4A0A6EC9293';
wwv_flow_imp.g_varchar2_table(80) := '708BFCF9F1CD9A2D283C7BEF01C504E42E5D342775B7DA1DDEFF7F5AEAB178C2CCFC6E264194C3D7846072FF04F0C4FDA898A688886C7899CF93321A7B46ED4F8073EB3F7799B031FB480048001AEB2386F97D7DCB63F519CFBEF7D9505CC94CBFB710DC';
wwv_flow_imp.g_varchar2_table(81) := 'EF2AD4EA2E3EB642C084C77DFB7043F67BBADCE9ADFF7ACF476701F4DE420AEC631362EC6660F7A531F7ECD28C7B442C2222E31494EADBA3767BA5B4979FA59AFDFDBE95E879EEAACA22D8AACAA49589FA129BF08C4F68E7F7894FCF2D0CFC932400816F';
wwv_flow_imp.g_varchar2_table(82) := '03BF5AC026C41C8EDAF5780E1CD8F21E5B820B54923609715C40EFE063A717D972213B78549342F94AB01A06C12500B3F2BB989CE2DE407574AA9708188D8053E03B2DCA19235F97AC62D2661230635947132FC8375950220244A0510202F80E0BB3C7D4';
wwv_flow_imp.g_varchar2_table(83) := '5E29DD680EEF1ED04400265A975DC443F8DD3B13291711083D02026F6BBF70CEA4436A7BAE8D00CC5CD08E172CB5E051BFB8000006F249444154C7CBD4F68ACA27020627C00B489A979356A0B61B9A08C0948CBCD6028FBA3B5DD4F68CCA270206266002';
wwv_flow_imp.g_varchar2_table(84) := 'D7F2C3EC54390E9B8A49130198366D59BC2D42A83DDDA2A243543411080602962A3EE1BDF7C6C837AFAA9834118071998B2D61C74CF52FFAAAE81C154D048C4AC0DECA19BE24737C6DC045951CD1440098EDE9D63CB608AE3C509C4A8E53B14440C704AA';
wwv_flow_imp.g_varchar2_table(85) := '73B3D33C0FFCE083235A0A005BD248F6C156CA4A044285C081DCECB48BB470563301983C236FBD2862A0164E511D44C0E004D6E466A7357EBF9B1F9CD44C00D2AD4B3F02B89BFD6033154104829B008745B9596913B570523B01989EF73C383CAC855354';
wwv_flow_imp.g_varchar2_table(86) := '0711303401112FE4CE4D7B440B1FB413006BFE44405CA085535407113036016E526E76EA422D7CD04C0026652CEDCAF19CEA114EB4804675100135098882D86D41CED8DAFBD854AC4C3301C8CCCCE4F71DBB8CDD54C1ABE80F154D048C4EA0A24BAB1DB1';
wwv_flow_imp.g_varchar2_table(87) := '99999975EF7C57C92BCD0480D99F6ECDDFF3BFCF804B54F2858A25028627C071D8303F2B6D90568E682B0033F21642C404AD9CA37A8880D10870C0DCF9D96956ADECD65400264FCFB78A9C98A59573540F11301A014EE466CC9F9B9AAD95DDDA0AC09D79';
wwv_flow_imp.g_varchar2_table(88) := '6D4533D8B1604DEBD50A26D543047C24200A6673DB85AFDFACD9C959CD5FC449D6BC6D1C70FE85F53E92A3EC44C0E8044460FB82ECB4DE5AFAA1B900A4D386202DDB97EA3212010D3700D560D15C00A65897A408E05719A95DC85622A005018EC3E0F959';
wwv_flow_imp.g_varchar2_table(89) := '69EBB5A82B600290913137AC8C6FF60B9D0CD4B299A92E03103878B45562C7D599C36BAF54D6C068CD4700CCA7746B5E26802734F08FAA20024621F0CFDCEC34F65E689A022300B3F292E1048B121C90FA35254C951181C609384C82B3E38739E3350F9C';
wwv_flow_imp.g_varchar2_table(90) := '1BB01730DD9AF71980918DB3A1278840B013103FCECD1E7B4B20BC0C9800D06460209A9BEAD423011EC2F079D9E35607C2B68009C0D9B9001A0504A2D5A94E3D11F83C373B6D54A00C0AA8004C999EDF4BE0C46D81729EEA25028126C009A69EF3736ED9';
wwv_flow_imp.g_varchar2_table(91) := '11283B022A00F22880428505AAF1A9DE401308DCB77F8DE7011780293317771204D3560031816E0EAA9F0868468043B9D3C9F7D2E206E00BF914700160C64D9E9177BF2862B666F0A922221060025A9FFA6BC85D5D08C0B8718B4D61CD4CAB21626880DB';
wwv_flow_imp.g_varchar2_table(92) := '85AA27025A10589B9B9DA68BBEAE0B0160C4E953408B7E4775049C804E86FEBA9903706F9049D6A5691CB8C5143730E0DD940C508780C00163E767A72D53A778E5A5EA66045063FA24EBD2473870CF2977857210017D13E0383C303F2BED653D59A93B01';
wwv_flow_imp.g_varchar2_table(93) := '6070D2A7E7BD030EB7E90914D942047C23C0BD929B9D7ABF6F65F83FB72E05E0EC91E1150046F8DF652A9108684B4004965DD26AC758AD427D2BF14E9702C01CC8C8581E5566AAFE102297AAC4217A9608E88B80F8718C109E9E9333BA425F76C9D6E856';
wwv_flow_imp.g_varchar2_table(94) := '0064F3442E7D7AFE93E0F0373DC2239B88C08508881C9E5B9095FA38C0897A25A5730190B1A54FCFBF159CF80E00935E41925D44C08D800DE06ECFCD4E9DAF772A861000067162C6D2813CCFBF4F370BE9BD4B85BA7DE20E41C4ED0BE78EDD6C04128611';
wwv_flow_imp.g_varchar2_table(95) := '000673DAB477236C114DD8B5C98F0108330260B2316408B07B2F9F8F114E3D9593339DFDDB10C95002504374C25DF95D4C66F12588186D08CA64643013104520CFC43B1F9D3767FC7EA3396A4801A8813CD99A3744045E0030C468E0C95EE31310C1AD16';
wwv_flow_imp.g_varchar2_table(96) := '213CB8307B2C3BCD6AC86468017009C18CBC41A2889900C6030837644B90D14621500D60290764CDCF4E5B6B14A31BB2332804A0C6B94919CB9B719C7D1A3891DDAEDAD1E88D43F6EB8AC06FECE65E41B0BCB32067F4295D59E68331412500EE1CD2AD4B';
wwv_flow_imp.g_varchar2_table(97) := '4772E06E1221CD13B4F38111650D5D028700FC5714B9650BE6A67E198C18825600DC1B4B8A3DC88BA3216204385C0E11D1C1D898E4938F043894FF6F62790B80AFC0F3CB73E78C09FA7895212100E7768BF419791743E07A733C7A89A2D00B2292C1712D';
wwv_flow_imp.g_varchar2_table(98) := '0024F9D88528BB31081C85289EF8DF81B3031CC76F17056C778ADCF64087E70A04BA9014800B81BEE79E95E1A5A5D591E551F608132C61613C6F76DA6D660E4298C0F3669393330B269EB805A2B7365227EF1444A74974F082E010C1DB4D6116875D101C';
wwv_flow_imp.g_varchar2_table(99) := '4ED8ECD1156155B1B1E195AFBD763D9BC4A37496007564EA0A4420840990008470E393EB44800480FA0011086102240021DCF8E43A112001A03E4004429800094008373EB94E044800A80F10811026400210C28D4FAE13011200EA034420840990008470';
wwv_flow_imp.g_varchar2_table(100) := 'E393EB44800480FA0011086102240021DCF8E43A112001A03E4004429800094008373EB94E044800A80F10811026400210C28D4FAE13011200EA034420840990008470E393EB44800480FA0011086102240021DCF8E43A112001A03E4004429800094008';
wwv_flow_imp.g_varchar2_table(101) := '373EB94E044800A80F10811026400210C28D4FAE13011200EA0344208409FC3FA3EEFDE2C088E7A50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(27487636512188078486)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD07942455A13EF0AF734F87E999D999D9D9DDD96573CE39B0B020394A52A2A82826041114258A202082FA';
wwv_flow_imp.g_varchar2_table(2) := 'C4F0FEA24F140414308020396FDE6573CE6976672777F7F4749CFE9FDBEBEAB2767557CF5457E8FAEA9C777CE7507DC3EFD64E7F5D75EB5ECB955F7E210D1E14A000052840010A984AC0C20060AAF166672940010A508002190106005E0814A000052840';
wwv_flow_imp.g_varchar2_table(3) := '01130A30009870D0D9650A50800214A0000300AF010A50800214A080090518004C38E8EC32052840010A50800180D700052840010A50C084020C00261C7476990214A0000528C000C06B800214A00005286042010600130E3ABB4C010A508002146000E0';
wwv_flow_imp.g_varchar2_table(4) := '3540010A5080021430A100038009079D5DA600052840010A3000F01AA000052840010A98508001C08483CE2E53800214A000051800780D50800214A000054C28C00060C24167972940010A5080020C00BC062840010A5080022614600030E1A0B3CB14A0';
wwv_flow_imp.g_varchar2_table(5) := '000528400106005E0314A00005284001130A30009870D0D9650A50800214A0000300AF010A50800214A080090518004C38E8EC32052840010A50800180D700052840010A50C084020C00261C7476990214A0000528C000C06B800214A000052860420106';
wwv_flow_imp.g_varchar2_table(6) := '00130E3ABB4C010A508002146000E03540010A5080021430A100038009079D5DA600052840010A3000F01AA000052840010A98508001C08483CE2E53800214A000051800780D50800214A000054C28C00060C24167972940010A5080020C00BC06284001';
wwv_flow_imp.g_varchar2_table(7) := '0A5080022614600030E1A0B3CB14A0000528400106005E0314A00005284001130A30009870D0D9650A50800214A0000300AF010A50800214A080090518004C38E8EC32052840010A50800180D700052840010A50C084020C00261C7476990214A0000528';
wwv_flow_imp.g_varchar2_table(8) := 'C000C06B800214A00005286042010600130E3ABB4C010A508002146000E03540010A5080021430A100038009079D5DA600052840010A3000F01AA000052840010A98508001C08483CE2E53800214A000051800780D50800214A000054C28C00060C24167';
wwv_flow_imp.g_varchar2_table(9) := '972940010A5080020C00BC062840010A5080022614600030E1A0B3CB14A0000528400106005E0314A00005284001130A30009870D0D9650A50800214A0000300AF010A50800214A080090518004C38E8EC32052840010A50800180D700052840010A50C0';
wwv_flow_imp.g_varchar2_table(10) := '84020C00261C7476990214A0000528C000C06B800214A00005286042010600130E3ABB4C010A508002146000E03540010A5080021430A100038009079D5DA600052840010A3000F01AA000052840010A98508001C08483CE2E53800214A000051800780D';
wwv_flow_imp.g_varchar2_table(11) := '50800214A000054C28C00060C24167972940010A5080020C00BC062840010A5080022614600030E1A0B3CB14A0000528400106005E0314A00005284001130A30009870D0D9650A50800214A0000300AF010A50800214A080090518004C38E8EC32052840';
wwv_flow_imp.g_varchar2_table(12) := '010A50800180D700052840010A50C084020C00261C7476990214A0000528C000C06B800214A00005286042010600130E3ABB4C010A508002146000E03540010A5080021430A100038009079D5DA600052840010A3000F01AA000052840010A98508001C0';
wwv_flow_imp.g_varchar2_table(13) := '8483CE2E53800214A000051800780D50800214A000054C28C00060C24167972940010A5080020C00BC062840010A5080022614600030E1A0B3CB14A0000528400106005E0314A00005284001130A30009870D0D9650A50800214A0000300AF010A508002';
wwv_flow_imp.g_varchar2_table(14) := '14A080090518004C38E8EC32052840010A50800180D700052840010A50C084020C00261C7476990214A0000528C000C06B800214A00005286042010600130E3ABB4C010A508002146000E03540010A5080021430A100038009079D5DA600052840010A30';
wwv_flow_imp.g_varchar2_table(15) := '00F01AA000052840010A98508001C08483CE2E53800214A000051800780D50800214A000054C28C00060C24167972940010A5080020C00BC062840010A5080022614600030E1A0B3CB14A0000528400106005E0314A00005284001130A30009870D0D965';
wwv_flow_imp.g_varchar2_table(16) := '0A50800214A0000300AF010A50800214A080090518004C38E8EC32052840010A50800180D700052840010A50C084020C00261C7476990214A0000528C000C06B800214A00005286042010600130E3ABB4C010A508002146000E03540010A5080021430A1';
wwv_flow_imp.g_varchar2_table(17) := '00038009079D5DA600052840010A3000F01AA000052840010A98508001C08483CE2E53800214A000051800780D50800214A000054C28C00060C24167972940010A5080020C00BC062840010A5080022614600030E1A0B3CB14A0000528400106005E0314';
wwv_flow_imp.g_varchar2_table(18) := 'A00005284001130A30009870D0D9650A50800214A0000300AF010A50800214A080090518004C38E8EC32052840010A50800180D700052840010A50C084020C00261C7476990214A0000528C000C06B800214A00005286042010600130E3ABB4C010A5080';
wwv_flow_imp.g_varchar2_table(19) := '02146000E03540010A5080021430A100038009079D5DA600052840010A3000F01AA000052840010A98508001C08483CE2E53800214A000051800780D50800214A000054C28C00060C241679729F01F8134000B41284001130A30009870D0D965730BA4D3';
wwv_flow_imp.g_varchar2_table(20) := '6944BBDA914C7441FCFF4E97174E971F56ABCDDC30EC3D054C26C00060B2016777CD2D904CC6100E1E42772AF93108ABCD0E5F791DEC7697B981D87B0A98488001C04483CDAE9A5B201E0B23D2D9F25F5FFE47552C561BBCBE6A385D3E7343B1F7143089';
wwv_flow_imp.g_varchar2_table(21) := '00038049069ADD34B74022DE95F9E59F4E77E784B05AEDF0644280D7DC60EC3D054C20C0006082416617CD2D108B061109B7E4FDF2FFB792C502AFAF062EB7DFDC70EC3D054A5C8001A0C40798DD33B740B4AB035D9DADF2BFFCFFC565B15851E6A984DB';
wwv_flow_imp.g_varchar2_table(22) := '53616E40F69E02252CC00050C283CBAE995940CCF4EFC8FCF2EFCD51E6ADCA04011E14A040E909300094DE98B247144024DC9C09004A1CAEB2406672200F0A50A0B40418004A6B3CD91B930B88F7FABB22AD8846DA159570B9CBE1F5D7285A260BA30005';
wwv_flow_imp.g_varchar2_table(23) := 'B4156000D0D69FB553405101F19A9FDC2FFFB23227E2F13452A984AC3688F9001E6F1F59E7F2240A5040FF020C00FA1F23B690023204D2E80C3543CCF897735457F7C18C2923108DA7B175DB2E1C68382CE7639949810C01B2A8781205742FC000A0FB21';
wwv_flow_imp.g_varchar2_table(24) := '620329905BE0C86DFF3644236DB2A86AABAB3063C638B89D8ECCF9D1580CCB3FDA82C3879B657DDEEDA984C75B25EB5C9E44010AE857800140BF63C3965140864061BFFCEBFAD660CECC71B05AAD1F2B3BD5DD8DA52B36E0E0C126197522F36680784380';
wwv_flow_imp.g_varchar2_table(25) := '070528605C010600E38E1D5B6E7201F1CB3F126E422C1A9225D1AF5F2D664D1B0D9BCD9EF5FC682C81B51BB663DFBE83B2CA130B0579FDB5B2CEE54914A080FE041800F437266C11056408A411E9943FDBBF7FFF5ACC9C3606B63C3BFEC5E309AC5CB315';
wwv_flow_imp.g_varchar2_table(26) := '0D0D8D32DA00CE0990A5C49328A04F0106007D8E0B5B45819C0285CCF6AF1F5087195347C9DEEEB73B9DC6B2151B71406608E06241BC5829604C010600638E1B5B6D620131D3BF33DC0CA4D37915060CE88B195347E7FDE57F7C41F14412EB366CC7EE3D';
wwv_flow_imp.g_varchar2_table(27) := '0D79EBC82C1BECAD82BB2C90F75C9E40010AE8478001403F63C1965020AF80D8D52F143C28EFCBBF7F2D664D1F078BC592B7DC6C27249249AC58B5190D725E11B458E00FF483C351D6A3BAF8210A50407D010600F5CD5923057A24908847D0196A427777';
wwv_flow_imp.g_varchar2_table(28) := '32EFE7079F508F291387C9BEED2F55A09868B862F516ECDD2BE34E80D5065F795F8680BCA3C31328A00F0106007D8C035B41819C0262B5BE504703BA53F9BFFC07F4EF8B99D346F7FACBFF6883C49D8035EB7760CF9E037947C96E77C15BDE1736DB9135';
wwv_flow_imp.g_varchar2_table(29) := '0678508002FA156000D0EFD8B06514C808885FFCC1F603B2BEFCFBF6ED8379B326F6F8B6BF14793C91C2D2E5EB70B8A935EFA8D8EC2E9457F487981BC0830214D0AF0003807EC7862DA300D2E96E848387209EFDE73BCA03E53879EE44389DCE7CA7F6E8';
wwv_flow_imp.g_varchar2_table(30) := 'BFC7E371BCF3FE6A843BC3793FEF74F9326B04F474FE41DE0A78020528D06B0106805E13B2000A144F201C3A8CB88C857E5C2E07169C380D3E9FA7788D01D0D21AC4B2151B10E9CA1F48C49E0162EF001E14A0803E051800F4392E6C150510EDEA4044BC';
wwv_flow_imp.g_varchar2_table(31) := 'EE97E77038ED983D7D026A6B2AF39DAAC87F6F38D486652BD622954AE52D4F6C212CB612E641010AE84F8001407F63C2165100F158273A4387338F00721DE216FBCC69E3513FA04655B5DDFB1AF1D1AA4D79DB078B05E51503202607F2A00005F425C000';
wwv_flow_imp.g_varchar2_table(32) := 'A0AFF1606B2880EEEED4BF26FD25F26A4C9B3C06834FE897F7BC629CB071EB5E6CDAB43D6FD1E2CBDF17E8A7D85B09792BE40914A0802C010600594C3C8902EA08885FFCA18E834826A2792B1C3EEC044C1C3F1416F46CA19FBC15E43D218D556BB763E7';
wwv_flow_imp.g_varchar2_table(33) := 'AE7D79CF7438BDF007FA029AB5356F137902054C27C00060BA216787F52B207F839F016267BF1963357FD54E2C1424B6113E2063B540EE19A0DF2B8F2D33A700038039C79DBDD6A180DC497F357D2A3073C604B85DFA586C474C06FC70F11A34B7B4E755';
wwv_flow_imp.g_varchar2_table(34) := 'CD2C17EC2CEE9B0A791BC1132840818C0003002F040AE84020958C679EFBE79BF4E7F578317FDE24783D6E1DB4FA3F4D8874C5B068C91A740473AF1160B539E02FAF83CD5E9CB50A7485C2C65040E7020C003A1F2036AFF405C4A4BFB078EE9F8CE5ECAC';
wwv_flow_imp.g_varchar2_table(35) := 'CD6EC729274E4520E0D3258A582360F1D2B588C5E339DBE77096C11FE8AFCB3EB05114309300038099469B7DD5A580D8DA37D6D591B36D6243BF59D3276240FF6A5DF6E168A31A1A9BB178C9DABC6DE47C80BC443C810245176000283A312BA080B4402C';
wwv_flow_imp.g_varchar2_table(36) := '1A4424DC92F7D6FFE851833176F4100D67FCCB1B45312970D5DA6DD8B57B7FEE0F582CF0F96B21960CE641010A6823C000A08D3B6BA500BA53097488E7FEDDB957D40B04CAB160FE14D86D3643A8259349BCFDFE470885F2CF07109B0659AD7643F48B8D';
wwv_flow_imp.g_varchar2_table(37) := 'A440A909300094DA88B23F861090BBC98FC361C78293A6A3BCC86BFC2B8DD6DA1EC2870B57416C259CEB70BABCF095D7295D3DCBA3000564083000C840E22914505A20D2D98A68A42D67B1E2B9FFA40963306C88362BFDF5B6CF7BF73562F9471BF216E3';
wwv_flow_imp.g_varchar2_table(38) := '2BEFCB470179957802059417600050DE94255220A780D8DA37143C08A4D339CF1B327800A64E1A6558CD34D258B67C23F63734E60E3A561BCA03FDF96AA061479A0D37AA00038051478EED36A440777712C1B60310FF9BEBF0FBFD38F5A429B0DB8DFD7C';
wwv_flow_imp.g_varchar2_table(39) := '3C9148E2BD0F57A12318CAD95FB15F407965BD21C7948DA680510518008C3A726CB72105C4F6BE62C5BF5C87DD6EC3897326A34F55C0907D3CBED1879ADAB07CC57AC4E3B93737F2F8AAE12E2B8D3E97C4C0B113252FC00050F243CC0EEA45406CF11B0E';
wwv_flow_imp.g_varchar2_table(40) := '35E6BDF53F76EC708C1931482FCD56A41DDB76EEC7DA755B7397C5AD8315B1662114902BC00020578AE751A01702E2FDF88EB67D9957FF721DFDFBF7C5CC696361B36AB5C35F2F3A99E3A3E2AD87454BD7E3506373CE0AC4AE81BEF25ACD37392A8E024B';
wwv_flow_imp.g_varchar2_table(41) := 'A580BE041800F4351E6C4D490AA4D1196EC9BBDA9FDBEDC649F326C36FB057FEE40E59341AC37B8B56211C8AE4FC4899A71262A5401E14A040710518008AEBCBD22980782C8C7030CF4C780B3077D664D4F52DED2FBE030DCD58FED17AA452DDD25786C5';
wwv_flow_imp.g_varchar2_table(42) := '8240E540D86CFAD8ED909730054A558001A0544796FDD28580DC8D7E860CAEC7D44923C4069DBA6877B11A91592A78CD36ECDA937BA960B165B03F2016082A6D8F6239B35C0AC811600090A3C47328D0430139B3FEFD5E0F4E9C37159E32736C912BB60E';
wwv_flow_imp.g_varchar2_table(43) := '7EFDAD2548A5722F812C760C143B07F2A000058A23C000501C57964A01A4927174B4EFCF3BEB7FEAE4711872425F53896DDF79006BD66DC9D9679B581B20D00F16AB31F64030D500B2B32521C0005012C3C84EE84D40DCEAEE0C3542BCFA97EBA8ADADC1';
wwv_flow_imp.g_varchar2_table(44) := 'BCD9E360B558F5D685A2B647AC12F8DE876BD1D2D292B31E97DB0FAFBFB6A86D61E11430AB00038059479EFD2EAA809C897F569B15A79E341381724F51DBA2D7C20F3707B164D91A2412B95F8D142B048A950279508002CA0A300028EBC9D22800F1EB3F';
wwv_flow_imp.g_varchar2_table(45) := 'D47E00C9642CA7C6E0C103312D33F1CFBCC7FA4DBBB165EBCE9C004E7117C057038BD81D89070528A09800038062942C88024704E4ECF4E7F3F9307FEE64D34CFC93BA36C476C1AFBDB914B158EEB0C41D03F9AF8B02CA0B3000286FCA124D2C2056FAEB';
wwv_flow_imp.g_varchar2_table(46) := '68DB0FB1F25DAE63CEAC29E85F576962A9FF747DF7DE46AC5C957BDB60ABCD8E40E520DE05E01543010505180014C4645166174823126EC9BBD94FDFBABE983B738CE926FE495D1DE291C9FB8B36A0B9F970CE0B48AC0E285609E441010A2823C000A08C';
wwv_flow_imp.g_varchar2_table(47) := '234BA10012892E843B0EE5FEF56FB1E0B4536723E0E3FBEDC75E32CDAD612C5AB22AE784408BC58A8A3E83791780FFD628A09000038042902C8602A18E0624E25D3921860E1D8C29138612EBBF04D2D8B4751F366EDA9EFB2E00F709E0B54301C5041800';
wwv_flow_imp.g_varchar2_table(48) := '14A3644166164826A2087634E45CF42710F063F6CCF1F079F8EBFFBFAF95343A2351BCBF70152291A8E4A564B5DAE10BD4F1B54033FF6363DF15136000508C9205995920285EFB4B487F71099B51230761EC28DEC296BA4EBABBD3D8B46537B66EDF8B74';
wwv_flow_imp.g_varchar2_table(49) := '5AFA6A729705E0F1559BF97263DF29A088000380228C2CC4CC027216FD39EA63B3D9E0763B01F14E7BAE6F3993818A8980B15822EFFE008245CC0508540D82954B049BEC2A617795166000505A94E5994A407C71858307F33EFB37158A0A9D75B9CBE1F5';
wwv_flow_imp.g_varchar2_table(50) := '8BBB005C1C48056E5651A2020C00253AB0EC963A02B168089DE126FE9A5787FB3FB5582C0854D4C36637C70E8A6AF3B23E7308300098639CD9CB220974B4EE432A152F52E92C3697C091BB003544A200057A28C000D043387E8C0262A7BF70F010213412';
wwv_flow_imp.g_varchar2_table(51) := '107301C41B010E07DFAAD0680858ADC10518000C3E806CBE360262A9DF50C7C1BC33FFB5699D796A75BA7C10FB04F0A000050A17600028DC8C9FA00032CFFE43B997AE2553F105F84640F18D5943E90A300094EED8B26745134823D8967FBB5FAFCF03AF';
wwv_flow_imp.g_varchar2_table(52) := '87FBD8F77818D21644BAA2088723398BE01E013D16E6074D2EC00060F20B80DD2F5C402CF72B9EFDE7DAF1EFCCD3A6E1FA6BE7C36AB120C79A3685576EA24F8817FCE289147EFBD4FB78FDADD5923D173B059607FAC36A739848875DA540EF0518007A6F';
wwv_flow_imp.g_varchar2_table(53) := 'C8124C2610EA388444BC53B2D7E257FFEDB75E82B123F96C5A894B63F7BE36DC71DFB3399708E65D0025A45986D9041800CC36E2EC6FAF0452A9043A5AF7E62C63D28461B8FD9BE7C2E9B0F5AA2E7EF88880B80BF0935FBD8125CB36E5BC0B10A81CC49D';
wwv_flow_imp.g_varchar2_table(54) := '0279D150A00001068002B0782A05229DAD8846DA24211C0E1B6EFCF2F93871D610622928B06CD55E3CF8E80B394BF4FA6AE02A2B57B056164581D216600028EDF165EF14144825E3991DFFD2DD29C95207F4EF83FBEEF8142A036E056B6651A1700C773D';
wwv_flow_imp.g_varchar2_table(55) := 'F002F6EC6D94C4B0D99C0854D57379605E2E149029C00020138AA75120DAD58E48B8451242ECEF73C5650B70D9055388A5B040773A8DBFBDB2164F3EF376CE92CB2BEBB955B0C2F62CAE740518004A776CD933850582ED0D4826BA244BADAEAEC09DB75E';
wwv_flow_imp.g_varchar2_table(56) := '8413EA2B14AE99C50981D6F62E7CF38E27D1D1213D01D3EDA984C75B45300A5040860003800C249E4281643286507B43CE57FF4E5D30055FFFC2026215492099EAC6AF7FFF3EDE787B95F46300BB0BFEF2BE7C25B04863C0624B4B8001A0B4C693BD2992';
wwv_flow_imp.g_varchar2_table(57) := '4067A809B16850B274BBCD8ADBBF7519A68CEF5FA416B05821B07567136EBBFB29690C8B0599C9806E3FC12840813C020C00BC44289047A0BB3B9579F52FD7C23FA3470EC21DB79E0F9F87DBD316F382EA8A25F0FD87FF81CD5B764B56E3707AE10FD415';
wwv_flow_imp.g_varchar2_table(58) := 'B3192C9B022521C0005012C3C84E1453201E0B231C949E7D2EEAFEDAF5E7E2B4934616B3192C1B401A692C5CBA1B8F3EF637490FEE0FC04B8502F2041800E439F12C130B882F7F1102A48EFAFA1ADC75EB45A8ADF69A5849BDAE8B57026FBCEDF768CF31';
wwv_flow_imp.g_varchar2_table(59) := '19D0E3EB0377192763AA372AACC988020C00461C35B659358164229AF9F5DFDD9D94ACF3B28B4EC49597CC50AD4D66AF48BC12F8F4F3CBF1C2DF174A52D8EC2E9457F487B81BC0830214C82EC000C02B83023904BA226DE8EA6C953CA3B2C287DB6FB918';
wwv_flow_imp.g_varchar2_table(60) := 'C387F4A1A38A02879AC2B8F1DB4F20914848D6CA3501541C10566548010600430E1B1BAD9640B06D3FC42B8052C7829326E1A6EB4F55AB39ACE75F02A9EE347EF4D86B58BA5C7A7F006E10C4CB8502B9051800788550404240CCFE6F6FDD03A4A537F4FD';
wwv_flow_imp.g_varchar2_table(61) := 'D64D1761EE8CC18633145FA0C96437C41D72F10AA3D8B6D868C78AD57BF18347A4F707B03BCA326F03F03180D14696ED554B8001402D69D6633801F1DEBF78FF5FEA18D0BF0A77DC7A31FAD5EAFB9DF3B68E28F6377460F5BA7D3870B01589441CB1581C';
wwv_flow_imp.g_varchar2_table(62) := 'C96402E9741A4EA70B2E97134E970B4306D560E4F0BE18342080CA4099AEC7AC2314C5976FFE3F44A3D9EFD058AC36F8FC7DE170EABB1FBA4666E34A5A8001A0A487979DEBA980F8620C070F2211975EFAF7E479E3F08DAF9CD1D32A8AFA393151EE6063';
wwv_flow_imp.g_varchar2_table(63) := '081F2CDE86D56B7761EFFE467475C565D569B1583072783DA64F1D8659D3866260FF80ACCFA97D925819F0C7BF7C1D8B974A3F06709705E0F155ABDD34D6470143083000186298D848B505BA530974B4EDCFB9F8CF57AE3B0B679C3246EDA6E5ADAFB129';
wwv_flow_imp.g_varchar2_table(64) := '8C77176EC1AB6FACCCF9AA5CDE8200D4D654E0F45326E1E41347A1A64A7FAF39BEF9DE16FCE2F15724BB726487C08172BACA7328603A010600D30D393B2C4720D615446758FAF6BFDD6EC70FEFBD12434FD0CFEC7FF1AB7FCDFA03F8ED1FDEC481836D72';
wwv_flow_imp.g_varchar2_table(65) := 'BA29FB9CFAFE7D70D945F370D29C61B23FA3C689879A42F8EA377F233D4DC3624145E540EE0DA0C660B00EC3093000186EC8D8603504F22DFE3365E230DCFCD533E1F7B9D4684EDE3AA2B1245E7D6B3D9E7CF65D74774B4F5ACC5B508E135C2E072EBFE4';
wwv_flow_imp.g_varchar2_table(66) := '449C77E6C4CCC4413D1CE231C08DB73D898387A45FD5CCEC0D5056AE87E6B20D14D095000380AE86838DD1838058F4476CFD2B1E03481DD75C7E0A2E3E6FB21E9A8B70248E675F5882975F5BA94A7BCE39631AAEF9F45CB85D7655EACB5589581AF8E9E7';
wwv_flow_imp.g_varchar2_table(67) := '96E1F9BF2F923CCDE9F2C1EBAF8598DBC0830214F88F000300AF060A1C27108B86100937E77CFEFFE03D5762F488BE9ADB45E349FCF1CF8BF18F5757A8DA96F3CF9E81CF5F75A2AA754A55B6797B236EFFFE33484BDCF910AF018A45816C36872EDACB46';
wwv_flow_imp.g_varchar2_table(68) := '50402F020C007A1909B6433702F96EFF0F1D5287DBBE71016AFB683B294E3CF37FEDAD0DF8F5136FA86E277E4D5F7BE529B8F0EC49AAD77D7C855DD104BEF48D27100A4BEFD7E02BAF83D3A5ED78690EC50650E0380106005E1214384E402CFED39D925E';
wwv_flow_imp.g_varchar2_table(69) := 'FBFFACD3A6E1FACFCE8705DADE52DEB0F920BEF7E09F219E83CB396AFA9463D4C81330B0BE0F2A2ABCF0B88F6C5D1C89C6D1DEDE897DFB9BB165EB5E34B504E514073127E0B69B3F8929E3EB659D5FAC9344107AF4176F60D1920D9255F075C062E9B35C';
wwv_flow_imp.g_varchar2_table(70) := '230B30001879F4D876C505E4ACFE77F30D17E2A4D94315AFBB90025BDBBB70FF237FC1AEDD87F37EACA63A8079B3C761D890BEC89B59D2C08E5D87F0E1E28D686EE9C85BF6E0136AF1833B3F054F99B6B7D7DF5FBC033FF9C58B92ED15AB028ACD817850';
wwv_flow_imp.g_varchar2_table(71) := '8002FF116000E0D540816304E2B14E848387244DAAAA7CF8FEED9FC6803A6D6795FFF3AD0D78FC89D773AD529CE9C3A409C371DA8209F9BFF88FEF713A8D37DF5D8735EB76E4BD3E3E7FCD2770FE9913F39E57CC135ADB23B8FEA6C79192B81B62B5DAE1';
wwv_flow_imp.g_varchar2_table(72) := 'AFE8CF7900C51C04966D38010600C30D191B5C4C81CE7033625DD2BF7C674E1B896F7EED2CB89CB662362367D94D2D9DB8F7A1E7F2BEEB3F67D678CC9D35A257ED5CB4742B162F95BEB52E0AAFAAF4E247F75F832A0D970E166F03DC72C79FB06BCFC1EC';
wwv_flow_imp.g_varchar2_table(73) := 'FDB558E0F555C3E5D636B8F56A30F8610A282CC000A030288B33AE8078ED2F146C442AC7EE7F9FBDEA13B8F06C6D7FEDBEF6CE46FCEF6F5FCB093D65D2089C7AF2784506E3ADF7D663F59A6D39CBBAEAD30B70E9F95314A9AFA7853CF39795F8F35FDE97';
wwv_flow_imp.g_varchar2_table(74) := 'FCB8781DD057AEFD9B1B3DED1F3F4701A505180094166579861510EBFE8BDBFFE974F64975E275B29F3CF8199C505FA9591F439D71FCF0A72F61C3A6BD926DA8ADADC235979FAC681BFFF0F4BB686A965E5D70C8E03AFCF8FE2B14ADB3D0C2B6EF6EC16D';
wwv_flow_imp.g_varchar2_table(75) := 'F73C856EA9C700363B2AAA06A1F0E72185B684E753C018020C00C61827B6520581685747E6FD7FA963C4F07A7CE71BE7A1AA42BBDDE5B6ED6CC6833FFE0BDADA3B25DB79D1F92762E8901A45C576EE3A8CBFBEB450B2CC32B7130FDF770DEAFB69778B5D';
wwv_flow_imp.g_varchar2_table(76) := 'AC80F8F9AF3F8E8E0E699B8A3E8361B56AF7F846D141616114E8A50003402F01F9F1D211C8F7FCFF9C3366E09ACB67C3EDD46E05BC57DE3C32F94FEAA8ADAEC035579E529441F9C3D36FA3A939FBFC089BCD8A6BAF1493019579ECD0930E887900F73EFC';
wwv_flow_imp.g_varchar2_table(77) := '22D6ACDD29F971B12090DDAE8FE59B7BD2477E86024A0A300028A9C9B20C2D10EA68C8B9FDEFE7AF390DE79F3941D33EFEFC37EFE0AD77574BB661FEDC0998397D7851DAB874C5767CB8689D64D90BE64FC44D5FFA4451EA965BE8937F5E82BFBEB458F2';
wwv_flow_imp.g_varchar2_table(78) := 'ED08AFBF861301E562F2BC9217600028F9216607E508A4D36974B4EDCBB9FEFF1DDFBA14D32769BBB5EC23BF780D0B176F94ECD215979D8AFEFD0272BA5CF0390D07DBF1CC73EF487E6ECCE813F0C09D17175CAE921F786FF176FCFCFFBD82643295B558';
wwv_flow_imp.g_varchar2_table(79) := 'B7A7021EAF7E767054B2EF2C8B02850A3000142AC6F34B5220998C21D47110E9EEEC5F1CA2D33F7DE8B39A4E00146DB8EF91BFE3A3D5D2B7B8BFFAC5F35156569C47145D5D09FCF2F17F488E7F7DFF1A3CF6F0D59A5E1F070E75E096DB9F422C1ECFDA0E';
wwv_flow_imp.g_varchar2_table(80) := '87D393D91888F300341D2656AE130106009D0C049BA1AD40660260670BA4EE1DBBDD4EFCCF43D7A2B6DAA75943C592BF773FF03C366D3920D9865B6EBCA8A8ED7BF4677F952CBFBAAA1CBFFAC9E734DD2A586C8BFCB91B7E83685757D6765A6D76887D01';
wwv_flow_imp.g_varchar2_table(81) := '380FA0A897090B378800038041068ACD2CAE40387418F16848B29209E306E3D6AF9F83729F7613C8C49AF777FDE0796CDCBC5F3A007CFDA2E2BDE596061E7D4C3A005456F8F0DB9F7F41D33D12C444C09BBEFB2CF6ED935ECD51DC0170B9FDC5BDA0583A';
wwv_flow_imp.g_varchar2_table(82) := '050C20C00060804162138B2B209EFF07DB0FE45C00E8C2F366E38A8B676ABA02E09147002FE2A3D5D2CBF37EF58BE7A2ACECC8263F4A1F5D5D71FCF2F197258BD5C32300D1B887FEE7352C5D2E3D4FA2CC5389326F95D23C2C8F028613600030DC90B1C1';
wwv_flow_imp.g_varchar2_table(83) := '4A0B88857FDA5BF6482E0024EAFBF27567E1CC53C6285D75C1E5E59B0478F9A50B30A07F71162ADA7FA0157F7AE115E67DB400002000494441543DC9368F1D73027E7087B6930045E3FEF4B78FF0ECF3D2EDE48A80055F76FC40890A300094E8C0B25BF2';
wwv_flow_imp.g_varchar2_table(84) := '05BABB9399002075881500EFBBF3D31837AA4E7EA1453A53D3D700976FC3878BD74BF66CCEEC71F8F60D6714A9E7F28B5DB47C37FEE7972F219EC8BEA5B3DDE14679C500F905F24C0A94A8000340890E2CBB255F209988661E01E40A003F7FE473E8DF57';
wwv_flow_imp.g_varchar2_table(85) := 'BB55EE8EB6ED2F2FAFC193CFBC2DD9D6DA9A2A5C7385B2CB001FADECC967DFC6E1C3D21B255DF9A905B8EC026DF703106D3D7438849BBFFB7B446389AC4E569B031555E2754E8BFC8B846752A0040518004A7050D9A5C204E2B130C2C146C90FD5D454E0';
wwv_flow_imp.g_varchar2_table(86) := 'A17B2ED77409E0A38D5BB7E910BEF7E0B310CBDE4A1D175D381F434FA82E0C21CFD93B7635E16F2F7D287996D361C7FD775F891143B47FC73E914CE10B37FE06C160247B00B0DA11A8AC87854B022B7A8DB030E3093000186FCCD8628505A25DED88845B';
wwv_flow_imp.g_varchar2_table(87) := '244B9D316D246EFCD2E9F0798A33B9AE90EEB47544339B016DD926FD2680082C9FB942C1E580D3C0EF9F791BCD12CB008BF60FAAEF8B9F3E7485A66F001CEB78F31D4F63F79EECA14E3CD2118F006C76EDC7B390B1E7B914505A800140695196673801B1';
wwv_flow_imp.g_varchar2_table(88) := '0190580740EAB8F88239B8E653B375D3AFBFBEB206625DFE5C8792DB01BFF9CE3AAC59B75DB23A8B05B8ECA2F9B8E2E2E9BA317AE4E7AF63E1920D59DB2302805812584C06E44101330B30009879F4D9F78C80D802381E93DE41EEEB5F3A17A7CE1FA91B';
wwv_flow_imp.g_varchar2_table(89) := 'AD86C610EE7DF0CF38DC1CCCD9A639B3C663EEAC11BD6AF7C2255BB16459F62FD2A30557043CF8C983D7A2A2DCDDABBA94FCF0732FAEC2D3CFBD977D61278B051E4F15C4B2C03C286066010600338F3EFB0EB1047024D494F95FA9E387DFBF1A23872ABB';
wwv_flow_imp.g_varchar2_table(90) := 'BD6E6FE9FFF2F26A3CF98CF4BAFC47CB9F3461384E5B30A1F0F96EE934DE7C57FCF2975E7340D4217EFD5FF2C9F9B8EA12FDFCFA17ED5AB1663F1E7DEC4544A3D9C7552C0424EE02140ED3DB91E3E729A01F010600FD8C055BA2814022DE85CEF06174A7';
wwv_flow_imp.g_varchar2_table(91) := 'B2BF3266B55AF1FF7EFA0554577935689D74952D6D117CEFC1E7B1BF417AEEC2D14FD7D40470E29C89183A58DEC44031E1EFC3C5EB723EF33F5A76FFBA2A3CFA83ABE0761567FF819EA237B574E2963BFE885038FB9D1DBBA30CFE401DC4E3001E1430AB';
wwv_flow_imp.g_varchar2_table(92) := '00038059479EFDCE0864DE00081D96DC03201008E0270F5C81CA4099EEC45E7F770B7EF59B5764B7ABAEAE1A23860D407DFF2A545478E0718B49706944A209B4B54570E0600BB66D6FC0A1C66659653A9D767CE50BE760C1DC61B2CE57F324B16FC297BE';
wwv_flow_imp.g_varchar2_table(93) := 'F1045ADBB2CFED10AF028A8980DC1448CD51615D7A136000D0DB88B03DAA0A6436010A4B7FE1D5D7F7C37DB77F5257CFB78F022592DD78FA85E5F8DB4B8B54351395592C169C7FCE6C7CF68A59BA99F97F3CC2576E795232CC885FFE81AA81B05AF575E7';
wwv_flow_imp.g_varchar2_table(94) := '42F5816485A616600030F5F0B3F35D9DADE88AB449428C1C3118B77FF31C04FCDA6D02946B94E289149E787A21FEF9C64A550773F6CCD1B8F586B360B3EA77319D9BBEFB0CF64A6D0A64B120503910369B4355375646013D093000E86934D816D5053AC3';
wwv_flow_imp.g_varchar2_table(95) := 'CD88E5780570C6B431F8FA174F815FC35D00F3A18810F0ABFF7B07EF7EB02EDFA9BDFEEFE297FFD4C9C3F1ED1BCF86D361EB7579C52CE03BF7BE802DDBF64A56515E59CF6D818B39002C5BF7020C00BA1F2236B098029DA1C388E5D806F89C3367E28A4B';
wwv_flow_imp.g_varchar2_table(96) := '66E86211A07C77029E7F7125FEF2E262A452DD45212B733B71FE3933F1E98BA6C32AA6FFEBFCF8DE0F5FCAB97E010380CE0790CD2BBA000340D18959819E05F2AD01F0C9F3E7E2EACB66EAFA56F7B1BEEF2CDC863F3CF30EDADBA5D73528743CC477BD78';
wwv_flow_imp.g_varchar2_table(97) := '93E0CA4B4FC2C9738717FA71CDCE7FF8E7AF63B1C46240A251FE407F389CFA9BDCA919182B369D000380E9869C1D3E5620D8DE8064A24B12E5AA4F9F824BCF9F6C28B486C620FEF1DA1ABCF5DE1AC42536C491DB21BFBF0C27CD9B80CB2E9C86805F3F0B';
wwv_flow_imp.g_varchar2_table(98) := 'FDC869FF63BF79176FBFBB4AF2545F795FAE06280792E794AC000340C90E2D3B2647A0A36D3F52391601FAE267CFC439A78D955394EECED9B3BF1DAFBCB90E4B976F463C16CF6C8F9BEFF180CD6685DD6E43556539264F1C86D3178CC5904195BAEB9B9C';
wwv_flow_imp.g_varchar2_table(99) := '06FDFA0F1FE29FAF2F973CD5EBAB81AB4CFB1D1EE5F485E750A018020C00C55065998611686FDD8BEE54F66D6345276EFACAF95830CF38B7BDB3C1A791C68EDDAD58BD6E2F76EC3C84CECE28225D5104439D70D8EDF078DCF094B9E1F5B9307C683FCC98';
wwv_flow_imp.g_varchar2_table(100) := '321803FB1B7F99DCA79E5B8E17FE2EBD83A1C7DB87CB011BE65F2A1B5A0C01068062A8B24CC30874B4EE432A15976CEF77BE7909664D1D6498FEB0A1FF11F8EBCB6BF18767DE922429F354A2CC5B45320A98568001C0B443CF8E0B817C01E0CE6F7F0AD3';
wwv_flow_imp.g_varchar2_table(101) := '260E209601055E7B675366BF84CE48F6FD00C46640E22E000F0A98558001C0AC23CF7E6796C1ED68DD9FF30EC00FEEBE0A6347D652CB80021F2CD9895FFFEE35843BA3595BEF2A0BC0EB93B73F8201BBCF265320AF0003405E229E50BA0269B4B7EECB39';
wwv_flow_imp.g_varchar2_table(102) := '07E0C70F5C8B2183789BD888D7C0B65D4DB8FFE117100C657FCBC3E52EFFD78E8046EC1DDB4C81DE0B3000F4DE90251856207F00F8E5A35F40BFBE7EC3F6D0CC0DDFB3BF0D77FFE04F9201C0E9F6C3E7E7DD1D335F2366EF3B0380D9AF0053F73F770010';
wwv_flow_imp.g_varchar2_table(103) := '0BE0FCFA675F4275A5C7D44A46EDFCE1E6306EBBE78F68EF8864ED82D3E585AFBCCEA8DD63BB29D06B0106805E13B200E30AE40B00163CFEB3EBD18701C09043DC118AE2E6EFFE016D12AB223A9C5EF8030C00861C5C365A110106004518598831057207';
wwv_flow_imp.g_varchar2_table(104) := '0087D38E5F3EF2795457798DD93D93B7BA2B96C037BEF3240E3775649570383DF007FA995C89DD37B30003809947DFF47DCF1D00EC0E3B7EF9E8E751C30060C82B25D215C7CDB73F952700883B00FADFD8C89003C046EB5E800140F743C406164F20F76B';
wwv_flow_imp.g_varchar2_table(105) := '8062EBDB5FFFEC7ACE0128DE0014B5E4F660176EB9F329B4B6867907A0A8D22CDCA8020C00461D39B65B11817C0B018939007C04A008B5EA851C3A1CC277BEF7343A82D92701720E80EA43C20A7526C000A0B3016173D415C817007EF1E875E8DF971BC6';
wwv_flow_imp.g_varchar2_table(106) := 'A83B2ACAD4B6F7401BEEBA3FC76B807C0B401968966258010600C30E1D1BAE8440BEDD001FFDC1B5187A02170252C25AED32D66C38801FFFFC25E975005C3E882D817950C0AC020C00661D79F63B23902F00DC7FD79518378A5F1246BC5CDE5BB41DBFF9';
wwv_flow_imp.g_varchar2_table(107) := 'FD1BD24B01BBFDF0722120230E2DDBAC9000038042902CC69802C1B6FD4826B36F16237A74C7B72EC3F449F5C6EC9CC95BFDCFB73666F602903AB814B0C92F10761F0C00BC084C2D106C3F806422FB663102E69B375C88F9B3879ADAC8A89D7FE1A5D578';
wwv_flow_imp.g_varchar2_table(108) := 'EA4FEF4807006E0664D4A165BB15126000500892C5185320D4D180443CFB6631A2475FFDE2B938FDE491C6EC9CC95BFD873F2DC35F5F5AC80060F2EB80DD97166000E0D5616A8150C72124E29D9206D75D7B06CE3B7D9CA98D8CDAF9C79F5C88575E5B26';
wwv_flow_imp.g_varchar2_table(109) := 'D9FC324F25CABC9CE069D4F165BB7B2FC000D07B439660608170E830E2D190640FAEB86C013E75E11403F7D0BC4D7FECF177F0F67BAB25013CBE3E7097559817883D37BD000380E92F01730374869B11EBCABE56BC90B9F0DCB9F8EC15B3CC8D64D0DE3F';
wwv_flow_imp.g_varchar2_table(110) := 'F43FAF62E9F24D92ADF7FA6B202602F2A08059051800CC3AF2EC7746A02BD286AECE56498DD34E9986CF5C3E1B7EAF93620613B8FBA117B16EFD0EC9568BAD80C596C03C286056010600B38E3CFB9D11884583E80C35496A4C993C0A377FF913F0FB5C14';
wwv_flow_imp.g_varchar2_table(111) := '3398C0AD77FF193B761E906C7579C500D81D6E83F58ACDA58072020C00CA59B224030AC4636184838D922DEFDBB7060FDF7B19CA19000C35BA69A4F1955B9E426363B37400A8AC87DDCE6067A88165631515600050949385194D2091E842A8BD41B2D96E';
wwv_flow_imp.g_varchar2_table(112) := 'B717BF78E46A5455788CD63553B7371C89E36BB7FE01C1A0C4044F8B0581CA81B0D91CA67662E7CD2DC00060EEF1377DEFC52A802200A4D3DD592DAC36071E7BF833DC10C86057CAAE7D6223A03FA3B333FB4E80168B1581AA81B05AED06EB199B4B01E5';
wwv_flow_imp.g_varchar2_table(113) := '04180094B3644906148846DA11E96CC9D9F2BB6FFB14A64C1860C0DE99B7C9EF2DDE89FFFDEDAB8846A59779E66B80E6BD3ED8F323020C00BC124C2B207EFD878387D09D4AE634F8F27567E1CC53C698D6C9881D7FFA859578FE6F1F4ADED9117DB2DAEC';
wwv_flow_imp.g_varchar2_table(114) := 'F0FA6AE1709619B18B6C33057A2DC000D06B4216604401B1FCAFF8F297BAF57F6C9F2EB9701E2EBD702ADC4EDE2E36CA583FF28B37B170F1BABCCD158F027C813A381C0C0179B17842C909300094DC90B243F904E2B14E443A9BF3FEF23F5ACEAC1963F0';
wwv_flow_imp.g_varchar2_table(115) := 'B52F9CCAB500F2C1EAE8BF7FFB7B2F60DBF6BDB25A64B1DAE0F38B3B019CE8290B8C27958C000340C90C253B22472033E9AFE320D2DD2939A767CEA9ACACC0A3F75F8ECA007F25CA46D3F0C4EEEE343EF7B5DF2218925EE2F9F8E689C980DEF25ADE09D0';
wwv_flow_imp.g_varchar2_table(116) := '70DC58B5FA020C00EA9BB3468D0412F108C4DAFF857CF98BA63A9D6EFCFC47D7A2A60F7F216A34740555DB118AE2ABDFFC3F44BAA42700662B30F338A0BC8E73020AD2E6C94616600030F2E8B1EDB205C4FBFE9DA1C3B26FFB1F5BB0F875F8B3873F8B01';
wwv_flow_imp.g_varchar2_table(117) := '757ED9F519E1C4EE741A480356ABC508CD95DDC63DFBDB71DB3D4F21164BC8FECCD1138F4C0CACE1E38082E5F801230A30001871D4D8E682047A72DBFFD80AC42FC3DB6FB914D32797C6AB801BB634E2EFFF5C839DBB1A60B1A43164707F5C7AFE348C1C';
wwv_flow_imp.g_varchar2_table(118) := '565D90AB5E4F7E77D14EFCEAF197114FE47EBB43AAFD624E80BFBC8ECB04EB7580D92EC504180014A364417A1410B7FD3BC34D3DFAE57FB43F22007CE9F367E3CC5346EAB18B05B569FD9646DCF3C09FD09DFAF81C08AFC78D3BBE7529C68CA829A83C3D';
wwv_flow_imp.g_varchar2_table(119) := '9EFCE4732BF1F77F7C88542AFBE24E72DACCC7017294788ED10518008C3E826CBFA480DCF7FCF3125A2CF8E4797371D5A5D361B759F39EAEE713EEFDD12B58BD664BD6269EBA600ABEFAF99360B31ABB8F3FFCD95B58B26C6DAF87818F037A4DC802742E';
wwv_flow_imp.g_varchar2_table(120) := 'C000A0F30162F37A26904C448FCCF69758E2F7D852C533708BC58E544AFA99F1F4A96370E3F5A7187A5740F1CCFFB35FFB1D42C18EACA8A3460EC42D379C8D9A2A636F91FB8D3B5FC09EDDD2AF007A3C2E44BAE280980391E7107702FC817E7C1C900F8A';
wwv_flow_imp.g_varchar2_table(121) := 'FFDD90020C00861C36363A97C091DBFEE23DFFFC93C0DC656598326118DA3ABAB065DB4EA4BBB37F29B8DD1EFCCF0FAF466D1FE37E39C613295CF7F5DF211CCEFE7A9CD75B8607EEBE1C83065418F6020B75C6F1D55BFF8870A83D6B1F2C560B264F1C81';
wwv_flow_imp.g_varchar2_table(122) := '74B713DB76EE446738FB5E01C77EF8C83A017DF9768061AF0A365C4A800180D74649091472DBBFCCEDC2B4A9E3505B1340B8338E25CB562318ECCCFEC561B1E2CE6F5F86A913FA1BD62B164FE10B373D81702898B50F2E97130FDD7B2506D7571AB68F2B';
wwv_flow_imp.g_varchar2_table(123) := 'D61CC08F7EF612E2B1AEAC7DF07ABD38F5A42970381C38DCD48E151F6D423416CDDB5FB12994AFBC2FB70FCE2BC5138C24C00060A4D1625B730A6496F70D35CA7ACFDFE57261EEEC49A8AAF065CA14B7C757AEDA84BDFB0E49D671ED5567E093678F33EC';
wwv_flow_imp.g_varchar2_table(124) := '28982100FCF68F4BF1F2AB4B241FFDF4EF5F87D9D34743DCDA17477B4718EF2F5C854422FFDDA2CCDB01E27180DD65D86B800DA7C0C7EE6E5DF9E517F23F08A31905742E20BEFC8FCCF6CFFF87DCE329C3EC19E35159F1F1F7FA77EC3A80D56BB34F9013';
wwv_flow_imp.g_varchar2_table(125) := 'DD3F71EE647CE9B3F3E0F33875AE91BD79660800B7DCF50276EE927EFE3F6EEC488C1E51FF31A0A6E676AC5CBD099D9DD9EF1A1C7BB2B813E0F5D770C54043FE0B60A38F17E01D005E13861728E43D7F8FC78D59D327A0AAF2BF17F5696D0FE29DF75648';
wwv_flow_imp.g_varchar2_table(126) := '7A945754E147DFBB14B5D5C69C0750EA01A02B9AC0176E7C02914858720CE7CD9986BADAC07FFDF7C3CD1D58B6723D6239B60F3EFA21F1768058319077020CFFA7C3F41D600030FD25606C8042DEF32FF3B83167E6045406B2AFE89748C4F1CF379641FC';
wwv_flow_imp.g_varchar2_table(127) := '6FB6C3EE70E3DEEF5E82B1236B0D8956EA0160C396C3B83BB3C641F60580FCBE32CC9B3B0DDEB2EC7770C4E3800F17AF412C967F09612E1664C87F026CF471020C00BC240C2B205EF5136BFBCBB9ED5F56E6C689B327A2BCFCC833FF6C877865F0BD85EB';
wwv_flow_imp.g_varchar2_table(128) := 'D0D2D292F5BF8B3FFAD75D733ACE3D7D8C21CD4A3900A491C6732FAEC733CFBD25F97A5F7DBF1A4C9F360EB61C6B39B4B587B0FCA30D0885F2BF1D60B339E1F157F3718021FF35B0D142800180D781210532B7FDDB1B64BDE72F56B99B3963E2BF27FCE5';
wwv_flow_imp.g_varchar2_table(129) := 'EAF0DA8DBBB16DDB4EC9534E3D792ABEF099792873D90DE756CA01404CE2BCF7E1D7B076DD26C971193F6E38460D1F9477DC5A5A8399C7019148FEB70344282C0FF487CD6ECC792179317842490B300094F4F09666E70A79CFDFEBF360F6F4F1A80848FF';
wwv_flow_imp.g_varchar2_table(130) := 'F23F56E9D0E1762C59BA0A2989F500AAABABF1C05D97187267C0520E00D15812D7DFFC1442C1B6EC776F2C56CC9F3719357DE4AD71100C75E28385AB1195F138805B0997E6DF1933F48A01C00CA35C427D2CE43D7F31E16FFE9C49F0F9E44FDA4B249278';
wwv_flow_imp.g_varchar2_table(131) := 'EDED258845B3CF031013C01EB8FB4A8C1AD6C770AAA51C0076ED6BC3B7EE7A0AA964F6E7FF768713677E6216DC2E87EC716B6D0B66D6090885B3AF0D716C41997502FCB55C3150B62E4FD4830003801E46816D902550C86C7FBFDF9B79D5AFDC2FFFCBFF';
wwv_flow_imp.g_varchar2_table(132) := '6823DE797F255ADBB22F970B8B05377CE9027CE2C4A1B2DAACA7934A350088E7FF2FBFB105BFFDFD3F25B92B2B2BB160FE64582D856D7D2C1E07883901725E11146B0B94570CE0E3003D5DF46C4B4E0106005E20861010EBF477061B214240BEC3EFF361';
wwv_flow_imp.g_varchar2_table(133) := 'E6CC71A8E8C197BF287BD5BA6DD8B9739F6435679F3107D77F6676BE66E8EEBF976A0010CFFF1F7EEC2D2C5DB64ED27CD4C821183766302C282C008802C5DB018B96AD45978C3901E2D5406F795FD86CF2EF34E8EE4261834C23C000609AA1367247D308';
wwv_flow_imp.g_varchar2_table(134) := 'B61F4432917FA1168FB70CF3E74E81CFE3EE718777EF6BC4CA551B2567938B2F935BBF7E06AA2B3D3DAE438B0F966A0010CFFFBF7AEB33686B6BCECA6AB1583077D644D4F5EDF9631B110296AFDC8860487A8D81A3953B5D5E78FD7D21EAE541013D0B30';
wwv_flow_imp.g_varchar2_table(135) := '00E87974D836006974869A108B66DFC0E658227FB9EFC86D7F5FEFBE985BDBC3F860D12A2425968775385CB8FBB64B307E745F438D50A90680CDDB9B71D7FD7F96BC3BE4743A70C62766C2E5ECDD12BEAD6DA1CC72D1B24280DB0F9FBF46BC6865A86B84';
wwv_flow_imp.g_varchar2_table(136) := '8D3597000380B9C6DB70BDEDEA6C455724FBCCEE8F7FF97B316BDA380472BCE72FB7F3F1780A4B576EC0E1C3D97F518A722EBD6801AEBA648ADC2275715E290600F1FCFF896796E3A557164BBE125A5111C86C007474FDFFDE0C467B7B088B96AF475744';
wwv_flow_imp.g_varchar2_table(137) := 'C6DD285F35DC65FFBDEA606FEAE76729A0A4000380929A2C4B5181782C8C70B0316F995E5F194E9D3F0D4EA732EF628B2F95CD5BF660E366E9F500C68C1E8E5B6E380D7D2ACAF2B64F2F2794620088C693B8F1B667D1D4D424C93C62C4504C1C3B58B161';
wwv_flow_imp.g_varchar2_table(138) := '10AF082E5EBA06E1CE3CEB04582C9937039C2E79AFA02AD64016440199020C0032A1789ABA0262D25FB06D7FDE857EC41EF6F3664F84BF8057FDE4F4A43D18C65BEF2C933CD5E92AC35DDFBA18E3471B6759E0520C009BB635E1CEFB9E4577B7C4EB7F76';
wwv_flow_imp.g_varchar2_table(139) := '1BE6CC9A82DAEA7239C32EFB1CB96F0788D746CB2BEA61B5DA6497CD1329A0960003805AD2ACA70001F1DCBF19B168F67DEB8F1664B7DB3073FA78F4EBC5E42EA9468965815F7B7B053AC3D9277D89DBC9175F381F575F3AB5807E697B6AA9050031FBFF';
wwv_flow_imp.g_varchar2_table(140) := '896757E2A5973F9084ADEE538113E74CCEB9FC6F4F47E5506333162F5B8FEEEEEE9C45883B00BE721114391FA0A7D6FC5C710418008AE3CA527B212056FA13B7FEC59770AE437CF90F1C50BC5FE01B36EDC6E6ADB91E030CC52D5F3B1D7D0CF23640A905';
wwv_flow_imp.g_varchar2_table(141) := '0071FBFFE63B5EC0A1830D9297C9F87123306AF8C05E5C8DB93FBA7BEFC1CCC4C07C87581F406C26C583027A126000D0D368B02D190171EB3FDFFBFE63460DC198D13D7BAF5B2E733014C1DBEF2F472A99CAFA11A7CB8D3B6FBD1813C618E36D80520B00';
wwv_flow_imp.g_varchar2_table(142) := '1BB736E19E079E93BC56C43AFD9F38799A22134325EF14218D35EBB663478E7523C467F96AA0DC7F753C4F4D01060035B559575E013913FFEAEA6A3167E6B8825775CB5B799613DE7C77393A3AA45F41BCE493A7E0EA4B27F7A468D53F534A0140DCFEFF';
wwv_flow_imp.g_varchar2_table(143) := 'FDB32BF0E2CB1F4A3A56F7E983F9F326C06AB116D53A95EAC6B2951BD070507A22A26880D75F03975BD9B90845ED180B2F79010680921F62E37450DCF2EF68DB27B99FBBE84999C78593E64C85CFA7CEECFB4D5BF762E3A6ED9288E3C68CC037BE722AAA';
wwv_flow_imp.g_varchar2_table(144) := 'AB7AB7F6801AA3544A01402CFE73EB3D7FC181FD0724E9A64E1A832183FBA9418B48348A37DE5A86A4C45E04A21162D3A040D5202E10A4CA88B01239020C007294788E2A02D1AE7644C22D39EB9A387E38460CCBBFA5AB520D6E690B61D1D23588C7B26F';
wwv_flow_imp.g_varchar2_table(145) := '0EE4F1FA71EB0DE762CA0475BE687AD3AF520A00E2F6FFDD0F3C8794C4D2D076871D679E3A0B6E77EF16FF29C47BE3963DD8B47947CE8F78B8364021A43CB7C8020C00450666F1F20452C938421D07255FE7CADC42F57A70EA49E27D7FF5D65917B79A97';
wwv_flow_imp.g_varchar2_table(146) := '2CDF888307B3AF4720DE0638EBF4D9B8FE33B3E47554C3B34A25008831F9C39F56E2C597174A4E14ADAEEE8393E74D5475E6BDF8F5FFEA9B4B1093088B47EF0294570EC8DC0DE04101AD051800B41E01D69F118874B6229A67C5BF5933C6A3BE7FF166FD';
wwv_flow_imp.g_varchar2_table(147) := '4B0DC5CE3D87B06AF546C9911A2DF606B8F14CDD2F0A542A0120D295C0B7EE791E0D0D8724C764E2845118317480EAFFBA76ECDC8FD5EBB6E6ACB7CC5B85324FA5EA6D638514385E800180D7842E043A5AF72195CA7E9B5D34B0B2228053145ACEB5D00E';
wwv_flow_imp.g_varchar2_table(148) := '47BAA278F58D4548A7B37FD2EBF1E29B5F3F1F5375FE18A05402C0FACD8771F703CF22DD9DFDED0C4F990BF3E64E43B94FFDD7EEE2F124162D5D8B96D676C9CBCCE12C833FD0BFD0CB90E7534071010600C5495960A102DDDD29B4B7EC96FC98D8556DFA';
wwv_flow_imp.g_varchar2_table(149) := 'B4091834A0BAD0A215395F2C0DFCC1A2B5686A92989F60B1E09493A6E36BD7CD83CDAADFC55E12C9143EFFF527100E655F60C9E572E2A17BAFC4E07AFDFE3A4DA6BAF19BA796E2B53796488EEDA081FD3063EA1845C6BE2785ECD9D788151F6D90FCA8D5';
wwv_flow_imp.g_varchar2_table(150) := 'E64079A01FC4FFF2A08096020C005AEAB3EE8C403CD6897050FA766E20E0C54973C5B37FED9E9BE6FBA35E5B5B8DEFDE7C3E060FACD0EDA8C613295C77A3B103406373276EFACE333977879C397D1C060ED06E6D86442281D7DE5A86582C96F55A10F346';
wwv_flow_imp.g_varchar2_table(151) := 'C4644097DBAFDB6B850D338700038039C659C7BD4C6766FE47BB3A24DB3874C8404C993842D33E249209BCF6A6F41F75D1B8CB2F3D0D9FFEE4044DDB99ABF2527804F0C23FD6E1A93FBD05A9E7314EA70B9F58301DE231805687B863B4E2A3ADD8BB4FFA';
wwv_flow_imp.g_varchar2_table(152) := '15456766BB60F5E7B36865C27AF529C000A0CF71314DABC4262EE18E433957FE9B396D3C06D66BFFC772C9F20D38D020BD3BE1D0218370F7B7CF43C0AFDD974F290780CE481CB7DFFF57ECDD2BBDF4EF90C1F5983269042C1AAFBBBFBFA105CB56AC919C';
wwv_flow_imp.g_varchar2_table(153) := '37223609AAA812AFB3EAF7919169FE0899B8A30C00261E7C3D743D998822D8D120F98BCE66B7E313274F87DFA7FD423B0D879AB074B9D8FC25FB6C40B11DF1E7AE3E1D679D3A520FB4FFD506A3DF01787FF16EFCF4572F4A4EFE131D167331AA2AB55F6D';
wwv_flow_imp.g_varchar2_table(154) := '2F164BE0B537162191CA3E5111160B2AAB4E8058AE980705B4126000D04A9EF56604F22DFD5B53D30773668E87C3AEFD1FCA443289A5CBD6A3B1A95572F4C68F1D81BBBE7D369C3A68EFF18D347200E8EC4AE0E19FBD81B5EBB648DA575595E394F9D374';
wwv_flow_imp.g_varchar2_table(155) := 'F3ABFAAD7757A0BD437A47CBF2CA7AD8EDFABC5BC43F4FE610600030C738EBB697E2D97F24DC2CD9BEB1A38762F4C81374B37CEABE86C358B67CBD647B3D6565B8F9860B307D92FE5EF332720058BEFA001EFAC95F249789166F8A4C9B321A270CD4CF8A';
wwv_flow_imp.g_varchar2_table(156) := '8CCB566EC2BEFD0725AF15F12AA07825900705B4126000D04A9EF56604BA3A5BD125B10090C502CC9E3101FDFBD5E8462B954AE1D53716239A63B5B7B9B3A7E0D61B4ED6FC3974A9DC0110EBFEFFF2FF16E283851F495E077DAA2A70E2DCC9B0DB8ABBF1';
wwv_flow_imp.g_varchar2_table(157) := '4F2117E2A6CDBBB071CB2EC98FF8CAFBC2E9F2155224CFA580A2020C008A72B2B042053AC3CD8849BC01207ED59D3867126A6BAA0A2DB6A8E76FDDB91FEB72ACF616A8A8C06D379D873123F4135C048851EF006CD9D1823BEF7F0EC94497E4B84E9F3216';
wwv_flow_imp.g_varchar2_table(158) := '270CAA2BEAB8175AF8D6EDFBB06EC336C98F797D357095693F5FA1D07EF1FCD2116000289DB134644FC2C1C6CC3C806C87D56AC182F9D35059A1AF3F9262CDF737DE5981482422697EF6197375B73F805103C0EFFFB4027FFF87F4BAFF5E9F07A7CC9F0A';
wwv_flow_imp.g_varchar2_table(159) := '97D3A9AB7F03BBF634E0A3D59B25DBE4F654C2E3D557B8D515201B5374010680A213B3825C02A18E4348C43B2503C069A7CC84DFE7D51DE2FACDBBB165CB4EC976D5D5D5E18E5BCE457D3FFD841723068086C610EEFBD1DF71E85093A4F5A4F123317C58';
wwv_flow_imp.g_varchar2_table(160) := 'BDEEAE91030D4D58B27C9D64BBC442405EAE05A0BB713353831800CC34DA3AEC6BB0BD41F2D6AECD66C5D967CC81CBA9BF99D2C150040B17AF42A42BFB6A6F62B7B7CB2F3D05975D305E37EA460C002FBEBA09BF7BEA55494387D38EB34F9F0B875DBB55';
wwv_flow_imp.g_varchar2_table(161) := '22A51A77B8A91DCB3FDA8868349AF51487D393090056BE0AA89B7F23666B080380D9465C57FD4DE34800C8FE07D26EB7650280D3A1AF5BBB4709B76CDB83F51BA5F77F1F34A81E3FBCE722B85DFAF872325A0038DCDC89871F7B1D3B7648EF133164C840';
wwv_flow_imp.g_varchar2_table(162) := '4CD5789548A97F52CD6D41AC59BB0DEDEDD957B9B43BCAE0F555C366D7E7F5ADAB3F156C4C510418008AC2CA42E508A4D369843AA40380D3E9C059A7CF8243A77F2063F1045E7EF543887E643BC42FBBAB2F3F1D179DA3DDC634C7B6CB6801E0C5D736E1';
wwv_flow_imp.g_varchar2_table(163) := '89A75E473ADD9DD5D7E57661FE9CC90894EBEF1191687030D4858FD66C464B4B5BD6F6DBEC2E78FD355C0B40CE1F0B9E5314010680A2B0B2503902460F00A28FCB3FDA8CBDFBA497A61D30A03FEEBCF55CD4D568FFBA979102C0FE8341FCF0A72F63FF01';
wwv_flow_imp.g_varchar2_table(164) := 'E94DA2860CA9C7D489FA5C75515C1B8944120B97AE930C006253207FA01FEC0EF5B72D96F3EF93E794BE000340E98FB16E7B580A01A02318C2DBEF7D04B1A571B643FC913FFF9C79F8DC15D3351F072305803FBEB00A2FFCED7DC95FFF02F3E413A7A1BA';
wwv_flow_imp.g_varchar2_table(165) := '4F407357A906A452DDF870C95A34374BAC1C69B1640280C3C1C580743B8825DE300680121F603D77AF14020090C67B0BD7A10FDB189200001C3049444154B9597A35C3404500F7DC76318668BC55B05102C0B65DADF8E14F5F424B8BF492CB0306F4C5CC';
wwv_flow_imp.g_varchar2_table(166) := '696360B5E867E19FE3FFAD3100E8F9AF0FDB26041800781D6826501A0100D87FA8154B97AE9676B458329BD4DCF8C51335B316151B2100C41329FCE6A9A578E3ADA539AD4E9E3F1DD555FA79C5325B63190034BDDC59B90C01060019483CA53802A51200';
wwv_flow_imp.g_varchar2_table(167) := 'C41FFA252BD6E3D021E9BB000EA71BDFFBCEA5183B52BBD5018D1000D66E3C84077EFC77C4A2D28B2C89657F4F9E3F45774B2DF30E4071FE4EB0D4E209300014CF9625E71128950020BA79B8B9031F2E5A29B9FFBB3867EA9471B8EB963334BB2EF41E00';
wwv_flow_imp.g_varchar2_table(168) := '225D09FCECF1F7B07499F4E2390E8703B3674D44AD8E9FFD1F1D60DE01D0EC5267C5320518006442F134E5054A290088BEAC5CB5057B72BC11E070B870EB8D1760E6146D56ADD37B0058B2721F1E79EC45A49271C98B6DD8B0133079FC50DD6CF99BEB5F';
wwv_flow_imp.g_varchar2_table(169) := '050380F27F3358A2B2020C00CA7AB2B402044A2900886E47BAA278EBBD9588C7B2AF0E28CE193962081EBCFB4258C556872A1F7A0E001DA128EE7BE49F3917FD718BF7FEE74D45B9CF18B3E6190054BEC0595DC1020C000593F1034A09945A00102E9BB6';
wwv_flow_imp.g_varchar2_table(170) := 'ECC7C6CD5B2589C46B815FFDE27938EDA4614A31CA2E47CF01E0ED0F77E0E7BFFE07D2DDD917FD119D9C326914860E1E20BBBF5A9FC800A0F508B0FE7C020C00F984F8DF8B26508A01209E48E2BD0F3F4230987D874381595BDB173F7DF0532853798960';
wwv_flow_imp.g_varchar2_table(171) := 'BD0600B1E4EF7D8FBC8CFDFB0F485E6B1515019C7AF254DD4FFC3BB6030C0045FBD3C18215126000500892C5142E508A0140281C6C6CC322F15AA0C412C1E29CAB2F3F03979C37AE70B45E7C42AF01E0B917D7E2D9E7DF955C4CC96AB362CECCC9A8ABAD';
wwv_flow_imp.g_varchar2_table(172) := 'E845EFD5FF280380FAE6ACB130010680C2BC78B68202A51A00D2101302B762CF5EE95FB45E5F391EF9FEA75157ABDE12C17A0C00DB77B5E2BE47FE8A604750F2CAAAAF1F8059D3C492BFEACF9BE8CDE5CE00D01B3D7E560D010600359459475681520D00';
wwv_flow_imp.g_varchar2_table(173) := 'A2B3E14834B3988DD412C1E29CF1E347E2DEDBCE516D42A0DE02406757023FFCE91B58B7618BE4BF10B1DDEFA9F367C06790897F7C04C03F764612600030D26895585B4B390088A15AB36137B66FDF293D6A160BAEFBCCD938EFF451AA8CACDE0280B8F5';
wwv_flow_imp.g_varchar2_table(174) := 'FFCCF3EFE49CF83761DC088C1C3E50151FA52BE11D00A545599ED2020C004A8BB23CD902A51E00A2B104DE5FB40AA11C13023DDE723C70D72538A1BEF8CFB7F51400366D6BCAACF7DFD1D12179BD78BC3E9CB6602A1C76BBEC6B4A4F273200E86934D896';
wwv_flow_imp.g_varchar2_table(175) := '6C020C00BC2E341328F500206077EF3B8C95AB36E49C103861C268DC79CB1970DA6D451D0BBD0480682C89EFFDF01FD8B27597647FC53209D3A74DC0A001DA2D9DDCDBC16000E8AD203F5F6C010680620BB37C4901330480443285E5ABB6E06083F4BEF6';
wwv_flow_imp.g_varchar2_table(176) := '626D806BAF3C0D179E5DDCB702F412009EFECB6A3CFFD777722E9B3C60403FCC9C365AB5F911C5F867CA00500C5596A9A4000380929A2CAB2001330480CC5D803D07B172F5A69C36369B030FDC7305460EED5390612127EB2100ACDFDC88877FF60F8482';
wwv_flow_imp.g_varchar2_table(177) := 'D2B3FE459F264F1C836143FA15D23DDD9DCB00A0BB2161838E136000E025A199805902C0BEFD87B06CE5C6BCCE63C70CC31DDF3C1B9E3247DE737B7282D601A02B96C41DF7FF1DBB76EDCDDBFCA9934663C8E0FE79CFD3F3090C007A1E1DB64D083000F0';
wwv_flow_imp.g_varchar2_table(178) := '3AD04CA0D40380580F60E3E65DD8B27577CEDBDD4707403C0AB8E68A53F1C973C61765C53BAD03C0EFFFB41C2FBEBC08DD3996FBFD8F850523470EC6B8518361D160DF0425FE51300028A1C8328A29C000504C5D969D53A0940340AA3B85D56BB7671603';
wwv_flow_imp.g_varchar2_table(179) := 'CAB120E07FF9D81D6EDC77C765183DBC5AF1AB47CB00B071EB61DCF7A3E711ED92DE28E9F80E8BEFFD6143EA3176CC5043BE09C000A0F825CC0215166000501894C5C91728D500904C26B064F946341E6E918F71CC99E3C70DC3B76F3C0B7EAFB3479F97';
wwv_flow_imp.g_varchar2_table(180) := 'FA90560140DCFABFF5AEE7D090632264AE8ED6D5F5C18C2963E0742AEBA1286E96C218008A2DCCF27B2BC000D05B417EBEC702A51800DADB4358F1D1067484223D76111FFCD4C527E3D3174D517416BC1601A03B9DC66F9F5C8C575E5FDA2B8F40C08719';
wwv_flow_imp.g_varchar2_table(181) := '53C72250AEDED2C9BD6A30000680DE0AF2F3C516600028B630CB971428B500D0DAD681A52B36201289F67AD4C57C809B6FB800F3670DE97559470BD02200BCF6EE56FCE689D7904C267BDD0F4F990BD3A68E456D7565AFCB52A3000600359459476F0418';
wwv_flow_imp.g_varchar2_table(182) := '007AA3C7CFF64AA09402C0BE0387B072D5E6CCAF3EA50EBFDF8B6FDF7421C68FEEAB48916A0780AD3B9BF1BD879E43970281E82880CD6EC38CA96330A05FAD2226C52C8401A098BA2C5B09010600251459468F044A21008899FE5BB6EEC3A62D3BD0DD9D';
wwv_flow_imp.g_varchar2_table(183) := '96E5E07297C36AB323958C211EEBCCF999C127F4C7B76E3C07FDFBFA65959DEB243503407B308ADBBEF73C0E1F6ECAD96E8BD506775900A95402F168485E1F2D168C1B330CA386D743DC29D1EBC100A0D79161BB8E0A3000F05AD04CC0E80140ACF2B771';
wwv_flow_imp.g_varchar2_table(184) := 'D34EECD8B51FA22F790F8B05EEB20A78BC559953BBBB93E868DB8F74772AE747E7CD9D802F7D663EFC3E57DE2AF41000C4A4BF077FFC0AD66DD891B3BD56AB1DFE403FD8ECCE8C5F34D286AE489BEC3E8E18360863C70C81DD56DC25946537E8B8131900';
wwv_flow_imp.g_varchar2_table(185) := '7A2AC7CFA925C000A09634EBF92F01230780682C8AD56BB6E1C0C1DCBF70FF9DB42D5678FD3570BA3E3E892D1E0BA333D484743AC7A3038B05975C70222EBF782AECB69EFFE255E30E40AA3B8DDF3DBD042FBFBA24EF15EF2BAF83D3E5FDD879B23C8EF9';
wwv_flow_imp.g_varchar2_table(186) := '44FFBA6ACC983606767B71164FCADB891C273000F4468F9F55438001400D65D69155C0A80120DC19C192651BD0119477CB5ADCEEF7FA6AE1709665758874B6667EFDE63C2C16DCFCB50B71D2EC9E4F0A2C7600108F43DEF9603B7EFEF8CB48E7791CE2F6';
wwv_flow_imp.g_varchar2_table(187) := '883B21D9973D4EC42308071B7387A263B02A2BCB316DF268DDBD21C000C03F7C7A176000D0FB089570FB8C18009A5ADAB164D93AC4E309592363B339E10BD441ACF52F7DA411EA3804F1C597EB28F7FBF0AD9B2EE8F1A4C06207804DDB0EE3DE079F432C';
wwv_flow_imp.g_varchar2_table(188) := '1ECFD90FBBDD85F2CA01622152C9F3C49C8050C74174A7E439FB7D1E4C9A381A7D6B8ABFADB2AC81E76B807299789E86020C001AE29BBD6AA3058003071BB16CE52674CB9CE9EF707AE02BEF2B6BA25A77770AC1F60379BFF0EAEBFBE2B69BCE437DBFF2';
wwv_flow_imp.g_varchar2_table(189) := '822F9F620680B68E2E7CEBAE67D1D2DA9EFB4686D59679EE2F4240BE43CC9188849BF34E943C5A8EC361CBBC2638A04E1F5B08F30E40BE11E67FD75A800140EB113071FD4609009999FEDBF662E3A61DB297F515CFB6C5977FAE5FB9C70FBDDCE7DF33A7';
wwv_flow_imp.g_varchar2_table(190) := '8FC657AF3B15017FFE2FD163EB285600887425F0E04FFF89F57926FD89B6787C7D321321E51E626E44A7080132DF1010CB074F1837122386D5CBADA268E73100148D96052B24C000A010248B295CC0080140CCF4DFBC6507B66EDF2FBB83E2D9B678C6DD';
wwv_flow_imp.g_varchar2_table(191) := '93231A6947A433FF12C2179E3B07575E3A034E87FC19F0F1440AD7DDF804C2A1EC5BF1BA5C4E3C74EF95185C2F7FA11D51E6937F5E8A7FFC33FF4A7FE2F5473111B22747B44BB8B4424E02132160E8E00198387E38AC56F93E3D6957AECF3000282DCAF2';
wwv_flow_imp.g_varchar2_table(192) := '94166000505A94E5C916D07B0088C7E358B5762BF61F382CAB4FE29D768FA70AAEB2C26FCF1FAD40988483F9E703C062C1A72E9A8F8BCE9D04B7CB2EAB7D22CC7CFEEBBF4338947DF2E29100701506D7CB0B2FE275BFBFBFB2067FFEEB077927FDD91D65';
wwv_flow_imp.g_varchar2_table(193) := '28AFE857D01D91AC7748C2CD795F9B3CFAB98103EB3065E27038ECDAEC21C00020EBB2E4491A0A300068886FF6AAF51C00429D5D58B2741D82A1B0AC61125FFE3EBF98E9EF91757EAE93C4BA00627D00F10C3CDF316FF6785C75D96CF4ADF5E5DD372099';
wwv_flow_imp.g_varchar2_table(194) := 'EAC6355FFE35A25D5D598B75B99D78E4BEAB51DF2F90B35AB1BE7F7B47148FFFE17D2C59B6315F1361B5398EBCEF9F732264DE62322724125D99D726E54E0E0C54F8317BC678F83CD9DFC090576BCFCE6200E8991B3FA59E0003807AD6ACE93801BD0680';
wwv_flow_imp.g_varchar2_table(195) := 'C6C3AD58B3760B44089073885FB73E7F4DE68B4EA9437CD1853B0EC97A154ECC803FEBF4A9183CA80FFAF70DA0B2C2F3F15509C564FB34505EEEC6A5D7FE4CF236BA9844F7F0F7AF444D9F72C4E31F0F1F89543742A1280E367660FBCE46BCFBC13A7404';
wwv_flow_imp.g_varchar2_table(196) := '656C7864B164BEFC1D0EE5BE80F35D37C78F81D7E3C68C6963D1A74ADE9D0DA5C6900140294996532C01068062C9B2DCBC02F9FE903B9D0E9C75FA2C156FE1A6D170B03973DB3F1A95B76FBDD3EDCFACEC2756B553FA884583995FBB3D39C473F0E30F39';
wwv_flow_imp.g_varchar2_table(197) := '8B151EFDCCF19F2FE4B3C7D6DB9BF910B9FA9D991C183A5CC01B020E4C9F3A1A62E1A0422666F6C4FEE86718007AA3C7CFAA21C000A08632EBC82AA0AF0090C6D6EDFBB06EC376D9A37564525B71BF50C47C807CFB05C86EB0CA278A550F8FBC0951BC43';
wwv_flow_imp.g_varchar2_table(198) := 'BC2110EBEA9055810835E3C78DC4C861B9D7209055988C9318006420F1144D05180034E53777E57A0900E259FBAAB5DBB17B4F83BC01B15832CFFB8F5FD657DE870B3B4BCC07E80C37192E0488B9105E7FAD2AB3F0C5FE015DE20D011987C562C1D0C1FD';
wwv_flow_imp.g_varchar2_table(199) := '3061FC48D8AC3D5F56594655999D213F5CB216CDCD126D2BC2E31139EDE23914382AC000C06B4133013D048064328115ABB6E04083CC99FE126BFA1713514C7813BF74F3AD1458CC361452B6DDE1CEFCF22FC66311A976880050C84642270CEC8B891346';
wwv_flow_imp.g_varchar2_table(200) := 'C2E9506EDEC6F16D630028E4AAE1B95A08300068A1CE3A33025A0700B1A6FFE265EB100CE6DE92F7DF69D9623DB28A9DC3ADFA080AABCE50A3EEEF048839115E5FB5ACD50F95464C26A208871AD19DCAFFF684A8BB22E0C7DC59135056569CF16400507A';
wwv_flow_imp.g_varchar2_table(201) := '84599ED2020C004A8BB23CD9025A0680A6E6367CB46633C2617933FDC59AFEDEF25A594BD8CA0628F044E1158B76A0ABB34DD6DB010516DFABD3C56B90656515709505206EB36B75A492F1CC424A72EF96B8CB5C98336302AA2A7BBE7683545F1900B4BA';
wwv_flow_imp.g_varchar2_table(202) := '0A58AF5C010600B9523C4F7101AD02C0A1C626AC58BD05B168EE4D6B8E76D8E114CBFAD66AF2AB361BBA7845B02BDC826452DE9B0A8A0FDC71058AD720CBBC958ABEEAD79B368B7D15C41B02724380D3E5C08CA96351579B7D77C29EB68501A0A772FC9C';
wwv_flow_imp.g_varchar2_table(203) := '5A020C006A49B39EFF12D022006CDFB90F6BD76FCF3C7E9073B83D9528F3546AFAAB56F21766328E64328A64320EF1CB37958A1FB93320B36F72FAFFB1732C16582D36D8ECCECC9A0776BB13E2CB5F89057E0A6E4BDE0FA411E96CCBBFCDF231E54C9938';
wwv_flow_imp.g_varchar2_table(204) := '1243860C8025C72E8579AB3DE604068042B478AE16020C005AA8B3CE8C809A0140FC315EBB612776EDDE27EBCBDF62B166D6F32FCBACE9AFDD2D6D39978A70145FFCE28D81CCFF66FEEF3F01C72266BBA7D399F903B15828674010B7F0DDEE72885FD199';
wwv_flow_imp.g_varchar2_table(205) := '30F1AF23735BFF5F0140DCEE173E5ADEEA97E322563F8A7585D0D9D92C3B148D1A3918A3470E82DDD6FB751D1800E48D12CFD24E8001403B7BD3D7AC560010FBD3AF5EB305FB1BE42DAA23BEDC3CBE6AB8DCFE921A23F1BA63A8FD60E64E41B643F43B50';
wwv_flow_imp.g_varchar2_table(206) := '35489557F7D48495BBCBE2D1360D3EA11F268E1F0187BD7721800140CD51665D3D116000E8891A3FA388801A0120D215C1D2E51BD1DA967D07BCE33B226E6D8B57D8E4EC57AF08828A85885FF4A18E8310B3E5A5024079C580CC2DFE523BC47C09B1A892';
wwv_flow_imp.g_varchar2_table(207) := 'DC3704FAF40960F6F47170BB7BFE86000340A95D45A5D71F0680D21B53C3F4A8B801208DE6960E2C59BE01B198BCC9720E6719BC3E65D7F4D7D3601CF1160120FB9B0FE20E80BFA27F49861F310EA95402E160235232274FFAFD5E4C9E301CB5353D9B1C';
wwv_flow_imp.g_varchar2_table(208) := 'C800A0A7AB9F6DC91AFAAFFCF20BF26643D18F020A0B142B0088E7D77BF71FCA4CF64B2452B25A2D66FAFB0375B2CE35EA49660F0062DCF2DD05397E6C9D4E3B468D1C8261430614BC7220038051FFA598A7DDBC03609EB1D65D4FF30600871D679F3107';
wwv_flow_imp.g_varchar2_table(209) := '76BBBCD5DAC41FF7F6F620D6ACDF81965679EBC30B1431D94F6C5A53EA0703C09111169325C3A12624E2F21680129FA9A9AEC484B1435051512EFB75D06432890F97AC434B4B5BF64B8B4B0197FA3F39DDF78F0140F74354BA0DCC1700AC561BCE3F7B6E';
wwv_flow_imp.g_varchar2_table(210) := 'DE0090461A1D1D216CDDBE1FFBF61F2A08CCE3EB037799BADBC416D440054F6600F838A6583A381A6997BDA892DD66C5C08175183EB41EE57E6FDEB74322D128162FDD80F6768930CA00A0E0D5CDA27A22C000D013357E4611817C0140BC763673DA3804';
wwv_flow_imp.g_varchar2_table(211) := '2A0210DBB67467DED04E23954C22168F21D21941672482CECE2E34B704118D2564B74BAC53EFF5D7406C5A63968301E0BF475A2C1624E6051CFBCA63BEEBC153E644A0DC8B8A800F5EAF172EB73B335950BC35D09D4EC366B5C061B762E79E466CD9BA13';
wwv_flow_imp.g_varchar2_table(212) := '8984C475C900908F9AFFBDC8020C00450666F1D202790380F88D65B5C2E170FDFB9DF3EE6E31992B8E74F791F7DD7B728819FEE2353F2DD6F4EF497B95FA0C03407649F15684D86C49EEE4C0E34BC9AC8960B566EE541D5D1B415C9F89C4BF1666921A40';
wwv_flow_imp.g_varchar2_table(213) := '0600A52E6D96D3430106801EC2F163BD179013007A5FCBC74BD062A73AA5FBD0D3F21800A4E5C41B029DC1467597576600E8E9A5CCCF2924C000A010248B295C40CD007074653FF1BC5FFF2BD8156E29E7130C00B995848F981710EBEAE8F1DD2539E3F0';
wwv_flow_imp.g_varchar2_table(214) := 'EF7318000AE2E2C9CA0B3000286FCA12650BA4116C3B50F45F5D62273F8FBF5A379BD5C8E651FCC43482ED39D601B0DA8E6C776C77295EB3910A142B07463A5BD19D923FA7A427FD134B2AD3BB2772FC8C52020C004A49B29C1E08143900582C9919FE7A';
wwv_flow_imp.g_varchar2_table(215) := 'DDCCA70760BDFE48B0BD417221209BDD057F79DFCC463F663FC4AB8299B704A241D9FB08146A263652F2F94B77E1A9423D78BEFA020C00EA9BB3C66304C2A1C38847438A9A8819FEAEB272B8337BD38BF707781C1510CBE18A4D81B21D62EF03F16684DE';
wwv_flow_imp.g_varchar2_table(216) := '373F527334C5FE095D917688BB0222142879086F8FAFC6B48FA494B464593D136000E8991B3FA59080F832127BB7F77446FFBF9B61B1C06675C0E1F2C0E9F299FE36B6D4F0882F32F1DADBF147A92F03DCDBCB55BC29108B86205E1BEC4EA714B92B2096';
wwv_flow_imp.g_varchar2_table(217) := '5D7638CA7ADB347E9E023D166000E8311D3FA894800801F1786766931AF18B2BDF21560310AF5D897DE8AD36A7CEF7A5CFD71BF5FFBB0801E28B4CCC7C17CB268B67FEE28E09BF8CE48C451AA95412C9785766EECA11C3C491D752917B55F523D7ADED88';
wwv_flow_imp.g_varchar2_table(218) := 'B7DB6FAA3528E4C8F21CF5051800D437678D14A00005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650800214A00005D417600050DF9C3552800214A0000534176000D07C08D8000A50800214';
wwv_flow_imp.g_varchar2_table(219) := 'A080FA020C00EA9BB3460A50800214A080E6020C009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B3000A86FCE1A2940010A5080029A0B3000683E046C00052840010A50407D010600F5CD';
wwv_flow_imp.g_varchar2_table(220) := '5923052840010A504073010600CD87800DA000052840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001F5051800D437678D14A00005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528';
wwv_flow_imp.g_varchar2_table(221) := 'A0B9000380E643C00650800214A00005D417600050DF9C3552800214A0000534176000D07C08D8000A50800214A080FA020C00EA9BB3460A50800214A080E6020C009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160';
wwv_flow_imp.g_varchar2_table(222) := '032840010A508002EA0B3000A86FCE1A2940010A5080029A0B3000683E046C00052840010A50407D010600F5CD5923052840010A504073010600CD87800DA000052840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001';
wwv_flow_imp.g_varchar2_table(223) := 'F5051800D437678D14A00005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650800214A00005D417600050DF9C3552800214A0000534176000D07C08D8000A50800214A080FA020C00EA9BB346';
wwv_flow_imp.g_varchar2_table(224) := '0A50800214A080E6020C009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B3000A86FCE1A2940010A5080029A0B3000683E046C00052840010A50407D010600F5CD5923052840010A504073';
wwv_flow_imp.g_varchar2_table(225) := '010600CD87800DA000052840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001F5051800D437678D14A00005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650';
wwv_flow_imp.g_varchar2_table(226) := '800214A00005D417600050DF9C3552800214A0000534176000D07C08D8000A50800214A080FA020C00EA9BB3460A50800214A080E6020C009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B';
wwv_flow_imp.g_varchar2_table(227) := '3000A86FCE1A2940010A5080029A0B3000683E046C00052840010A50407D010600F5CD5923052840010A504073010600CD87800DA000052840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001F5051800D437678D14A0';
wwv_flow_imp.g_varchar2_table(228) := '0005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650800214A00005D417600050DF9C3552800214A0000534176000D07C08D8000A50800214A080FA020C00EA9BB3460A50800214A080E6020C';
wwv_flow_imp.g_varchar2_table(229) := '009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B3000A86FCE1A2940010A5080029A0B3000683E046C00052840010A50407D010600F5CD5923052840010A504073010600CD87800DA00005';
wwv_flow_imp.g_varchar2_table(230) := '2840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001F5051800D437678D14A00005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650800214A00005D4176000';
wwv_flow_imp.g_varchar2_table(231) := '50DF9C3552800214A0000534176000D07C08D8000A50800214A080FA020C00EA9BB3460A50800214A080E6020C009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B3000A86FCE1A2940010A';
wwv_flow_imp.g_varchar2_table(232) := '5080029A0B3000683E046C00052840010A50407D010600F5CD5923052840010A504073010600CD87800DA000052840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001F5051800D437678D14A00005284001CD05180034';
wwv_flow_imp.g_varchar2_table(233) := '1F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650800214A00005D417600050DF9C3552800214A0000534176000D07C08D8000A50800214A080FA020C00EA9BB3460A50800214A080E6020C009A0F011B40010A5080';
wwv_flow_imp.g_varchar2_table(234) := '0214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B3000A86FCE1A2940010A5080029A0B3000683E046C00052840010A50407D010600F5CD5923052840010A504073010600CD87800DA000052840010AA82FC000A0BE';
wwv_flow_imp.g_varchar2_table(235) := '396BA400052840010A682EC000A0F910B00114A00005284001F5051800D437678D14A00005284001CD051800341F0236800214A0000528A0BE000380FAE6AC910214A0000528A0B9000380E643C00650800214A00005D417600050DF9C3552800214A000';
wwv_flow_imp.g_varchar2_table(236) := '0534176000D07C08D8000A50800214A080FA020C00EA9BB3460A50800214A080E6020C009A0F011B40010A50800214505F8001407D73D648010A50800214D05C800140F32160032840010A508002EA0B3000A86FCE1A2940010A5080029A0B3000683E04';
wwv_flow_imp.g_varchar2_table(237) := '6C00052840010A50407D010600F5CD5923052840010A504073010600CD87800DA000052840010AA82FC000A0BE396BA400052840010A682EC000A0F910B00114A00005284001F505FE3FBB49B3F056F8BE300000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(27487636837316078487)
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
 p_id=>wwv_flow_imp.id(27487628000734078473)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15617032160077
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487628375676078474)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15617032160105
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487628667563078474)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15617032160111
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487628964352078475)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15617032160117
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487629220921078475)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15617032160124
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487629539013078475)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15617032160127
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487629862314078475)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15617032160134
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487630166610078475)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15617032160147
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487630470230078476)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15617032160165
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487630724417078476)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15617032160171
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487631078756078476)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15617032160173
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487631312805078476)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15617032160177
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487631665884078476)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15617032160180
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(27487631983973078477)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15617032160180
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(27487638187860078488)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15617032160290
,p_caching=>'BY_USER_BY_PAGE_VIEW'
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
null;
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
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_due
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28199542382797852327)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov_query=>'.'||wwv_flow_imp.id(28199542382797852327)||'.'
,p_location=>'STATIC'
,p_version_scn=>15617381149614
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199542674554852327)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Overdue'
,p_lov_return_value=>'|0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199543003491852327)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Next hour'
,p_lov_return_value=>'0|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199543471022852328)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Next 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199543840249852328)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Next 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199544268066852328)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Next 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199544690951852328)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'More than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28199548830123852331)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(28199548830123852331)||'.'
,p_location=>'STATIC'
,p_version_scn=>15617381149638
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199549111008852331)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199549515917852332)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199549911133852332)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199550368433852332)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28199550745525852332)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_priority
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(27494921509815561928)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15617037522654
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28199546945531852330)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15617381149623
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28199545437875852329)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15617381149615
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_charts_lov_time_unit
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28250935562906253891)
,p_lov_name=>'WORKFLOW_CHARTS.LOV.TIME_UNIT'
,p_lov_query=>'.'||wwv_flow_imp.id(28250935562906253891)||'.'
,p_location=>'STATIC'
,p_version_scn=>15617404019686
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250935800700253891)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Seconds'
,p_lov_return_value=>'SEC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250936292817253891)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Minutes'
,p_lov_return_value=>'MIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250936688642253891)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Hours'
,p_lov_return_value=>'HOUR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250937077418253891)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Days'
,p_lov_return_value=>'DAY'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28250857627857253840)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(28250857627857253840)||'.'
,p_location=>'STATIC'
,p_version_scn=>15617404017412
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250858010364253840)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250858425880253840)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250858836490253840)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250859256264253841)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(28250859609935253841)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_workflow_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28250856002981253838)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15617404017363
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(27487638439092078489)
,p_group_name=>'Administration'
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
 p_id=>wwv_flow_imp.id(27487632898131078477)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27487633072173078478)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27957642588670533851)
,p_parent_id=>wwv_flow_imp.id(27487633072173078478)
,p_short_name=>'New Appointment'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28199540719790852325)
,p_parent_id=>wwv_flow_imp.id(27487633072173078478)
,p_short_name=>'Patient Tasks'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28199592666220857232)
,p_short_name=>'Doctor Tasks'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28243640426158779436)
,p_parent_id=>wwv_flow_imp.id(27487633072173078478)
,p_short_name=>'Patient Appointments &amp; Feedbacks'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28250854075388253837)
,p_short_name=>'Monitor Appointment Workflows'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(28250913982354253877)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
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
 p_id=>wwv_flow_imp.id(27487633747562078478)
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
 p_id=>wwv_flow_imp.id(27487632236135078477)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15617032160188
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
 p_id=>wwv_flow_imp.id(27487632570693078477)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15617032160191
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
,p_step_title=>'Doctor Appointments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27487646035932078500)
,p_plug_name=>'Doctor Appointments'
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
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Appointment Request Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Request Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(() => {',
'    apex.jQuery("a.taskActionMenu").each((index, item) => {',
'        const element = apex.jQuery(item);',
'        const actionName = decodeURI(element.attr("href")).match(/\$([^?]+)/)[1];',
'        const actionLabel = element.text();',
'        apex.actions.add({',
'            name: actionName,',
'            label: actionLabel,',
'            action: (event, element, args) => {',
'                if (args.do === "submit") {',
'                    apex.page.submit(actionName.toUpperCase());',
'                }',
'                else if (args.do === "openRegion") {',
'                    apex.theme.openRegion(actionName.toUpperCase());',
'                }',
'            }',
'        });',
'    });',
'});'))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494902167490561907)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P2_TASK_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if ACTUAL_OWNER/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.ASSIGNED_TO_USER 0=&ACTUAL_OWNER!HTML.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '{if OUTCOME/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &OUTCOME.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494902583004561909)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494903018882561910)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494903539855561911)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494904084601561911)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494904588312561911)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494905039110561912)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494905516734561912)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494906088385561913)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494906544734561913)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494907077963561913)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494907503324561914)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494908052899561914)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494908578981561914)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494909095596561915)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494909527054561915)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494910019655561915)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494910519245561916)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494911001922561916)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494911528993561917)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494912069642561917)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494912540852561918)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494913006501561918)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494919436350561925)
,p_plug_name=>'Delegate'
,p_region_name=>'DELEGATE'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494921013287561927)
,p_plug_name=>'Priority'
,p_region_name=>'SET_PRIORITY'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494922914482561929)
,p_plug_name=>'Due'
,p_region_name=>'SET_DUE_DATE'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494924551577561930)
,p_plug_name=>'Request Information'
,p_region_name=>'REQUEST_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494926175851561932)
,p_plug_name=>'Submit Information'
,p_region_name=>'SUBMIT_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494927762522561933)
,p_plug_name=>'Invite Participant'
,p_region_name=>'ADD_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494929339157561934)
,p_plug_name=>'Remove Participant'
,p_region_name=>'REMOVE_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494930984653561935)
,p_plug_name=>'Cancel Task'
,p_region_name=>'CANCEL'
,p_parent_plug_id=>wwv_flow_imp.id(27494902167490561907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494932155346561936)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_static_id,',
'       param_label,',
'       param_value,',
'       is_updatable,',
'       is_required',
'  from apex_task_parameters',
' where task_id = :P2_TASK_ID',
'   and is_visible = ''Y''',
' order by param_label;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P2_TASK_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_task_parameters',
' where task_id = :P2_TASK_ID'))
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'HIDE_BORDERS', 'N',
  'OVERLINE', '&PARAM_LABEL.',
  'REMOVE_PADDING', 'N',
  'TITLE', '&PARAM_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494932563112561937)
,p_name=>'PARAM_STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494933090422561937)
,p_name=>'PARAM_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494933513630561938)
,p_name=>'PARAM_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494934033416561938)
,p_name=>'IS_UPDATABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_UPDATABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494934535048561939)
,p_name=>'IS_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494935592978561939)
,p_plug_name=>'Edit Parameter'
,p_parent_plug_id=>wwv_flow_imp.id(27494932155346561936)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P2_CAN_UPDATE_PARAMS = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494938719944561942)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_initials,',
'       ''u-color-''||ora_hash(created_by,45)  as user_css_class,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date',
'  from apex_task_comments',
' where nvl(:P2_ALL_COMMENTS, ''N'') = ''N''',
'       and task_id = :P2_TASK_ID',
'    or nvl(:P2_ALL_COMMENTS, ''N'') = ''Y''',
'       and task_id in ( ',
'                select task_id',
'                  from apex_tasks',
'               connect by prior previous_task_id = task_id',
'                 start with task_id = :P2_TASK_ID )',
' order by created_on desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P2_TASK_ID,P2_ALL_COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No Comments'
,p_no_data_found_icon_classes=>'fa-comments-o fa-lg'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'AVATAR_CSS_CLASSES', '&USER_CSS_CLASS.',
  'AVATAR_DESCRIPTION', '&USER_NAME.',
  'AVATAR_INITIALS', 'USER_INITIALS',
  'AVATAR_SHAPE', 't-Avatar--circle',
  'AVATAR_TYPE', 'initials',
  'COMMENT_DATE', 'COMMENT_DATE',
  'COMMENT_TEXT', 'COMMENT_TEXT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494939194921561942)
,p_name=>'USER_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494939656672561943)
,p_name=>'USER_CSS_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CSS_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494940124708561943)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494940643736561944)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494941112823561944)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494942855707561945)
,p_plug_name=>'Add Comment'
,p_parent_plug_id=>wwv_flow_imp.id(27494938719944561942)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494944480326561947)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       event_creator,',
'       event_timestamp',
'  from table ( apex_human_task.get_task_history (',
'                   p_task_id     => :P2_TASK_ID,',
'                   p_include_all => :P2_ALL_HISTORY ) )',
' order by event_timestamp desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P2_TASK_ID,P2_ALL_HISTORY'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'EVENT_TIMESTAMP',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'EVENT_CREATOR')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494944898353561947)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494945303476561947)
,p_name=>'EVENT_CREATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CREATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27494945875666561948)
,p_name=>'EVENT_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIMESTAMP'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27494946744100561948)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494920268002561926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494919436350561925)
,p_button_name=>'CLOSE_DELEGATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494922172785561929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494921013287561927)
,p_button_name=>'CLOSE_SET_PRIORITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494923768592561930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494922914482561929)
,p_button_name=>'CLOSE_SET_DUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494925343482561931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494924551577561930)
,p_button_name=>'CLOSE_REQUEST_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494926976443561932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494926175851561932)
,p_button_name=>'CLOSE_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494928599472561934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494927762522561933)
,p_button_name=>'CLOSE_INVITE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494930111593561935)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494929339157561934)
,p_button_name=>'CLOSE_REMOVE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494931348736561936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494930984653561935)
,p_button_name=>'CLOSE_CANCEL_TASK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494937987177561941)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_button_name=>'CLOSE_UPDATE_PARAMETER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494943612262561946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494942855707561945)
,p_button_name=>'CLOSE_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494947129379561949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494946744100561948)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494947572957561949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494946744100561948)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494947958571561949)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27494946744100561948)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reject'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_reject )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494948336927561950)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27494946744100561948)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_approve )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494941633303561944)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27494938719944561942)
,p_button_name=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_static_id=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'not apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )',
'and apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494920682947561927)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494919436350561925)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494922586643561929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494921013287561927)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494924151744561930)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494922914482561929)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494925749933561931)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494924551577561930)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494927371276561933)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494926175851561932)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494928984927561934)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494927762522561933)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494930574052561935)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494929339157561934)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494931745766561936)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494930984653561935)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494938388201561942)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494942091695561945)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494938719944561942)
,p_button_name=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_static_id=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27494944049593561946)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27494942855707561945)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27494976687287561968)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P2_TASK_ID:&P2_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494900985073561906)
,p_name=>'P2_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494901378354561906)
,p_name=>'P2_CAN_UPDATE_PARAMS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494919866522561925)
,p_name=>'P2_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494919436350561925)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P2_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494921496360561927)
,p_name=>'P2_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494921013287561927)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P2_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494923390144561929)
,p_name=>'P2_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494922914482561929)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P2_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494924918077561931)
,p_name=>'P2_REQUEST_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494924551577561930)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494926508811561932)
,p_name=>'P2_SUBMIT_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494926175851561932)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494928106529561933)
,p_name=>'P2_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494927762522561933)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494929759457561935)
,p_name=>'P2_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494929339157561934)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P2_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494935923993561940)
,p_name=>'P2_PARAM_STATIC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494936333105561940)
,p_name=>'P2_PARAM_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494936719742561940)
,p_name=>'P2_PARAM_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494937114733561941)
,p_name=>'P2_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494937505092561941)
,p_name=>'P2_IS_REQUIRED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27494935592978561939)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494942479987561945)
,p_name=>'P2_ALL_COMMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27494938719944561942)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P2_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494943207978561946)
,p_name=>'P2_COMMENT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494942855707561945)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27494946304135561948)
,p_name=>'P2_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27494944480326561947)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P2_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(27494901760437561907)
,p_computation_sequence=>10
,p_computation_item=>'P2_CAN_UPDATE_PARAMS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case ',
'    when apex_human_task.is_allowed (',
'            p_task_id   => :P2_TASK_ID,',
'            p_operation => apex_human_task.c_task_op_set_params )',
'    then ''Y''',
'    else ''N''',
'end'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494967439666561963)
,p_validation_name=>'Delegate'
,p_validation_sequence=>10
,p_validation=>'P2_NEW_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27494920682947561927)
,p_associated_item=>wwv_flow_imp.id(27494919866522561925)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494967801001561963)
,p_validation_name=>'Request Information'
,p_validation_sequence=>20
,p_validation=>'P2_REQUEST_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(27494925749933561931)
,p_associated_item=>wwv_flow_imp.id(27494924918077561931)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494968234708561964)
,p_validation_name=>'Submit Information'
,p_validation_sequence=>30
,p_validation=>'P2_SUBMIT_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(27494927371276561933)
,p_associated_item=>wwv_flow_imp.id(27494926508811561932)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494968695681561964)
,p_validation_name=>'Invite Participant'
,p_validation_sequence=>40
,p_validation=>'P2_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27494928984927561934)
,p_associated_item=>wwv_flow_imp.id(27494928106529561933)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494969001609561964)
,p_validation_name=>'Remove Participant'
,p_validation_sequence=>50
,p_validation=>'P2_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27494930574052561935)
,p_associated_item=>wwv_flow_imp.id(27494929759457561935)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494969478034561964)
,p_validation_name=>'Update Parameter'
,p_validation_sequence=>60
,p_validation=>'P2_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_validation_condition=>':REQUEST = ''UPDATE_PARAMETER'' and :P2_IS_REQUIRED = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(27494937114733561941)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27494969805038561965)
,p_validation_name=>'Add Comment'
,p_validation_sequence=>70
,p_validation=>'P2_COMMENT_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a comment'
,p_when_button_pressed=>wwv_flow_imp.id(27494944049593561946)
,p_associated_item=>wwv_flow_imp.id(27494943207978561946)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494948757189561950)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494949177611561951)
,p_event_id=>wwv_flow_imp.id(27494948757189561950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494938719944561942)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494950504994561952)
,p_name=>'Edit Parameter'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.parameter'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494950971291561952)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494935592978561939)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494951405979561952)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27494938388201561942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494951960831561954)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PARAM_STATIC_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494952410248561955)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PARAM_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494952914668561955)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PARAM_VALUE,P2_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494953469704561955)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_IS_REQUIRED'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-required")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494953981959561955)
,p_event_id=>wwv_flow_imp.id(27494950504994561952)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494966061267561962)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P2_NEW_VALUE.value != apex.items.P2_PARAM_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494966417022561963)
,p_event_id=>wwv_flow_imp.id(27494966061267561962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27494938388201561942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494966967309561963)
,p_event_id=>wwv_flow_imp.id(27494966061267561962)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27494938388201561942)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494949646300561951)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494950056053561952)
,p_event_id=>wwv_flow_imp.id(27494949646300561951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494944480326561947)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494954459732561956)
,p_name=>'Add Comment'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494941633303561944)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494954898216561956)
,p_event_id=>wwv_flow_imp.id(27494954459732561956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494942855707561945)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494955350429561956)
,p_name=>'Submit Information'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494942091695561945)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494955719809561956)
,p_event_id=>wwv_flow_imp.id(27494955350429561956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494926175851561932)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494956211403561957)
,p_name=>'Cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494947129379561949)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494956627369561957)
,p_event_id=>wwv_flow_imp.id(27494956211403561957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494957123555561957)
,p_name=>'Close Delegate Dialog'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494920268002561926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494957569243561958)
,p_event_id=>wwv_flow_imp.id(27494957123555561957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494919436350561925)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494958043227561958)
,p_name=>'Close Change Priority Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494922172785561929)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494958483684561958)
,p_event_id=>wwv_flow_imp.id(27494958043227561958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494921013287561927)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494958969197561958)
,p_name=>'Close Change Due Date Dialog'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494923768592561930)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494959377859561958)
,p_event_id=>wwv_flow_imp.id(27494958969197561958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494922914482561929)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494959843188561959)
,p_name=>'Close Request Information Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494925343482561931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494960279221561959)
,p_event_id=>wwv_flow_imp.id(27494959843188561959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494924551577561930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494960707874561959)
,p_name=>'Close Submit Information Dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494926976443561932)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494961168864561960)
,p_event_id=>wwv_flow_imp.id(27494960707874561959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494926175851561932)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494961636105561960)
,p_name=>'Close Invite Participant Dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494928599472561934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494962024405561960)
,p_event_id=>wwv_flow_imp.id(27494961636105561960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494927762522561933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494962506677561960)
,p_name=>'Close Remove Participant Dialog'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494930111593561935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494962967930561961)
,p_event_id=>wwv_flow_imp.id(27494962506677561960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494929339157561934)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494963444555561961)
,p_name=>'Close Cancel Task Dialog'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494931348736561936)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494963720734561961)
,p_event_id=>wwv_flow_imp.id(27494963444555561961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494930984653561935)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494964219298561961)
,p_name=>'Close Edit Parameter Dialog'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494937987177561941)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494964639598561962)
,p_event_id=>wwv_flow_imp.id(27494964219298561961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494935592978561939)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27494965128588561962)
,p_name=>'Close Add Comment Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27494943612262561946)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27494965501997561962)
,p_event_id=>wwv_flow_imp.id(27494965128588561962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27494942855707561945)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494970253430561965)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_09=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RENEW'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task renewed'
,p_internal_uid=>27494970253430561965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494970671337561965)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494947572957561949)
,p_internal_uid=>27494970671337561965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494971039339561965)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Approve'
,p_attribute_01=>'APPROVE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494948336927561950)
,p_process_success_message=>'Task approved'
,p_internal_uid=>27494971039339561965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494971471318561966)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Reject'
,p_attribute_01=>'REJECT_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494947958571561949)
,p_process_success_message=>'Task rejected'
,p_internal_uid=>27494971471318561966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494971808121561966)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RELEASE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>27494971808121561966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494972211057561966)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494920682947561927)
,p_process_success_message=>'Task delegated to &P2_NEW_OWNER!HTML.'
,p_internal_uid=>27494972211057561966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494972662293561966)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_05=>'P2_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494922586643561929)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>27494972662293561966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494973037597561966)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_06=>'P2_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494924151744561930)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>27494973037597561966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494973463509561967)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_REQUEST_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494925749933561931)
,p_process_success_message=>'Information requested'
,p_internal_uid=>27494973463509561967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494973848685561967)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_SUBMIT_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494927371276561933)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>27494973848685561967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494974286935561967)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494928984927561934)
,p_process_success_message=>'Participant &P2_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>27494974286935561967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494974663261561967)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494930574052561935)
,p_process_success_message=>'Participant &P2_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>27494974663261561967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494975057107561968)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494931745766561936)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>27494975057107561968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494975494076561968)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_10=>'P2_PARAM_STATIC_ID'
,p_attribute_11=>'P2_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494938388201561942)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>27494975494076561968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494975833180561968)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Add Comment'
,p_attribute_01=>'ADD_TASK_COMMENT'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_COMMENT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27494944049593561946)
,p_process_success_message=>'Comment added'
,p_internal_uid=>27494975833180561968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27494976263320561968)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE,ADD_COMMENT'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>27494976263320561968
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(27494913557795561919)
,p_region_id=>wwv_flow_imp.id(27494902167490561907)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(27494935095221561939)
,p_region_id=>wwv_flow_imp.id(27494932155346561936)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="parameter" data-id="&PARAM_STATIC_ID!ATTR." data-label="&PARAM_LABEL!ATTR." data-value="&PARAM_VALUE!ATTR." data-required="&IS_REQUIRED!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':IS_UPDATABLE = ''Y'' and :P2_CAN_UPDATE_PARAMS = ''Y'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494914091027561920)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Renew Task'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$renew?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_renew )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494914606101561921)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Release'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$release?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_release )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494915239329561921)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Delegate'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$delegate?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494915881866561922)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Priority'
,p_display_sequence=>40
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_priority?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494916413089561922)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Due Date'
,p_display_sequence=>50
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_due_date?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494917023224561923)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Request Information'
,p_display_sequence=>60
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$request_info?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494917616385561923)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Invite Participant'
,p_display_sequence=>70
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$add_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494918240230561924)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Remove Participant'
,p_display_sequence=>80
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$remove_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27494918831242561924)
,p_component_action_id=>wwv_flow_imp.id(27494913557795561919)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Cancel Task'
,p_display_sequence=>90
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$cancel?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Invoice Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Invoice Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(() => {',
'    apex.jQuery("a.taskActionMenu").each((index, item) => {',
'        const element = apex.jQuery(item);',
'        const actionName = decodeURI(element.attr("href")).match(/\$([^?]+)/)[1];',
'        const actionLabel = element.text();',
'        apex.actions.add({',
'            name: actionName,',
'            label: actionLabel,',
'            action: (event, element, args) => {',
'                if (args.do === "submit") {',
'                    apex.page.submit(actionName.toUpperCase());',
'                }',
'                else if (args.do === "openRegion") {',
'                    apex.theme.openRegion(actionName.toUpperCase());',
'                }',
'            }',
'        });',
'    });',
'});'))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499535492174358656)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P3_TASK_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if ACTUAL_OWNER/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.ASSIGNED_TO_USER 0=&ACTUAL_OWNER!HTML.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '{if OUTCOME/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &OUTCOME.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499535818496358657)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499536380760358658)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499536872208358659)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499537371270358659)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499537812593358660)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499538307051358660)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499538866772358660)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499539375048358661)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499539804829358661)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499540326873358662)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499540824864358662)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499541315787358662)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499541821275358663)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499542389507358663)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499542859009358664)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499543433786358664)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499543910916358664)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499544451308358665)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499544880166358665)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499545313477358665)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499545825336358666)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499546377841358666)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499553493566358672)
,p_plug_name=>'Delegate'
,p_region_name=>'DELEGATE'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499556958230358673)
,p_plug_name=>'Priority'
,p_region_name=>'SET_PRIORITY'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499559978336358675)
,p_plug_name=>'Due'
,p_region_name=>'SET_DUE_DATE'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499562832964358676)
,p_plug_name=>'Request Information'
,p_region_name=>'REQUEST_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499565890878358677)
,p_plug_name=>'Submit Information'
,p_region_name=>'SUBMIT_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499568785407358678)
,p_plug_name=>'Invite Participant'
,p_region_name=>'ADD_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499571550817358679)
,p_plug_name=>'Remove Participant'
,p_region_name=>'REMOVE_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499573615528358681)
,p_plug_name=>'Cancel Task'
,p_region_name=>'CANCEL'
,p_parent_plug_id=>wwv_flow_imp.id(27499535492174358656)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499575189482358681)
,p_plug_name=>'View Invoice'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_static_id,',
'       param_label,',
'       param_value,',
'       is_updatable,',
'       is_required',
'  from apex_task_parameters',
' where task_id = :P3_TASK_ID',
'   and is_visible = ''Y''',
' order by param_label;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P3_TASK_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_task_parameters',
' where task_id = :P3_TASK_ID'))
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'HIDE_BORDERS', 'N',
  'OVERLINE', '&PARAM_LABEL.',
  'REMOVE_PADDING', 'N',
  'TITLE', '&PARAM_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499575819759358682)
,p_name=>'PARAM_STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499576777809358682)
,p_name=>'PARAM_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499577693930358683)
,p_name=>'PARAM_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499578692705358683)
,p_name=>'IS_UPDATABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_UPDATABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499579640835358684)
,p_name=>'IS_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499581628021358684)
,p_plug_name=>'Edit Parameter'
,p_parent_plug_id=>wwv_flow_imp.id(27499575189482358681)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P3_CAN_UPDATE_PARAMS = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499587793513358687)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_initials,',
'       ''u-color-''||ora_hash(created_by,45)  as user_css_class,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date',
'  from apex_task_comments',
' where nvl(:P3_ALL_COMMENTS, ''N'') = ''N''',
'       and task_id = :P3_TASK_ID',
'    or nvl(:P3_ALL_COMMENTS, ''N'') = ''Y''',
'       and task_id in ( ',
'                select task_id',
'                  from apex_tasks',
'               connect by prior previous_task_id = task_id',
'                 start with task_id = :P3_TASK_ID )',
' order by created_on desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P3_TASK_ID,P3_ALL_COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No Comments'
,p_no_data_found_icon_classes=>'fa-comments-o fa-lg'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'AVATAR_CSS_CLASSES', '&USER_CSS_CLASS.',
  'AVATAR_DESCRIPTION', '&USER_NAME.',
  'AVATAR_INITIALS', 'USER_INITIALS',
  'AVATAR_SHAPE', 't-Avatar--circle',
  'AVATAR_TYPE', 'initials',
  'COMMENT_DATE', 'COMMENT_DATE',
  'COMMENT_TEXT', 'COMMENT_TEXT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499588196543358688)
,p_name=>'USER_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499588650056358688)
,p_name=>'USER_CSS_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CSS_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499589169943358689)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499589629133358689)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499590118036358689)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499591825267358691)
,p_plug_name=>'Add Comment'
,p_parent_plug_id=>wwv_flow_imp.id(27499587793513358687)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499593466289358692)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       event_creator,',
'       event_timestamp',
'  from table ( apex_human_task.get_task_history (',
'                   p_task_id     => :P3_TASK_ID,',
'                   p_include_all => :P3_ALL_HISTORY ) )',
' order by event_timestamp desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P3_TASK_ID,P3_ALL_HISTORY'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'EVENT_TIMESTAMP',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'EVENT_CREATOR')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499593877048358692)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499594310859358692)
,p_name=>'EVENT_CREATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CREATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27499594818190358693)
,p_name=>'EVENT_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIMESTAMP'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27499595755424358694)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499555451080358673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499553493566358672)
,p_button_name=>'CLOSE_DELEGATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499558689514358674)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499556958230358673)
,p_button_name=>'CLOSE_SET_PRIORITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499561475458358675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499559978336358675)
,p_button_name=>'CLOSE_SET_DUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499564539844358677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499562832964358676)
,p_button_name=>'CLOSE_REQUEST_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499567352711358678)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499565890878358677)
,p_button_name=>'CLOSE_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499570304708358679)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499568785407358678)
,p_button_name=>'CLOSE_INVITE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499572638189358680)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499571550817358679)
,p_button_name=>'CLOSE_REMOVE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499574196595358681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499573615528358681)
,p_button_name=>'CLOSE_CANCEL_TASK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499586157024358686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_button_name=>'CLOSE_UPDATE_PARAMETER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499592619045358691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499591825267358691)
,p_button_name=>'CLOSE_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499596150970358694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499595755424358694)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499596509732358695)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499595755424358694)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499596905192358695)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27499595755424358694)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_complete )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499597331087358695)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27499595755424358694)
,p_button_name=>'COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_complete )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-box-arrow-out-east'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499590656833358690)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27499587793513358687)
,p_button_name=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_static_id=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'not apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )',
'and apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499556125449358673)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499553493566358672)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499559267219358675)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499556958230358673)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499562129386358676)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499559978336358675)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499565058990358677)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499562832964358676)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499568037029358678)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499565890878358677)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499570896359358679)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499568785407358678)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499573293891358680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499571550817358679)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499574606829358681)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499573615528358681)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499586678172358687)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499591013064358690)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499587793513358687)
,p_button_name=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_static_id=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27499593073159358691)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27499591825267358691)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27499625334708358712)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P3_TASK_ID:&P3_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499534214835358655)
,p_name=>'P3_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499534618290358655)
,p_name=>'P3_CAN_UPDATE_PARAMS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499554568511358672)
,p_name=>'P3_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499553493566358672)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P3_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499557797060358674)
,p_name=>'P3_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499556958230358673)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P3_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499560652870358675)
,p_name=>'P3_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499559978336358675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P3_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499563769666358676)
,p_name=>'P3_REQUEST_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499562832964358676)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499566591406358678)
,p_name=>'P3_SUBMIT_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499565890878358677)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499569511697358679)
,p_name=>'P3_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499568785407358678)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499571907722358680)
,p_name=>'P3_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499571550817358679)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P3_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499582395835358685)
,p_name=>'P3_PARAM_STATIC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499583283303358685)
,p_name=>'P3_PARAM_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499583914345358685)
,p_name=>'P3_PARAM_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499584776985358686)
,p_name=>'P3_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499585571929358686)
,p_name=>'P3_IS_REQUIRED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27499581628021358684)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499591460237358690)
,p_name=>'P3_ALL_COMMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27499587793513358687)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P3_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499592275890358691)
,p_name=>'P3_COMMENT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499591825267358691)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27499595396664358694)
,p_name=>'P3_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27499593466289358692)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P3_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(27499535075921358656)
,p_computation_sequence=>10
,p_computation_item=>'P3_CAN_UPDATE_PARAMS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case ',
'    when apex_human_task.is_allowed (',
'            p_task_id   => :P3_TASK_ID,',
'            p_operation => apex_human_task.c_task_op_set_params )',
'    then ''Y''',
'    else ''N''',
'end'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499616542140358707)
,p_validation_name=>'Delegate'
,p_validation_sequence=>10
,p_validation=>'P3_NEW_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27499556125449358673)
,p_associated_item=>wwv_flow_imp.id(27499554568511358672)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499616902462358707)
,p_validation_name=>'Request Information'
,p_validation_sequence=>20
,p_validation=>'P3_REQUEST_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(27499565058990358677)
,p_associated_item=>wwv_flow_imp.id(27499563769666358676)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499617309273358707)
,p_validation_name=>'Submit Information'
,p_validation_sequence=>30
,p_validation=>'P3_SUBMIT_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(27499568037029358678)
,p_associated_item=>wwv_flow_imp.id(27499566591406358678)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499617742651358708)
,p_validation_name=>'Invite Participant'
,p_validation_sequence=>40
,p_validation=>'P3_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27499570896359358679)
,p_associated_item=>wwv_flow_imp.id(27499569511697358679)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499618198129358708)
,p_validation_name=>'Remove Participant'
,p_validation_sequence=>50
,p_validation=>'P3_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27499573293891358680)
,p_associated_item=>wwv_flow_imp.id(27499571907722358680)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499618590256358708)
,p_validation_name=>'Update Parameter'
,p_validation_sequence=>60
,p_validation=>'P3_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_validation_condition=>':REQUEST = ''UPDATE_PARAMETER'' and :P3_IS_REQUIRED = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(27499584776985358686)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27499618990836358708)
,p_validation_name=>'Add Comment'
,p_validation_sequence=>70
,p_validation=>'P3_COMMENT_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a comment'
,p_when_button_pressed=>wwv_flow_imp.id(27499593073159358691)
,p_associated_item=>wwv_flow_imp.id(27499592275890358691)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499597753987358695)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499598181090358696)
,p_event_id=>wwv_flow_imp.id(27499597753987358695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499587793513358687)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499599569531358697)
,p_name=>'Edit Parameter'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.parameter'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499599956871358697)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499581628021358684)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499600494236358697)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27499586678172358687)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499600918488358697)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PARAM_STATIC_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499601421020358698)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PARAM_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499601953924358698)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_PARAM_VALUE,P3_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499602499627358698)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_IS_REQUIRED'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-required")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499602959411358699)
,p_event_id=>wwv_flow_imp.id(27499599569531358697)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499615108343358706)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P3_NEW_VALUE.value != apex.items.P3_PARAM_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499615513498358706)
,p_event_id=>wwv_flow_imp.id(27499615108343358706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27499586678172358687)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499616001064358707)
,p_event_id=>wwv_flow_imp.id(27499615108343358706)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27499586678172358687)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499598686019358696)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499599010127358696)
,p_event_id=>wwv_flow_imp.id(27499598686019358696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499593466289358692)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499603442073358699)
,p_name=>'Add Comment'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499590656833358690)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499603845463358699)
,p_event_id=>wwv_flow_imp.id(27499603442073358699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499591825267358691)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499604361569358700)
,p_name=>'Submit Information'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499591013064358690)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499604764373358700)
,p_event_id=>wwv_flow_imp.id(27499604361569358700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499565890878358677)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499605247558358700)
,p_name=>'Cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499596150970358694)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499605627622358700)
,p_event_id=>wwv_flow_imp.id(27499605247558358700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499606186853358701)
,p_name=>'Close Delegate Dialog'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499555451080358673)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499606519052358701)
,p_event_id=>wwv_flow_imp.id(27499606186853358701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499553493566358672)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499607042286358701)
,p_name=>'Close Change Priority Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499558689514358674)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499607421350358701)
,p_event_id=>wwv_flow_imp.id(27499607042286358701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499556958230358673)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499607906216358702)
,p_name=>'Close Change Due Date Dialog'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499561475458358675)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499608396643358702)
,p_event_id=>wwv_flow_imp.id(27499607906216358702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499559978336358675)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499608827116358702)
,p_name=>'Close Request Information Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499564539844358677)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499609234831358702)
,p_event_id=>wwv_flow_imp.id(27499608827116358702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499562832964358676)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499609766113358703)
,p_name=>'Close Submit Information Dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499567352711358678)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499610126632358703)
,p_event_id=>wwv_flow_imp.id(27499609766113358703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499565890878358677)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499610632956358703)
,p_name=>'Close Invite Participant Dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499570304708358679)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499611038429358703)
,p_event_id=>wwv_flow_imp.id(27499610632956358703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499568785407358678)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499611508935358704)
,p_name=>'Close Remove Participant Dialog'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499572638189358680)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499611998677358704)
,p_event_id=>wwv_flow_imp.id(27499611508935358704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499571550817358679)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499612430737358704)
,p_name=>'Close Cancel Task Dialog'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499574196595358681)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499612824760358704)
,p_event_id=>wwv_flow_imp.id(27499612430737358704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499573615528358681)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499613392790358705)
,p_name=>'Close Edit Parameter Dialog'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499586157024358686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499613740044358705)
,p_event_id=>wwv_flow_imp.id(27499613392790358705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499581628021358684)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27499614290417358705)
,p_name=>'Close Add Comment Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27499592619045358691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27499614623452358706)
,p_event_id=>wwv_flow_imp.id(27499614290417358705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27499591825267358691)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499619336246358708)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_09=>'P3_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RENEW'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task renewed'
,p_internal_uid=>27499619336246358708
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499619746912358709)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P3_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499596509732358695)
,p_internal_uid=>27499619746912358709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499620139347358709)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Complete'
,p_attribute_01=>'COMPLETE_TASK'
,p_attribute_02=>'P3_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499597331087358695)
,p_process_success_message=>'Task completed'
,p_internal_uid=>27499620139347358709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499620574949358709)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P3_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RELEASE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>27499620574949358709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499620956108358709)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_04=>'P3_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499556125449358673)
,p_process_success_message=>'Task delegated to &P3_NEW_OWNER!HTML.'
,p_internal_uid=>27499620956108358709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499621391398358710)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_05=>'P3_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499559267219358675)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>27499621391398358710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499621703391358710)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_06=>'P3_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499562129386358676)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>27499621703391358710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499622128990358710)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_03=>'&P3_REQUEST_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499565058990358677)
,p_process_success_message=>'Information requested'
,p_internal_uid=>27499622128990358710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499622540380358710)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_03=>'&P3_SUBMIT_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499568037029358678)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>27499622540380358710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499622969079358710)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_04=>'P3_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499570896359358679)
,p_process_success_message=>'Participant &P3_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>27499622969079358710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499623343497358711)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_04=>'P3_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499573293891358680)
,p_process_success_message=>'Participant &P3_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>27499623343497358711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499623706744358711)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P3_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499574606829358681)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>27499623706744358711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499624141404358711)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_10=>'P3_PARAM_STATIC_ID'
,p_attribute_11=>'P3_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499586678172358687)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>27499624141404358711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499624574597358711)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Add Comment'
,p_attribute_01=>'ADD_TASK_COMMENT'
,p_attribute_02=>'P3_TASK_ID'
,p_attribute_03=>'&P3_COMMENT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27499593073159358691)
,p_process_success_message=>'Comment added'
,p_internal_uid=>27499624574597358711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27499624967242358712)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE,ADD_COMMENT'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>27499624967242358712
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(27499546871351358667)
,p_region_id=>wwv_flow_imp.id(27499535492174358656)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(27499580787497358684)
,p_region_id=>wwv_flow_imp.id(27499575189482358681)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="parameter" data-id="&PARAM_STATIC_ID!ATTR." data-label="&PARAM_LABEL!ATTR." data-value="&PARAM_VALUE!ATTR." data-required="&IS_REQUIRED!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':IS_UPDATABLE = ''Y'' and :P3_CAN_UPDATE_PARAMS = ''Y'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499547336774358667)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Renew Task'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$renew?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_renew )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499547995783358668)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Release'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$release?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_release )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499548554071358669)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Delegate'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$delegate?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499549127068358669)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Priority'
,p_display_sequence=>40
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_priority?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499549950623358670)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Due Date'
,p_display_sequence=>50
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_due_date?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499550520261358670)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Request Information'
,p_display_sequence=>60
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$request_info?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499551106748358670)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Invite Participant'
,p_display_sequence=>70
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$add_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499551790126358671)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Remove Participant'
,p_display_sequence=>80
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$remove_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27499552532585358671)
,p_component_action_id=>wwv_flow_imp.id(27499546871351358667)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Cancel Task'
,p_display_sequence=>90
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$cancel?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P3_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Feedback Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(() => {',
'    apex.jQuery("a.taskActionMenu").each((index, item) => {',
'        const element = apex.jQuery(item);',
'        const actionName = decodeURI(element.attr("href")).match(/\$([^?]+)/)[1];',
'        const actionLabel = element.text();',
'        apex.actions.add({',
'            name: actionName,',
'            label: actionLabel,',
'            action: (event, element, args) => {',
'                if (args.do === "submit") {',
'                    apex.page.submit(actionName.toUpperCase());',
'                }',
'                else if (args.do === "openRegion") {',
'                    apex.theme.openRegion(actionName.toUpperCase());',
'                }',
'            }',
'        });',
'    });',
'});'))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500754954750653907)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P4_TASK_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if ACTUAL_OWNER/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.ASSIGNED_TO_USER 0=&ACTUAL_OWNER!HTML.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '{if OUTCOME/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &OUTCOME.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500755339557653908)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500755822719653909)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500756378402653909)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500756883931653910)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500757395034653910)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500757848541653911)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500758341655653911)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500758882019653912)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500759328392653912)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500759851997653913)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500760320327653913)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500760870267653913)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500761391147653914)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500761805298653914)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500762389167653915)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500762815227653915)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500763365988653916)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500763864202653916)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500764367795653916)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500764865797653917)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500765353593653917)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500765890881653918)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500772249874653924)
,p_plug_name=>'Delegate'
,p_region_name=>'DELEGATE'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500773893244653926)
,p_plug_name=>'Priority'
,p_region_name=>'SET_PRIORITY'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500775471667653927)
,p_plug_name=>'Due'
,p_region_name=>'SET_DUE_DATE'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500777060525653928)
,p_plug_name=>'Request Information'
,p_region_name=>'REQUEST_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500778651173653930)
,p_plug_name=>'Submit Information'
,p_region_name=>'SUBMIT_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500780205693653931)
,p_plug_name=>'Invite Participant'
,p_region_name=>'ADD_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500781836790653932)
,p_plug_name=>'Remove Participant'
,p_region_name=>'REMOVE_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500783463105653934)
,p_plug_name=>'Cancel Task'
,p_region_name=>'CANCEL'
,p_parent_plug_id=>wwv_flow_imp.id(27500754954750653907)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500784665888653935)
,p_plug_name=>'View Appointment Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_static_id,',
'       param_label,',
'       param_value,',
'       is_updatable,',
'       is_required',
'  from apex_task_parameters',
' where task_id = :P4_TASK_ID',
'   and is_visible = ''Y''',
' order by param_label;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P4_TASK_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_task_parameters',
' where task_id = :P4_TASK_ID'))
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'HIDE_BORDERS', 'N',
  'OVERLINE', '&PARAM_LABEL.',
  'REMOVE_PADDING', 'N',
  'TITLE', '&PARAM_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500785066086653935)
,p_name=>'PARAM_STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500785537566653935)
,p_name=>'PARAM_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500786035342653936)
,p_name=>'PARAM_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500786587817653936)
,p_name=>'IS_UPDATABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_UPDATABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500787074362653937)
,p_name=>'IS_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500788061042653938)
,p_plug_name=>'Edit Parameter'
,p_parent_plug_id=>wwv_flow_imp.id(27500784665888653935)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P4_CAN_UPDATE_PARAMS = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500791697611653941)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_initials,',
'       ''u-color-''||ora_hash(created_by,45)  as user_css_class,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date',
'  from apex_task_comments',
' where nvl(:P4_ALL_COMMENTS, ''N'') = ''N''',
'       and task_id = :P4_TASK_ID',
'    or nvl(:P4_ALL_COMMENTS, ''N'') = ''Y''',
'       and task_id in ( ',
'                select task_id',
'                  from apex_tasks',
'               connect by prior previous_task_id = task_id',
'                 start with task_id = :P4_TASK_ID )',
' order by created_on desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P4_TASK_ID,P4_ALL_COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No Comments'
,p_no_data_found_icon_classes=>'fa-comments-o fa-lg'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'AVATAR_CSS_CLASSES', '&USER_CSS_CLASS.',
  'AVATAR_DESCRIPTION', '&USER_NAME.',
  'AVATAR_INITIALS', 'USER_INITIALS',
  'AVATAR_SHAPE', 't-Avatar--circle',
  'AVATAR_TYPE', 'initials',
  'COMMENT_DATE', 'COMMENT_DATE',
  'COMMENT_TEXT', 'COMMENT_TEXT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500792023009653941)
,p_name=>'USER_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500792539693653942)
,p_name=>'USER_CSS_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CSS_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500793041392653942)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500793571752653943)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500794032912653943)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500795736132653945)
,p_plug_name=>'Add Comment'
,p_parent_plug_id=>wwv_flow_imp.id(27500791697611653941)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500797350286653946)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       event_creator,',
'       event_timestamp',
'  from table ( apex_human_task.get_task_history (',
'                   p_task_id     => :P4_TASK_ID,',
'                   p_include_all => :P4_ALL_HISTORY ) )',
' order by event_timestamp desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P4_TASK_ID,P4_ALL_HISTORY'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'EVENT_TIMESTAMP',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'EVENT_CREATOR')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500797779045653947)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500798280478653947)
,p_name=>'EVENT_CREATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CREATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27500798764072653948)
,p_name=>'EVENT_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIMESTAMP'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27500799615559653949)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27860801953117855120)
,p_plug_name=>'Your Feedback'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT'
,p_query_where=>'booking_id = :P4_BOOKING_ID'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500773035107653925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500772249874653924)
,p_button_name=>'CLOSE_DELEGATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500774603118653926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500773893244653926)
,p_button_name=>'CLOSE_SET_PRIORITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500776259135653928)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500775471667653927)
,p_button_name=>'CLOSE_SET_DUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500777833684653929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500777060525653928)
,p_button_name=>'CLOSE_REQUEST_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500779483260653930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500778651173653930)
,p_button_name=>'CLOSE_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500781077424653932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500780205693653931)
,p_button_name=>'CLOSE_INVITE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500782659889653933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500781836790653932)
,p_button_name=>'CLOSE_REMOVE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500783862110653934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500783463105653934)
,p_button_name=>'CLOSE_CANCEL_TASK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500790443114653940)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_button_name=>'CLOSE_UPDATE_PARAMETER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500796580626653946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500795736132653945)
,p_button_name=>'CLOSE_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500800022730653949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500799615559653949)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500800409861653949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500799615559653949)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500800867835653950)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27500799615559653949)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_complete )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500801243847653950)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27500799615559653949)
,p_button_name=>'COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_complete )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-box-arrow-out-east'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500794557802653943)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27500791697611653941)
,p_button_name=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_static_id=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'not apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )',
'and apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500773499649653925)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500772249874653924)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500775068673653927)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500773893244653926)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500776604961653928)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500775471667653927)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500778270882653929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500777060525653928)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500779809717653931)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500778651173653930)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500781460238653932)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500780205693653931)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500783080910653934)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500781836790653932)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500784250647653934)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500783463105653934)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500790801317653940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500794957731653944)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500791697611653941)
,p_button_name=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_static_id=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27500796991844653946)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27500795736132653945)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(27501229272652653968)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P4_TASK_ID:&P4_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500753775166653905)
,p_name=>'P4_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500754178690653906)
,p_name=>'P4_CAN_UPDATE_PARAMS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500772654190653924)
,p_name=>'P4_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500772249874653924)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P4_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500774220848653926)
,p_name=>'P4_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500773893244653926)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P4_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500775893497653927)
,p_name=>'P4_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500775471667653927)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P4_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500777467933653929)
,p_name=>'P4_REQUEST_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500777060525653928)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500779020208653930)
,p_name=>'P4_SUBMIT_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500778651173653930)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500780666235653931)
,p_name=>'P4_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500780205693653931)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500782244539653933)
,p_name=>'P4_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500781836790653932)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P4_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500788448833653938)
,p_name=>'P4_PARAM_STATIC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500788881761653938)
,p_name=>'P4_PARAM_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500789206080653939)
,p_name=>'P4_PARAM_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500789697931653939)
,p_name=>'P4_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500790020540653940)
,p_name=>'P4_IS_REQUIRED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27500788061042653938)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500795344524653944)
,p_name=>'P4_ALL_COMMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27500791697611653941)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P4_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500796116575653945)
,p_name=>'P4_COMMENT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500795736132653945)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27500799237490653948)
,p_name=>'P4_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27500797350286653946)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P4_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860802116749855122)
,p_name=>'P4_BOOKING_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_source=>'BOOKING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860802226676855123)
,p_name=>'P4_PATIENT_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Patient Username'
,p_source=>'PATIENT_USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
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
 p_id=>wwv_flow_imp.id(27860802364571855124)
,p_name=>'P4_DOCTOR_NO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Doctor No'
,p_source=>'DOCTOR_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860802439209855125)
,p_name=>'P4_SCHEDULE'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Schedule'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'SCHEDULE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(27860802557248855126)
,p_name=>'P4_PATIENT_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Patient Email'
,p_source=>'PATIENT_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
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
 p_id=>wwv_flow_imp.id(27860802611671855127)
,p_name=>'P4_DOCTOR_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Doctor Email'
,p_source=>'DOCTOR_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
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
 p_id=>wwv_flow_imp.id(27860802759606855128)
,p_name=>'P4_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(27860802803294855129)
,p_name=>'P4_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_source=>'FEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860802900392855130)
,p_name=>'P4_WORKFLOW_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_item_source_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_source=>'WORKFLOW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860803117780855132)
,p_name=>'P4_RATING'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Excellent;1,Good;2,Satisfactory;3,Unsatisfactory;4'
,p_lov_display_null=>'YES'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860803209979855133)
,p_name=>'P4_FEEDBACK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(27860801953117855120)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(27500754596038653906)
,p_computation_sequence=>10
,p_computation_item=>'P4_CAN_UPDATE_PARAMS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case ',
'    when apex_human_task.is_allowed (',
'            p_task_id   => :P4_TASK_ID,',
'            p_operation => apex_human_task.c_task_op_set_params )',
'    then ''Y''',
'    else ''N''',
'end'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500820409545653962)
,p_validation_name=>'Delegate'
,p_validation_sequence=>10
,p_validation=>'P4_NEW_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27500773499649653925)
,p_associated_item=>wwv_flow_imp.id(27500772654190653924)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500820829613653963)
,p_validation_name=>'Request Information'
,p_validation_sequence=>20
,p_validation=>'P4_REQUEST_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(27500778270882653929)
,p_associated_item=>wwv_flow_imp.id(27500777467933653929)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500821298851653963)
,p_validation_name=>'Submit Information'
,p_validation_sequence=>30
,p_validation=>'P4_SUBMIT_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(27500779809717653931)
,p_associated_item=>wwv_flow_imp.id(27500779020208653930)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500821672374653963)
,p_validation_name=>'Invite Participant'
,p_validation_sequence=>40
,p_validation=>'P4_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27500781460238653932)
,p_associated_item=>wwv_flow_imp.id(27500780666235653931)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500822048546653963)
,p_validation_name=>'Remove Participant'
,p_validation_sequence=>50
,p_validation=>'P4_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(27500783080910653934)
,p_associated_item=>wwv_flow_imp.id(27500782244539653933)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500822462955653964)
,p_validation_name=>'Update Parameter'
,p_validation_sequence=>60
,p_validation=>'P4_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_validation_condition=>':REQUEST = ''UPDATE_PARAMETER'' and :P4_IS_REQUIRED = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(27500789697931653939)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27500822889125653964)
,p_validation_name=>'Add Comment'
,p_validation_sequence=>70
,p_validation=>'P4_COMMENT_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a comment'
,p_when_button_pressed=>wwv_flow_imp.id(27500796991844653946)
,p_associated_item=>wwv_flow_imp.id(27500796116575653945)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500801674991653950)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500802044912653951)
,p_event_id=>wwv_flow_imp.id(27500801674991653950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500791697611653941)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500803478587653952)
,p_name=>'Edit Parameter'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.parameter'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500803827310653952)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500788061042653938)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500804315754653952)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27500790801317653940)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500804865666653953)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_PARAM_STATIC_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500805362561653953)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_PARAM_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500805842029653953)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_PARAM_VALUE,P4_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500806315865653953)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_IS_REQUIRED'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-required")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500806846988653954)
,p_event_id=>wwv_flow_imp.id(27500803478587653952)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500819010327653961)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P4_NEW_VALUE.value != apex.items.P4_PARAM_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500819415128653962)
,p_event_id=>wwv_flow_imp.id(27500819010327653961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27500790801317653940)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500819942591653962)
,p_event_id=>wwv_flow_imp.id(27500819010327653961)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(27500790801317653940)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500802515801653951)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500802928119653951)
,p_event_id=>wwv_flow_imp.id(27500802515801653951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500797350286653946)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500807373943653954)
,p_name=>'Add Comment'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500794557802653943)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500807794567653954)
,p_event_id=>wwv_flow_imp.id(27500807373943653954)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500795736132653945)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500808248633653954)
,p_name=>'Submit Information'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500794957731653944)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500808617071653955)
,p_event_id=>wwv_flow_imp.id(27500808248633653954)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500778651173653930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500809166315653955)
,p_name=>'Cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500800022730653949)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500809575120653955)
,p_event_id=>wwv_flow_imp.id(27500809166315653955)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500810077880653956)
,p_name=>'Close Delegate Dialog'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500773035107653925)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500810484842653956)
,p_event_id=>wwv_flow_imp.id(27500810077880653956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500772249874653924)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500810997177653956)
,p_name=>'Close Change Priority Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500774603118653926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500811361986653957)
,p_event_id=>wwv_flow_imp.id(27500810997177653956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500773893244653926)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500811874572653957)
,p_name=>'Close Change Due Date Dialog'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500776259135653928)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500812241483653957)
,p_event_id=>wwv_flow_imp.id(27500811874572653957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500775471667653927)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500812701970653957)
,p_name=>'Close Request Information Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500777833684653929)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500813157187653958)
,p_event_id=>wwv_flow_imp.id(27500812701970653957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500777060525653928)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500813672049653958)
,p_name=>'Close Submit Information Dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500779483260653930)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500814093764653958)
,p_event_id=>wwv_flow_imp.id(27500813672049653958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500778651173653930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500814599573653959)
,p_name=>'Close Invite Participant Dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500781077424653932)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500814981985653959)
,p_event_id=>wwv_flow_imp.id(27500814599573653959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500780205693653931)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500815487495653959)
,p_name=>'Close Remove Participant Dialog'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500782659889653933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500815835998653959)
,p_event_id=>wwv_flow_imp.id(27500815487495653959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500781836790653932)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500816332800653960)
,p_name=>'Close Cancel Task Dialog'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500783862110653934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500816753224653960)
,p_event_id=>wwv_flow_imp.id(27500816332800653960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500783463105653934)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500817264025653960)
,p_name=>'Close Edit Parameter Dialog'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500790443114653940)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500817621305653960)
,p_event_id=>wwv_flow_imp.id(27500817264025653960)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500788061042653938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27500818142187653961)
,p_name=>'Close Add Comment Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27500796580626653946)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27500818500098653961)
,p_event_id=>wwv_flow_imp.id(27500818142187653961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27500795736132653945)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500823289125653964)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_09=>'P4_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RENEW'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task renewed'
,p_internal_uid=>27500823289125653964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500823607968653965)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P4_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500800409861653949)
,p_internal_uid=>27500823607968653965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27860803421946855135)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into patient_feedback (',
'    patient_name,',
'    doctor_no,',
'    appointment,',
'    feedback,',
'    rating,',
'    created_at,',
'    updated_at)',
'values',
'    (:P4_PATIENT_USERNAME,',
'    :P4_DOCTOR_NO,',
'    to_timestamp_tz(:P4_SCHEDULE,''DD-MON-YYYY HH24:MI:SS''),',
'    :P4_FEEDBACK,',
'    :P4_RATING,',
'    systimestamp,',
'    systimestamp);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500801243847653950)
,p_internal_uid=>27860803421946855135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500824014472653965)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Complete'
,p_attribute_01=>'COMPLETE_TASK'
,p_attribute_02=>'P4_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500801243847653950)
,p_process_success_message=>'Task completed'
,p_internal_uid=>27500824014472653965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500824417979653965)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P4_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RELEASE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>27500824417979653965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500824861304653965)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_04=>'P4_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500773499649653925)
,p_process_success_message=>'Task delegated to &P4_NEW_OWNER!HTML.'
,p_internal_uid=>27500824861304653965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500825277802653966)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_05=>'P4_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500775068673653927)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>27500825277802653966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500825689050653966)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_06=>'P4_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500776604961653928)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>27500825689050653966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500826015216653966)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_03=>'&P4_REQUEST_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500778270882653929)
,p_process_success_message=>'Information requested'
,p_internal_uid=>27500826015216653966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27500826405364653966)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_03=>'&P4_SUBMIT_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500779809717653931)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>27500826405364653966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27501226882028653967)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_04=>'P4_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500781460238653932)
,p_process_success_message=>'Participant &P4_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>27501226882028653967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27501227261600653967)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_04=>'P4_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500783080910653934)
,p_process_success_message=>'Participant &P4_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>27501227261600653967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27501227694802653967)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P4_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500784250647653934)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>27501227694802653967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27501228079201653967)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_10=>'P4_PARAM_STATIC_ID'
,p_attribute_11=>'P4_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500790801317653940)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>27501228079201653967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27501228429866653968)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Add Comment'
,p_attribute_01=>'ADD_TASK_COMMENT'
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_03=>'&P4_COMMENT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(27500796991844653946)
,p_process_success_message=>'Comment added'
,p_internal_uid=>27501228429866653968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27501228821203653968)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE,ADD_COMMENT'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>27501228821203653968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27860803395509855134)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Feedback Details In Feedback Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select booking_id into :P4_BOOKING_ID',
'from appointment where booking_id = (select',
'     param_value',
'from apex_task_parameters',
'where task_id = :P4_TASK_ID and param_static_id = ''BOOKING_ID'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27860803395509855134
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27860802082625855121)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(27860801953117855120)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Feedback Details'
,p_internal_uid=>27860802082625855121
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(27500766398449653918)
,p_region_id=>wwv_flow_imp.id(27500754954750653907)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(27500787533811653937)
,p_region_id=>wwv_flow_imp.id(27500784665888653935)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="parameter" data-id="&PARAM_STATIC_ID!ATTR." data-label="&PARAM_LABEL!ATTR." data-value="&PARAM_VALUE!ATTR." data-required="&IS_REQUIRED!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':IS_UPDATABLE = ''Y'' and :P4_CAN_UPDATE_PARAMS = ''Y'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500766897357653919)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Renew Task'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$renew?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_renew )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500767470126653920)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Release'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$release?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_release )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500768072891653921)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Delegate'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$delegate?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500768609905653921)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Priority'
,p_display_sequence=>40
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_priority?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500769258325653922)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Due Date'
,p_display_sequence=>50
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_due_date?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500769806671653922)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Request Information'
,p_display_sequence=>60
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$request_info?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500770453775653922)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Invite Participant'
,p_display_sequence=>70
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$add_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500771059278653923)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Remove Participant'
,p_display_sequence=>80
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$remove_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(27500771617342653923)
,p_component_action_id=>wwv_flow_imp.id(27500766398449653918)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Cancel Task'
,p_display_sequence=>90
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$cancel?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P4_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'New Appointment'
,p_alias=>'NEW-APPOINTMENT'
,p_step_title=>'New Appointment'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27860800564823855106)
,p_plug_name=>'Patient Appointment Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27957642080787533850)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(27487632898131078477)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27860801244945855113)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860800698636855107)
,p_name=>'P5_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860800713801855108)
,p_name=>'P5_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860800898444855109)
,p_name=>'P5_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_prompt=>'Problem'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Psychatric;PSYCHATRY,Cancer;ONCOLOGY,ENT;ENT,Gastroentric;GASTRO,Cardiac;CARDIOLOGY,General;GENERAL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860800962180855110)
,p_name=>'P5_APPT_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_prompt=>'Appointment Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860801086277855111)
,p_name=>'P5_DOC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_prompt=>'Doc'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select dname from doctor where specialization = :P5_DESC'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P5_DESC'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27860801194598855112)
,p_name=>'P5_AGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27860800564823855106)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27860801309712855114)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Doctor Appointment Workflow'
,p_attribute_01=>'START'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27860801309712855114
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Patient Tasks'
,p_alias=>'PATIENT-TASKS'
,p_step_title=>'Patient Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28199540245876852321)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(27487632898131078477)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28199541398535852325)
,p_plug_name=>'My Tasks - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(28199540245876852321)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(28199541460468852325)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'maximum_suggestion_chips', '0',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28199541460468852325)
,p_plug_name=>'My Tasks - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context            => ''MY_TASKS'',',
'                   p_show_expired_tasks => :P6_SHOW_EXPIRED',
'                   --, p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "DUE_ON",',
'            "expr": "priority asc, due_on asc nulls last"',
'        }',
'    ],',
'    "itemName": "P6_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P6_SHOW_EXPIRED'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Tasks'
,p_no_data_found_icon_classes=>'fa-clipboard-check-alt fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'task'
,p_entity_title_plural=>'tasks'
,p_landmark_type=>'main'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'REMOVE_PADDING', 'N',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199552140208852334)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199552634598852335)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199553197027852335)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199553604307852336)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199554157143852336)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199554670138852336)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199555142896852337)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199555633762852337)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199556177687852337)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199556604259852338)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199557124995852338)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199557650101852338)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199558174466852339)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199558671413852339)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199559186572852339)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199559694756852340)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199560143677852340)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199560636112852341)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199561169145852341)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199561678934852341)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199562195695852342)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199562625710852342)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199540941399852325)
,p_name=>'P6_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199541849491852326)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199542204771852327)
,p_name=>'P6_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Due'
,p_source=>'DUE_IN_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov=>'.'||wwv_flow_imp.id(28199542382797852327)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199545354625852329)
,p_name=>'P6_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Type'
,p_source=>'TASK_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199546029004852329)
,p_name=>'P6_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Category'
,p_source=>'TASK_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199546478891852330)
,p_name=>'P6_PRIORITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199546845992852330)
,p_name=>'P6_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199547507077852330)
,p_name=>'P6_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199547995473852331)
,p_name=>'P6_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Application'
,p_source=>'DETAILS_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199548361640852331)
,p_name=>'P6_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199548753325852331)
,p_name=>'P6_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(28199548830123852331)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199551400182852333)
,p_name=>'P6_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(28199541398535852325)
,p_prompt=>'Owner'
,p_source=>'ACTUAL_OWNER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199565112912852345)
,p_name=>'P6_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28199541460468852325)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort by'
,p_source=>'DUE_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Due Date;DUE_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199565535995852346)
,p_name=>'P6_SHOW_EXPIRED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28199541460468852325)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Show expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199565971965852346)
,p_name=>'Claim'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.claim'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199566314762852346)
,p_event_id=>wwv_flow_imp.id(28199565971965852346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199566806974852347)
,p_event_id=>wwv_flow_imp.id(28199565971965852346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.claim_task (',
'    p_task_id   => :P6_TASK_ID );',
''))
,p_attribute_02=>'P6_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199567340599852347)
,p_event_id=>wwv_flow_imp.id(28199565971965852346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task claimed'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199567827699852348)
,p_event_id=>wwv_flow_imp.id(28199565971965852346)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541398535852325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199568311479852348)
,p_event_id=>wwv_flow_imp.id(28199565971965852346)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541460468852325)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199568827896852348)
,p_name=>'Approve'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.approve'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199569244162852348)
,p_event_id=>wwv_flow_imp.id(28199568827896852348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199569780784852349)
,p_event_id=>wwv_flow_imp.id(28199568827896852348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.approve_task (',
'    p_task_id   => :P6_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P6_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199570265836852349)
,p_event_id=>wwv_flow_imp.id(28199568827896852348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task approved'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199570730977852349)
,p_event_id=>wwv_flow_imp.id(28199568827896852348)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541398535852325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199571204119852349)
,p_event_id=>wwv_flow_imp.id(28199568827896852348)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541460468852325)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199574635903852351)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(28199541460468852325)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199575056800852351)
,p_event_id=>wwv_flow_imp.id(28199574635903852351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541460468852325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199575556334852352)
,p_event_id=>wwv_flow_imp.id(28199574635903852351)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541398535852325)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199571791243852350)
,p_name=>'Reject'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.reject'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199572111956852350)
,p_event_id=>wwv_flow_imp.id(28199571791243852350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199572693437852350)
,p_event_id=>wwv_flow_imp.id(28199571791243852350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.reject_task (',
'    p_task_id   => :P6_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P6_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199573170126852350)
,p_event_id=>wwv_flow_imp.id(28199571791243852350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task rejected'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199573665537852351)
,p_event_id=>wwv_flow_imp.id(28199571791243852350)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541398535852325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199574193648852351)
,p_event_id=>wwv_flow_imp.id(28199571791243852350)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541460468852325)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199576036986852352)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_SHOW_EXPIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199576490286852352)
,p_event_id=>wwv_flow_imp.id(28199576036986852352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541460468852325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199576910035852352)
,p_event_id=>wwv_flow_imp.id(28199576036986852352)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199541398535852325)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199563140518852342)
,p_region_id=>wwv_flow_imp.id(28199541460468852325)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&DETAILS_LINK_TARGET.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199563696759852343)
,p_region_id=>wwv_flow_imp.id(28199541460468852325)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362316605839802174
,p_label=>'Claim'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-user-plus u-hot-text'
,p_action_css_classes=>'claim'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':STATE_CODE = ''UNASSIGNED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199564103044852344)
,p_region_id=>wwv_flow_imp.id(28199541460468852325)
,p_position_id=>362316004162771045
,p_display_sequence=>30
,p_template_id=>362316605839802174
,p_label=>'Approve'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-check-square u-success-text'
,p_action_css_classes=>'approve'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199564696060852345)
,p_region_id=>wwv_flow_imp.id(28199541460468852325)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Reject'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'reject'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Doctor Tasks'
,p_alias=>'DOCTOR-TASKS'
,p_step_title=>'Doctor Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28199592051969857232)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(27487632898131078477)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28199593280006857236)
,p_plug_name=>'My Tasks - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(28199592051969857232)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(28199593339937857236)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'maximum_suggestion_chips', '0',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28199593339937857236)
,p_plug_name=>'My Tasks - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context            => ''MY_TASKS'',',
'                   p_show_expired_tasks => :P7_SHOW_EXPIRED',
'                   --, p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "DUE_ON",',
'            "expr": "priority asc, due_on asc nulls last"',
'        }',
'    ],',
'    "itemName": "P7_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P7_SHOW_EXPIRED'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Tasks'
,p_no_data_found_icon_classes=>'fa-clipboard-check-alt fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'task'
,p_entity_title_plural=>'tasks'
,p_landmark_type=>'main'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'REMOVE_PADDING', 'N',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199598463438857241)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199598927561857241)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199599475832857242)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199599952552857242)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199600438767857242)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199600952152857243)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199601425139857243)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199601977239857243)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199602498925857244)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199602969625857244)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199603406446857244)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199603942016857245)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199604441639857245)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199604937716857246)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199605499786857246)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199605949668857246)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199606437731857247)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199606912928857247)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199607410711857247)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199607922454857248)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199608493772857248)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28199608967203857248)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199592860057857233)
,p_name=>'P7_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199593786012857236)
,p_name=>'P7_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199594163456857237)
,p_name=>'P7_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Due'
,p_source=>'DUE_IN_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov=>'.'||wwv_flow_imp.id(28199542382797852327)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199594550988857237)
,p_name=>'P7_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Type'
,p_source=>'TASK_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199594953823857238)
,p_name=>'P7_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Category'
,p_source=>'TASK_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199595387388857238)
,p_name=>'P7_PRIORITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199595758646857238)
,p_name=>'P7_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199596127070857239)
,p_name=>'P7_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199596591460857239)
,p_name=>'P7_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Application'
,p_source=>'DETAILS_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199596931782857239)
,p_name=>'P7_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199597365309857240)
,p_name=>'P7_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(28199548830123852331)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199597768376857240)
,p_name=>'P7_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(28199593280006857236)
,p_prompt=>'Owner'
,p_source=>'ACTUAL_OWNER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199611462158857250)
,p_name=>'P7_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28199593339937857236)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort by'
,p_source=>'DUE_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Due Date;DUE_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28199611847235857251)
,p_name=>'P7_SHOW_EXPIRED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28199593339937857236)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Show expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199612232839857251)
,p_name=>'Claim'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.claim'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199612656204857251)
,p_event_id=>wwv_flow_imp.id(28199612232839857251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199613143412857252)
,p_event_id=>wwv_flow_imp.id(28199612232839857251)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.claim_task (',
'    p_task_id   => :P7_TASK_ID );',
''))
,p_attribute_02=>'P7_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199613647336857252)
,p_event_id=>wwv_flow_imp.id(28199612232839857251)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task claimed'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199614182459857252)
,p_event_id=>wwv_flow_imp.id(28199612232839857251)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593280006857236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199614664073857253)
,p_event_id=>wwv_flow_imp.id(28199612232839857251)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593339937857236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199615138709857253)
,p_name=>'Approve'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.approve'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199615554937857253)
,p_event_id=>wwv_flow_imp.id(28199615138709857253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199616064586857253)
,p_event_id=>wwv_flow_imp.id(28199615138709857253)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.approve_task (',
'    p_task_id   => :P7_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P7_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199616533613857254)
,p_event_id=>wwv_flow_imp.id(28199615138709857253)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task approved'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199617024955857254)
,p_event_id=>wwv_flow_imp.id(28199615138709857253)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593280006857236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199617578608857254)
,p_event_id=>wwv_flow_imp.id(28199615138709857253)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593339937857236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199620952840857256)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(28199593339937857236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199621347617857256)
,p_event_id=>wwv_flow_imp.id(28199620952840857256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593339937857236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199621817559857257)
,p_event_id=>wwv_flow_imp.id(28199620952840857256)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593280006857236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199618023789857255)
,p_name=>'Reject'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.reject'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199618431268857255)
,p_event_id=>wwv_flow_imp.id(28199618023789857255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199618917415857255)
,p_event_id=>wwv_flow_imp.id(28199618023789857255)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.reject_task (',
'    p_task_id   => :P7_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P7_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199619491603857255)
,p_event_id=>wwv_flow_imp.id(28199618023789857255)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task rejected'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199619907619857256)
,p_event_id=>wwv_flow_imp.id(28199618023789857255)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593280006857236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199620412565857256)
,p_event_id=>wwv_flow_imp.id(28199618023789857255)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593339937857236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28199622376480857257)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SHOW_EXPIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199622737627857257)
,p_event_id=>wwv_flow_imp.id(28199622376480857257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593339937857236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28199623257015857258)
,p_event_id=>wwv_flow_imp.id(28199622376480857257)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28199593280006857236)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199609466974857249)
,p_region_id=>wwv_flow_imp.id(28199593339937857236)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&DETAILS_LINK_TARGET.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199609991555857249)
,p_region_id=>wwv_flow_imp.id(28199593339937857236)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362316605839802174
,p_label=>'Claim'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-user-plus u-hot-text'
,p_action_css_classes=>'claim'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':STATE_CODE = ''UNASSIGNED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199610498659857250)
,p_region_id=>wwv_flow_imp.id(28199593339937857236)
,p_position_id=>362316004162771045
,p_display_sequence=>30
,p_template_id=>362316605839802174
,p_label=>'Approve'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-check-square u-success-text'
,p_action_css_classes=>'approve'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28199610981725857250)
,p_region_id=>wwv_flow_imp.id(28199593339937857236)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Reject'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'reject'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Patient Appointments & Feedbacks'
,p_alias=>'PATIENT-APPOINTMENTS-FEEDBACKS'
,p_step_title=>'Patient Appointments & Feedbacks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27860803553800855136)
,p_plug_name=>'Appointments'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'COMMENT_DATE', 'SCHEDULE',
  'COMMENT_TEXT', 'STATUS',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'DOCTOR_EMAIL')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860803645795855137)
,p_name=>'BOOKING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOKING_ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860803776643855138)
,p_name=>'PATIENT_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_USERNAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860803831610855139)
,p_name=>'DOCTOR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_NO'
,p_data_type=>'NUMBER'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860803905620855140)
,p_name=>'SCHEDULE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804065693855141)
,p_name=>'PATIENT_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_EMAIL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804175172855142)
,p_name=>'DOCTOR_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_EMAIL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804250830855143)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804381937855144)
,p_name=>'FEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEE'
,p_data_type=>'NUMBER'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804491627855145)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27860804586798855146)
,p_plug_name=>'Feedbacks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    pf.ID,',
'    pf.PATIENT_NAME,',
'    ''DR.'' || TO_CHAR(d.DNAME) AS DNAME,',
'    pf.APPOINTMENT,',
'    pf.FEEDBACK,',
'    pf.RATING,',
'    pf.CREATED_AT,',
'    pf.UPDATED_AT',
'FROM',
'    PATIENT_FEEDBACK pf',
'JOIN',
'    DOCTOR d ON pf.DOCTOR_NO = d.DNO',
'WHERE',
'    pf.PATIENT_NAME = :APP_USER;',
'',
'',
'',
'',
''))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'COMMENT_DATE', 'APPOINTMENT',
  'COMMENT_TEXT', 'FEEDBACK',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'DNAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804601776855147)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804730210855148)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804862584855149)
,p_name=>'DNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DNAME'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27860804932624855150)
,p_name=>'APPOINTMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250061927790239101)
,p_name=>'FEEDBACK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250062039360239102)
,p_name=>'RATING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATING'
,p_data_type=>'NUMBER'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250062178305239103)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250062209889239104)
,p_name=>'UPDATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_AT'
,p_data_type=>'TIMESTAMP_TZ'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28243639965684779435)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(27487632898131078477)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Monitor Appointment Workflows'
,p_alias=>'MONITOR-APPOINTMENT-WORKFLOWS'
,p_step_title=>'Monitor Appointment Workflows'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250853596234253836)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(27487632898131078477)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250854614916253837)
,p_plug_name=>'My Workflows - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(28250853596234253836)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(28250854791583253837)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250854791583253837)
,p_plug_name=>'My Workflows - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_id,',
'       workflow_def_name,',
'       workflow_def_app_name,',
'       title,',
'       initiator,',
'       state_code,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   --, p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "LAST_UPDATED_ON",',
'            "expr": "last_updated_on desc"',
'        }',
'    ],',
'    "itemName": "P9_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Workflows'
,p_no_data_found_icon_classes=>'fa-workflow fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'workflow'
,p_entity_title_plural=>'workflows'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250860757145253842)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250861556637253842)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250862201138253843)
,p_name=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250862771680253843)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250863271982253843)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250863955010253844)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250864502378253844)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250865119453253844)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250865660569253845)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250866196687253845)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250866693575253845)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250867193754253846)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250854229960253837)
,p_name=>'P9_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250855145755253838)
,p_name=>'P9_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250854614916253837)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250855593050253838)
,p_name=>'P9_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28250854614916253837)
,p_prompt=>'Type'
,p_source=>'WORKFLOW_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250855911455253838)
,p_name=>'P9_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(28250854614916253837)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250856710841253839)
,p_name=>'P9_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(28250854614916253837)
,p_prompt=>'Application'
,p_source=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250857199374253839)
,p_name=>'P9_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(28250854614916253837)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250857504707253840)
,p_name=>'P9_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(28250854614916253837)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(28250857627857253840)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250868790486253847)
,p_name=>'P9_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250854791583253837)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort By'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Last Update;LAST_UPDATED_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250872055342253849)
,p_name=>'Refresh - My Workflows - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(28250854791583253837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250872438446253849)
,p_event_id=>wwv_flow_imp.id(28250872055342253849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250854791583253837)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250872955257253850)
,p_event_id=>wwv_flow_imp.id(28250872055342253849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250854614916253837)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250869155616253847)
,p_name=>'Terminate'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.terminate'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250869592689253848)
,p_event_id=>wwv_flow_imp.id(28250869155616253847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_WORKFLOW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250870091887253848)
,p_event_id=>wwv_flow_imp.id(28250869155616253847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.terminate (',
'    p_instance_id => :P9_WORKFLOW_ID );'))
,p_attribute_02=>'P9_WORKFLOW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250870573603253848)
,p_event_id=>wwv_flow_imp.id(28250869155616253847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Workflow terminated'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250871098244253849)
,p_event_id=>wwv_flow_imp.id(28250869155616253847)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250854614916253837)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250871538674253849)
,p_event_id=>wwv_flow_imp.id(28250869155616253847)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250854791583253837)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28250867663464253846)
,p_region_id=>wwv_flow_imp.id(28250854791583253837)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,:P10_WORKFLOW_ID:&WORKFLOW_ID.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28250868107820253847)
,p_region_id=>wwv_flow_imp.id(28250854791583253837)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Terminate'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&WORKFLOW_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'terminate'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':state_code in (''ACTIVE'',''FAULTED'',''SUSPENDED'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Form on Appointment'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on Appointment'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250875386302253851)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title,',
'       workflow_def_name,',
'       initiator,',
'       created_ago,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context     => ''SINGLE_WORKFLOW'',',
'                   p_workflow_id => :P10_WORKFLOW_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250875762149253852)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250876279712253852)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250876719144253853)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250877267798253853)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250877795203253853)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250878271796253854)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250878785571253854)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select activity_id,',
'       type,',
'       name,',
'       state,',
'       error_message,',
'       due_on,',
'       retry_count,',
'       start_time,',
'       end_time,',
'       initcap(state) as badge_text,',
'       case state',
'           when ''WAITING''    then ''danger''',
'           when ''COMPLETED''  then ''success''',
'           when ''TERMINATED'' then ''warning''',
'           when ''FAULTED''    then ''danger''',
'       end as badge_state,',
'       ( select max(workflow_id)',
'           from apex_workflows w',
'          where w.parent_workflow_id = :P10_WORKFLOW_ID',
'            and w.parent_activity_id = a.activity_id ) as invoked_workflow_id',
'  from apex_workflow_activities a',
' where workflow_id = :P10_WORKFLOW_ID',
' order by start_time'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P10_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_STYLE', 't-Badge--outline',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', '&ERROR_MESSAGE.',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{case STATE/}',
    '    {when COMPLETED/}',
    '        &{APEX.WORKFLOW.COMPLETED_SINCE 0=&END_TIME.}.',
    '    {otherwise/}',
    '        &{APEX.WORKFLOW.STARTED_SINCE 0=&START_TIME.}.',
    '{endcase/}',
    '{if DUE_ON/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.DUE_SINCE 0=&DUE_ON.}.',
    '{endif/}',
    '{if RETRY_COUNT/}',
    '    {case RETRY_COUNT/}',
    '        {when 0/}',
    '        {when 1/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE 0=&RETRY_COUNT.}.',
    '        {otherwise/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE 0=&RETRY_COUNT.}.',
    '    {endcase/}',
    '{endif/}')),
  'TITLE', '&NAME.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250879172022253854)
,p_name=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250879623370253855)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250880217739253855)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250880734245253856)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250881215100253856)
,p_name=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250881729661253856)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250882220338253857)
,p_name=>'RETRY_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRY_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250882702990253857)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250883221985253857)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250883700525253858)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250884219709253858)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250884724567253858)
,p_name=>'INVOKED_WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOKED_WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250886222663253860)
,p_plug_name=>'Activity Audit'
,p_parent_plug_id=>wwv_flow_imp.id(28250878785571253854)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created_by,',
'       created_on,',
'       action,',
'       display_msg',
'  from apex_workflow_audit',
' where workflow_id         = :P10_WORKFLOW_ID',
'   and current_activity_id = :P10_ACTIVITY_ID',
' order by audit_id'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P10_WORKFLOW_ID,P10_ACTIVITY_ID'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250886627119253860)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250887190581253860)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250887622016253861)
,p_name=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250888182391253861)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250889084753253861)
,p_plug_name=>'Variables'
,p_region_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select static_id,',
'       label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P10_WORKFLOW_ID',
'   and variable_type = ''VARIABLE''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P10_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250889496879253862)
,p_name=>'STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250889961994253862)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250890443279253862)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250891403538253863)
,p_plug_name=>'Edit Variable'
,p_parent_plug_id=>wwv_flow_imp.id(28250889084753253861)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250894268712253865)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P10_WORKFLOW_ID',
'   and variable_type = ''PARAMETER''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P10_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250894635211253866)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250895161152253866)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250895657854253866)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       created_by,',
'       created_on',
'  from apex_workflow_audit',
' where workflow_id = :P10_WORKFLOW_ID',
'   and current_activity_id is null',
' order by audit_id desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P10_WORKFLOW_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250896013170253867)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250896508917253867)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28250897017947253867)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250897575031253868)
,p_plug_name=>'Workflow Diagram'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>130
,p_plug_source_type=>'NATIVE_WORKFLOW_DIAGRAM'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_navigator', 'Y',
  'initial_zoom', '0',
  'workflow_id', 'P10_WORKFLOW_ID')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250897931461253868)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250874948516253851)
,p_button_sequence=>50
,p_button_name=>'TO_PARENT_WORKFLOW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'To Parent Workflow'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_WORKFLOW_ID:&P10_PARENT_WORKFLOW_ID.'
,p_button_condition=>'P10_PARENT_WORKFLOW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-left-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250888603877253861)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28250886222663253860)
,p_button_name=>'CANCEL_ACTIVITY_AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250893415558253865)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28250891403538253863)
,p_button_name=>'CANCEL_EDIT_VARIABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250898321368253868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28250897931461253868)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250898774779253868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28250897931461253868)
,p_button_name=>'SUSPEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Suspend'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P10_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_suspend )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-pause-circle u-warning-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250899116267253869)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28250897931461253868)
,p_button_name=>'RESUME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Resume'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P10_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_resume )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-play-circle u-success-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250899565427253869)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(28250897931461253868)
,p_button_name=>'TERMINATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terminate'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P10_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_terminate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times u-danger-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250899962761253869)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(28250897931461253868)
,p_button_name=>'RETRY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Retry'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P10_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_retry )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-redo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28250893852833253865)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28250891403538253863)
,p_button_name=>'UPDATE_VARIABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250873746620253850)
,p_name=>'P10_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250874143047253851)
,p_name=>'P10_ACTIVITY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250874560002253851)
,p_name=>'P10_PARENT_WORKFLOW_ID'
,p_item_sequence=>30
,p_source=>'select parent_workflow_id from apex_workflows where workflow_id = :P10_WORKFLOW_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250891816141253863)
,p_name=>'P10_VARIABLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250891403538253863)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250892228814253864)
,p_name=>'P10_VARIABLE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28250891403538253863)
,p_prompt=>'Variable'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250892635061253864)
,p_name=>'P10_CURRENT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28250891403538253863)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250893090431253864)
,p_name=>'P10_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28250891403538253863)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250900361294253869)
,p_name=>'Activity Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250900744795253870)
,p_event_id=>wwv_flow_imp.id(28250900361294253869)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250886222663253860)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250901231634253870)
,p_event_id=>wwv_flow_imp.id(28250900361294253869)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_ACTIVITY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250901718318253870)
,p_event_id=>wwv_flow_imp.id(28250900361294253869)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250886222663253860)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250902251642253870)
,p_name=>'Cancel Activity Audit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28250888603877253861)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250902607187253871)
,p_event_id=>wwv_flow_imp.id(28250902251642253870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250886222663253860)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250903157368253871)
,p_name=>'Edit Variable'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.variable'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#VARIABLES'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250903662043253871)
,p_event_id=>wwv_flow_imp.id(28250903157368253871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250891403538253863)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250904173407253871)
,p_event_id=>wwv_flow_imp.id(28250903157368253871)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28250893852833253865)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250904649013253872)
,p_event_id=>wwv_flow_imp.id(28250903157368253871)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_VARIABLE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250905193545253872)
,p_event_id=>wwv_flow_imp.id(28250903157368253871)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_VARIABLE_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250905611132253872)
,p_event_id=>wwv_flow_imp.id(28250903157368253871)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_CURRENT_VALUE,P10_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250906166471253872)
,p_event_id=>wwv_flow_imp.id(28250903157368253871)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250906612511253873)
,p_name=>'Cancel Edit Variable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28250893415558253865)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250907042357253873)
,p_event_id=>wwv_flow_imp.id(28250906612511253873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NEW_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250907573397253873)
,p_event_id=>wwv_flow_imp.id(28250906612511253873)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250891403538253863)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250908050777253873)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28250898321368253868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250908414377253873)
,p_event_id=>wwv_flow_imp.id(28250908050777253873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250908918375253874)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P10_NEW_VALUE.value != apex.items.P10_CURRENT_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250909356313253874)
,p_event_id=>wwv_flow_imp.id(28250908918375253874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28250893852833253865)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250909867306253874)
,p_event_id=>wwv_flow_imp.id(28250908918375253874)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28250893852833253865)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28250910371131253874)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Variable'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.update_variables (',
'    p_instance_id    => :P10_WORKFLOW_ID,',
'    p_changed_params => apex_workflow.t_workflow_parameters (',
'        1 => apex_workflow.t_workflow_parameter (',
'                static_id    => :P10_VARIABLE_ID,',
'                string_value => :P10_NEW_VALUE ) ) );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28250893852833253865)
,p_process_success_message=>'Variable updated'
,p_internal_uid=>28250910371131253874
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28250910760086253875)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Suspend'
,p_attribute_01=>'SUSPEND'
,p_attribute_04=>'P10_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28250898774779253868)
,p_process_success_message=>'Workflow suspended'
,p_internal_uid=>28250910760086253875
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28250911106719253875)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Resume'
,p_attribute_01=>'RESUME'
,p_attribute_04=>'P10_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28250899116267253869)
,p_process_success_message=>'Workflow resumed'
,p_internal_uid=>28250911106719253875
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28250911500164253875)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Terminate'
,p_attribute_01=>'TERMINATE'
,p_attribute_04=>'P10_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28250899565427253869)
,p_process_success_message=>'Workflow terminated'
,p_internal_uid=>28250911500164253875
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28250911928469253876)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Retry'
,p_attribute_01=>'RETRY'
,p_attribute_04=>'P10_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(28250899962761253869)
,p_process_success_message=>'Workflow retried'
,p_internal_uid=>28250911928469253876
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28250912341102253876)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_VARIABLE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>28250912341102253876
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28250885295237253859)
,p_region_id=>wwv_flow_imp.id(28250878785571253854)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="audit" data-id="&ACTIVITY_ID." aria-haspopup="dialog"'
,p_condition_type=>'ITEM_IS_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28250885732276253859)
,p_region_id=>wwv_flow_imp.id(28250878785571253854)
,p_position_id=>348722977165395441
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_WORKFLOW_ID:&INVOKED_WORKFLOW_ID.'
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(28250890999523253863)
,p_region_id=>wwv_flow_imp.id(28250889084753253861)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="variable" data-id="&STATIC_ID!ATTR." data-label="&LABEL!ATTR." data-value="&DISPLAY_VALUE!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P10_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_update_var )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>false
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250913440092253877)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(27487632898131078477)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250914150833253877)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250914534723253877)
,p_plug_name=>'Workflows By State'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_region_attributes=>'aria-controls="workflow-state-details"'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250914983240253878)
,p_plug_name=>'Overview'
,p_parent_plug_id=>wwv_flow_imp.id(28250914534723253877)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250915724432253878)
,p_region_id=>wwv_flow_imp.id(28250914983240253878)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
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
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250916201806253879)
,p_chart_id=>wwv_flow_imp.id(28250915724432253878)
,p_seq=>10
,p_name=>'Overview Series'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state, count(workflow_id) workflows ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   --, p_application_id => :APP_ID',
'                   ) )              ',
' group by state               '))
,p_max_row_count=>20
,p_items_value_column_name=>'WORKFLOWS'
,p_items_label_column_name=>'STATE'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:apex.item(''P11_STATE'').setValue(''&STATE!JS.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250916812564253879)
,p_plug_name=>'Details'
,p_region_name=>'workflow-state-details'
,p_parent_plug_id=>wwv_flow_imp.id(28250914534723253877)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250917264902253880)
,p_region_id=>wwv_flow_imp.id(28250916812564253879)
,p_chart_type=>'bar'
,p_height=>'400'
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
,p_no_data_found_message=>'Please select a workflow state in the Overview chart to see further details'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250917761409253880)
,p_chart_id=>wwv_flow_imp.id(28250917264902253880)
,p_seq=>10
,p_name=>'Instances Per Workflow'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_def_name, count(workflow_id) instances  ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   --, p_application_id => :APP_ID',
'                   ) )',
'   where state=:P11_STATE',
'   group by workflow_def_name;                '))
,p_ajax_items_to_submit=>'P11_STATE'
,p_items_value_column_name=>'INSTANCES'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28250918325742253880)
,p_chart_id=>wwv_flow_imp.id(28250917264902253880)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(28250918933567253881)
,p_chart_id=>wwv_flow_imp.id(28250917264902253880)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
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
 p_id=>wwv_flow_imp.id(28250920490901253882)
,p_plug_name=>'Active Workflows'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250920830261253882)
,p_plug_name=>'Overview'
,p_parent_plug_id=>wwv_flow_imp.id(28250920490901253882)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_region_attributes=>'aria-controls="active-workload-details"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250921676267253883)
,p_region_id=>wwv_flow_imp.id(28250920830261253882)
,p_chart_type=>'bar'
,p_height=>'400'
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
,p_no_data_found_message=>'No Active Workflows found'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250922107793253883)
,p_chart_id=>wwv_flow_imp.id(28250921676267253883)
,p_seq=>10
,p_name=>'Workflows'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_def_name, ',
'       count(workflow_id) workflows ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   --, p_application_id => :APP_ID',
'                   ) )',
'where state_code in (''ACTIVE'',''SUSPENDED'') ',
'group by workflow_def_name               '))
,p_max_row_count=>20
,p_items_value_column_name=>'WORKFLOWS'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:apex.item(''P11_ACTIVE_DEF_NAME'').setValue(''&WORKFLOW_DEF_NAME!JS.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28250922762470253883)
,p_chart_id=>wwv_flow_imp.id(28250921676267253883)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(28250923307965253884)
,p_chart_id=>wwv_flow_imp.id(28250921676267253883)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
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
 p_id=>wwv_flow_imp.id(28250923994934253884)
,p_plug_name=>'Activities'
,p_region_name=>'active-workload-details'
,p_parent_plug_id=>wwv_flow_imp.id(28250920490901253882)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250924384257253884)
,p_region_id=>wwv_flow_imp.id(28250923994934253884)
,p_chart_type=>'bar'
,p_height=>'400'
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
,p_no_data_found_message=>'Please select a Workflow in the Overview region to see further details'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250924819019253884)
,p_chart_id=>wwv_flow_imp.id(28250924384257253884)
,p_seq=>10
,p_name=>'Activities'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name activity, count(distinct(workflow_id)) instances ',
'  from apex_workflow_activities',
' where state in (''WAITING'',''ACTIVE'')',
'   and workspace_id = :WORKSPACE_ID',
'   and workflow_def_name = :P11_ACTIVE_DEF_NAME',
' group by name'))
,p_ajax_items_to_submit=>'P11_ACTIVE_DEF_NAME'
,p_items_value_column_name=>'INSTANCES'
,p_items_label_column_name=>'ACTIVITY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28250925421762253885)
,p_chart_id=>wwv_flow_imp.id(28250924384257253884)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Activities'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(28250926081026253885)
,p_chart_id=>wwv_flow_imp.id(28250924384257253884)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
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
 p_id=>wwv_flow_imp.id(28250927520784253886)
,p_plug_name=>'Faulted Workflows'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250927900549253886)
,p_plug_name=>'Overview'
,p_parent_plug_id=>wwv_flow_imp.id(28250927520784253886)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_region_attributes=>'aria-controls="fault-workload-details"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250928759835253887)
,p_region_id=>wwv_flow_imp.id(28250927900549253886)
,p_chart_type=>'bar'
,p_height=>'400'
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
,p_no_data_found_message=>'No Faulted Workflows found'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250929257047253887)
,p_chart_id=>wwv_flow_imp.id(28250928759835253887)
,p_seq=>10
,p_name=>'Workflows'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_def_name, ',
'       count(workflow_id) workflows ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   --, p_application_id => :APP_ID',
'                   ) )',
'where state_code = ''FAULTED''',
'group by workflow_def_name               '))
,p_max_row_count=>20
,p_items_value_column_name=>'WORKFLOWS'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:apex.item(''P11_FAULT_DEF_NAME'').setValue(''&WORKFLOW_DEF_NAME!JS.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28250929876826253887)
,p_chart_id=>wwv_flow_imp.id(28250928759835253887)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(28250930435361253888)
,p_chart_id=>wwv_flow_imp.id(28250928759835253887)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
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
 p_id=>wwv_flow_imp.id(28250931081516253888)
,p_plug_name=>'Activities'
,p_region_name=>'fault-workload-details'
,p_parent_plug_id=>wwv_flow_imp.id(28250927520784253886)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250931432843253888)
,p_region_id=>wwv_flow_imp.id(28250931081516253888)
,p_chart_type=>'bar'
,p_height=>'400'
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
,p_no_data_found_message=>'Please select a Workflow in the Overview region to see further details'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250931986011253889)
,p_chart_id=>wwv_flow_imp.id(28250931432843253888)
,p_seq=>10
,p_name=>'Activities'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name activity, count(distinct(workflow_id)) instances ',
'  from apex_workflow_activities',
'where state = ''FAULTED''',
'   and workspace_id = :WORKSPACE_ID',
'   and workflow_def_name = :P11_FAULT_DEF_NAME',
' group by name'))
,p_ajax_items_to_submit=>'P11_FAULT_DEF_NAME'
,p_items_value_column_name=>'INSTANCES'
,p_items_label_column_name=>'ACTIVITY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28250932570269253889)
,p_chart_id=>wwv_flow_imp.id(28250931432843253888)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Activities'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(28250933111080253889)
,p_chart_id=>wwv_flow_imp.id(28250931432843253888)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
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
 p_id=>wwv_flow_imp.id(28250934689273253890)
,p_plug_name=>'Performance'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28250935014445253890)
,p_plug_name=>'Average Completion Time'
,p_region_name=>'performance-chart'
,p_parent_plug_id=>wwv_flow_imp.id(28250934689273253890)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28250938233075253892)
,p_region_id=>wwv_flow_imp.id(28250935014445253890)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
,p_time_axis_type=>'auto'
,p_no_data_found_message=>'No Completed or Terminated Workflows found'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28250938709294253893)
,p_chart_id=>wwv_flow_imp.id(28250938233075253892)
,p_seq=>10
,p_name=>'Average Completion Time'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  workflow_def_name,',
'  avg( duration_seconds ) / ',
'  case :P11_TIME_UNIT',
'        when ''SEC'' then 1',
'        when ''MIN'' then 60',
'        when ''HOUR'' then 3600',
'        when ''DAY'' then ( 3600 * 24 )',
'   end  as avg_time',
' from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   --, p_application_id => :APP_ID',
'                   ) )    ',
'where state_code in (''COMPLETED'',''TERMINATED'')        ',
'group by workflow_def_name'))
,p_max_row_count=>50
,p_ajax_items_to_submit=>'P11_TIME_UNIT'
,p_items_value_column_name=>'AVG_TIME'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28250939356865253893)
,p_chart_id=>wwv_flow_imp.id(28250938233075253892)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(28250939901509253893)
,p_chart_id=>wwv_flow_imp.id(28250938233075253892)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Average Completion Time'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250915374849253878)
,p_name=>'P11_STATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250914983240253878)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250921283540253882)
,p_name=>'P11_ACTIVE_DEF_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250920830261253882)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250928350722253886)
,p_name=>'P11_FAULT_DEF_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250927900549253886)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28250935425478253891)
,p_name=>'P11_TIME_UNIT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28250935014445253890)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'HOUR'
,p_prompt=>'Time Unit'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORKFLOW_CHARTS.LOV.TIME_UNIT'
,p_lov=>'.'||wwv_flow_imp.id(28250935562906253891)||'.'
,p_cHeight=>1
,p_tag_attributes=>'aria-controls="performance-chart"'
,p_field_template=>1609121967514267634
,p_item_template_options=>'t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the time unit to display within the Performance chart.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250919512369253881)
,p_name=>'Refresh Workflow Per State Details Region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_STATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250919908480253881)
,p_event_id=>wwv_flow_imp.id(28250919512369253881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250916812564253879)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250926695507253885)
,p_name=>'Refresh Activities'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_ACTIVE_DEF_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250927088446253886)
,p_event_id=>wwv_flow_imp.id(28250926695507253885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250923994934253884)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250933791568253890)
,p_name=>'Refresh Activities'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_FAULT_DEF_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250934166345253890)
,p_event_id=>wwv_flow_imp.id(28250933791568253890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250931081516253888)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28250940580226253894)
,p_name=>'Refresh Performance Chart'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_TIME_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28250940967114253894)
,p_event_id=>wwv_flow_imp.id(28250940580226253894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28250935014445253890)
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Doctor Appointments - Log In'
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
 p_id=>wwv_flow_imp.id(27487639088370078492)
,p_plug_name=>'Doctor Appointments'
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
 p_id=>wwv_flow_imp.id(27487640740533078495)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27487639088370078492)
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
 p_id=>wwv_flow_imp.id(27487639531348078493)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27487639088370078492)
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
 p_id=>wwv_flow_imp.id(27487639958357078494)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27487639088370078492)
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
 p_id=>wwv_flow_imp.id(27487640388703078494)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27487639088370078492)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
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
 p_id=>wwv_flow_imp.id(27487642947251078496)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27487642947251078496
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27487643449233078497)
,p_page_process_id=>wwv_flow_imp.id(27487642947251078496)
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
 p_id=>wwv_flow_imp.id(27487643993473078497)
,p_page_process_id=>wwv_flow_imp.id(27487642947251078496)
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
 p_id=>wwv_flow_imp.id(27487641024019078495)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27487641024019078495
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(27487641540966078496)
,p_page_process_id=>wwv_flow_imp.id(27487641024019078495)
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
 p_id=>wwv_flow_imp.id(27487642063610078496)
,p_page_process_id=>wwv_flow_imp.id(27487641024019078495)
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
 p_id=>wwv_flow_imp.id(27487642574856078496)
,p_page_process_id=>wwv_flow_imp.id(27487641024019078495)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27487644858141078498)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27487644858141078498
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27487644476069078498)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27487644476069078498
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
