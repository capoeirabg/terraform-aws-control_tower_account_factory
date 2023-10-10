# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
  # Required Vars
  ct_management_account_id    = "723196523893"
  log_archive_account_id      = "675016221918"
  audit_account_id            = "183853278980"
  aft_management_account_id   = "899109537423"
  ct_home_region              = "eu-west-1"
  tf_backend_secondary_region = "eu-central-1"
  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "capoeirabg/aft-account-request"
  global_customizations_repo_name               = "capoeirabg/aft-global-customizations "
  account_customizations_repo_name              = "capoeirabg/aft-account-customizations "
  account_provisioning_customizations_repo_name = "capoeirabg/aft-account-provisioning-customizations "
}
