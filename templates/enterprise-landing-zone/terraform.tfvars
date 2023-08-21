
current_user_ocid = "ocid1.user.oc1..aaaaaaaafq3slyrv7yfm62jnad5lszkjm4ocxdesxetoweddwlrszrsxbqjq"
api_fingerprint = "39:c0:33:a2:69:b2:e8:18:52:43:98:f3:46:cd:d5:fa"
tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaph23xltusrbl634juawune2igo6ktvw57aopm2wsmhzceizxxlga"
region = "ca-toronto-1"
api_private_key_path = "/Users/liam.helmer/oracle/ist-devops@mogo.ca_2023-08-17T23_43_56.925Z.pem"

# Provider 
#current_user_ocid    = "ocid1.user.oc1..aaaaaaaauuni5a3mpsr57t2qptc4o6h5elpmamnuwnlhsokxylkwmuuuvmpa"
#region               = "ca-toronto-1"
#tenancy_ocid         = "ocid1.tenancy.oc1..aaaaaaaaph23xltusrbl634juawune2igo6ktvw57aopm2wsmhzceizxxlga"
#api_fingerprint      = "af:36:85:6e:3b:fe:df:9f:28:0c:2f:b9:3c:be:83:54"
#api_private_key_path = "/Volumes/Private Keys/ist-devops@mogo.ca_2023-07-27T19_13_47.292Z.pem"

home_compartment_name = "mogo-landing-zone"

# iam
resource_label             = "MOGO"
prod_domain_admin_email    = "ist-devops@mogo.ca"
nonprod_domain_admin_email = "ist-devops@mogo.ca"
enable_compartment_delete  = true

# security
enable_cloud_guard                           = true
cloud_guard_target_tenancy                   = false
nonprod_enable_bastion                       = true
prod_enable_bastion                          = true
prod_bastion_client_cidr_block_allow_list    = ["10.0.0.0/16", "10.0.0.0/24"]
nonprod_bastion_client_cidr_block_allow_list = ["10.0.0.0/16", "10.0.0.0/24"]

# budget
nonprod_enable_budget                = true
prod_enable_budget                   = true
nonprod_budget_alert_rule_message    = "nonprod budget alert"
nonprod_budget_alert_rule_recipients = "ist-devops@mogo.ca"
nonprod_budget_alert_rule_threshold  = 1000000
nonprod_budget_amount                = 10000000
prod_budget_alert_rule_message       = "prod budget alert"
prod_budget_alert_rule_recipients    = "ist-devops@mogo.ca"
prod_budget_alert_rule_threshold     = 1000000
prod_budget_amount                   = 10000000

# network extension
enable_vpn_or_fastconnect           = "VPN"
prod_enable_vpn                     = true
prod_cpe_ip_address                 = "10.0.0.0"
prod_cpe_display_name               = "mogo-lz-prod"
prod_cpe_vendor                     = 4
prod_ipsec_connection_static_routes = ["10.32.0.0/15", "10.64.0.0/16", "10.96.0.0/16", "10.79.0.0/16", "10.95.0.0/16", "10.39.0.0/16", "10.40.0.0/16", "10.41.0.0/16", "10.42.0.0/16" ]
nonprod_enable_vpn                  = true

nonprod_cpe_ip_address                 = "10.0.0.0"
nonprod_cpe_display_name               = "mogo-lz-dev"
nonprod_cpe_vendor                     = 4
nonprod_ipsec_connection_static_routes = ["10.32.0.0/15", "10.64.0.0/16", "10.96.0.0/16", "10.79.0.0/16", "10.95.0.0/16", "10.39.0.0/16", "10.40.0.0/16", "10.41.0.0/16", "10.42.0.0/16" ]

# network
prod_enable_internet_gateway_hub                 = "true"
prod_enable_nat_gateway_hub                      = "true"
prod_enable_service_gateway_hub                  = "true"
prod_enable_nat_gateway_spoke                    = "true"
prod_enable_service_gateway_spoke                = "true"

nonprod_enable_internet_gateway_hub              = "true"
nonprod_enable_nat_gateway_hub                   = "true"
nonprod_enable_service_gateway_hub               = "true"
nonprod_enable_nat_gateway_spoke                 = "true"
nonprod_enable_service_gateway_spoke             = "true"

prod_hub_vcn_cidr_block            = "10.72.0.0/16"
prod_hub_public_subnet_cidr_block  = "10.72.1.0/24"
prod_hub_private_subnet_cidr_block = "10.72.2.0/24"

prod_spoke_vcn_cidr              = "10.73.0.0/16"
prod_spoke_subnet_web_cidr_block = "10.73.1.0/24"
prod_spoke_subnet_app_cidr_block = "10.73.2.0/24"
prod_spoke_subnet_db_cidr_block  = "10.73.3.0/24"

nonprod_hub_vcn_cidr_block            = "10.88.0.0/16"
nonprod_hub_public_subnet_cidr_block  = "10.88.1.0/24"
nonprod_hub_private_subnet_cidr_block = "10.88.2.0/24"

nonprod_spoke_vcn_cidr              = "10.89.0.0/16"
nonprod_spoke_subnet_web_cidr_block = "10.89.1.0/24"
nonprod_spoke_subnet_app_cidr_block = "10.89.2.0/24"
nonprod_spoke_subnet_db_cidr_block  = "10.89.3.0/24"

# Tagging
prod_enable_tagging          = true
nonprod_enable_tagging       = true
nonprod_cost_center_tagging  = "nonproduction"
nonprod_geo_location_tagging = "canada"
prod_cost_center_tagging     = "development"
prod_geo_location_tagging    = "canada"
onboard_log_analytics        = true

# Monitoring (Optional)
prod_network_topic_endpoints     = []
prod_secops_topic_endpoints      = []
prod_platform_topic_endpoints    = []
prod_identity_topic_endpoints    = []
prod_workload_topic_endpoints    = []
nonprod_network_topic_endpoints  = []
nonprod_secops_topic_endpoints   = []
nonprod_platform_topic_endpoints = []
nonprod_identity_topic_endpoints = []
nonprod_workload_topic_endpoints = []

# Workload Expansion
#prod_additional_workload_subnets_cidr_blocks = [ "10.74.0.0/16", "10.75.0.0/16", "10.76.0.0/16", "10.77.0.0/16" ]
#nonprod_additional_workload_subnets_cidr_blocks = [ "10.90.0.0/16", "10.91.0.0/16", "10.92.0.0/16", "10.93.0.0/16", "10.94.0.0/16" ]
# prod_workload_compartment_names = [ "k8s", "it", "bi", "crm" "devops" ]
#nonprod_workload_compartment_names = [ "k8s-nonprod", "it-nonprod", "bi-nonprod", "crm-nonprod", "devops-nonprod", "sandbox" ]
