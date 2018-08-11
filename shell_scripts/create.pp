ec2_instance { 'demo':
    ensure              => present,
    region              => 'us-east-2',
    image_id            => 'ami-7d132e18',
    instance_type       => 't2.nano',
    security_groups_id  => ['sg-932cbaf9'],
    subnet_id           => 'subnet-2f932855',
    key_name            => 'my_new_key_pair', 
  }
