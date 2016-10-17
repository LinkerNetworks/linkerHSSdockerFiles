#!/bin/bash

for((i=10000;i<14999;i++))
do
curl -XPUT -d "{\"opString\":\"\",\"amfString\":\"ffff\",\"authType\":1,\"imsi\":\"4600020100${i}\",\"sqn\":\"0000000260a5\",\"opcString\":\"45a167ded839b6dfa92d935d77e5c067\",\"k\":\"303132333435363738393a3b3c3d3e3f\"}" http://localhost:9200/auc/auc/4600020100${i}

curl -XPUT -d "{\"ambr\":{\"max_requested_bandwidth_ul\":2000000,\"max_requested_bandwidth_dl\":2000000},\"regional_subscription_zone_codes\":[],\"call_barring_info_list\":{\"ss_code\":[]},\"teleservice_list\":{\"ts_code\":[]},\"msisdn\":\"186000${i}\",\"rat_frequency_selection_priority_id\":null,\"network_access_mode\":2,\"subscriber_status\":0,\"hplmn_odb\":null,\"apn_oi_replacement\":null,\"_3gpp_charging_characteristics\":\"0001\",\"ics_indicator\":null,\"operator_determined_barring\":null,\"stn_sr\":null,\"access_restriction_data\":null,\"apn_configuration_profile\":{\"all_apn_configurations_included_indicator\":0,\"apn_configurations\":[{\"ambr\":{\"max_requested_bandwidth_ul\":2000000,\"max_requested_bandwidth_dl\":2000000},\"visited_network_identifier\":null,\"eps_subscribed_qos_profile\":{\"allocation_retention_priority\":{\"priority_level\":1,\"pre_emption_capability\":0,\"pre_emption_Vulnerability\":1},\"qos_class_identifier\":6},\"served_party_ip_addresses\":[],\"pdn_gw_allocation_type\":null,\"service_selection\":\"dt.com\",\"specific_apn_info\":[{\"visited_network_identifier\":null,\"service_selection\":\"\",\"mip6AgentInfo\":{\"mip_home_agent_host\":{\"destinationRealm\":null,\"destinationHost\":null},\"mip_home_agent_address\":[]}}],\"vplmn_dynamic_address_allowed\":null,\"context_identifier\":1,\"pdn_type\":0,\"apn_oi_replacement\":null,\"_3gpp_charging_characteristics\":null}],\"context_identifier\":1},\"roaming_restricted_due_to_unsupported_feature\":null,\"imsi\":\"4600020100${i}\"}" http://localhost:9200/subscription/subscription/4600020100${i}

done

