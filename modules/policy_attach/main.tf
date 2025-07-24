resource "aws_organizations_policy_attachment" "this" {
  for_each = toset(var.policies)
  policy_id = aws_organizations_policy.policies[each.value].id  # Reference the policy resource directly
  target_id = var.ou
}
