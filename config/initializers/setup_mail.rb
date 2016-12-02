ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address			=> 'smtp.sendgrid.net',
	:port				=> '587',
	:authentication 	=> :plain,
	:user_name 			=> 'app59752260@heroku.com',
	:password 			=> 'vhjjhpbk0089',
	:domain				=> 'heroku.com',
	:enable_starttls_auto	=> true
}