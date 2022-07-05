Feature: This feature file is to test the DigitalOcean Resources.
    Scenario: Test if the project is defined properly
        Given I have digitalocean_project defined
        When its name is CDN
    Scenario: Test if the vpc is defined properly
        Given I have digitalocean_vpc defined
        When its name is "CDN"
        When its region is "nyc3"
        When its ip_range is "10.20.0.0/16"
    Scenario: Test if the droplet is defined properly
        Given I have digitalocean_droplet defined
        When it has ssh_keys and vpc_uuid and tags
        Then it must have tags
        Then its value must match the "^(staticCDN)" regex