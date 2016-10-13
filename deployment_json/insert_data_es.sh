#!/bin/bash

for((i=1000;i<4999;i++))
do
curl -XPUT -d "{\"opString\":\"\",\"amfString\":\"ffff\",\"authType\":1,\"imsi\":\"4600020100${i}\",\"sqn\":\"0000000260a5\",\"opcString\":\"45a167ded839b6dfa92d935d77e5c067\",\"k\":\"303132333435363738393a3b3c3d3e3f\"}" http://localhost:9200/auc/auc/4600020100${i}

curl -XPUT -d "{\"ambr\":{\"max_requested_bandwidth_ul\":null,\"max_requested_bandwidth_dl\":null},\"regional_subscription_zone_codes\":[],\"call_barring_info_list\":{\"ss_code\":[]},\"teleservice_list\":{\"ts_code\":[]},\"msisdn\":\"186000${i}\",\"rat_frequency_selection_priority_id\":null,\"network_access_mode\":null,\"subscriber_status\":0,\"hplmn_odb\":null,\"apn_oi_replacement\":null,\"_3gpp_charging_characteristics\":null,\"ics_indicator\":null,\"operator_determined_barring\":null,\"stn_sr\":null,\"access_restriction_data\":null,\"roaming_restricted_due_to_unsupported_feature\":null,\"imsi\":\"4600020100${i}\"}" http://localhost:9200/subscription/subscription/4600020100${i}

done
