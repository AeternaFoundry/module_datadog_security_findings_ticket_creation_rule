variable "security_findings_ticket_creation_rules" {
  description = <<EOT
Map of security_findings_ticket_creation_rules, attributes below
Required:
    - action
    - name
    - rule
Optional:
    - enabled
EOT

  type = map(object({
    action = object({
      assignee_id         = optional(string)
      fields              = optional(string)
      max_tickets_per_day = number
      project_id          = string
      target              = string
    })
    name = string
    rule = object({
      finding_types = list(string)
      query         = optional(string)
    })
    enabled = optional(bool)
  }))
}

