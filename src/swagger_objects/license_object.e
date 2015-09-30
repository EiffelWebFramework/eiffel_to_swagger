note
	description: "Summary description for {LICENSE_OBJECT}."
	date: "$Date$"
	revision: "$Revision$"

class
	LICENSE_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			-- initializes a new instance
		do
			initialize
		end

feature -- Access

	name: STRING
			--license name used for the API

	url: detachable STRING
			-- url to the license used for the API

feature -- Change Element

	set_name (a_name: STRING)
		do
			name := a_name
		end

	set_url (a_url: STRING)
			--sets the url
		do
			url := a_url
		end

feature {SWAGGER_VISITOR} -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_license_object (current)
		end

end
