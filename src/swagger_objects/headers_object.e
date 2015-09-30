note
	description: "Summary description for {HEADERS_OBJECT}."
	date: "$Date$"
	revision: "$Revision$"

class
	HEADERS_OBJECT

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

	headers: HASH_TABLE [HEADER_OBJECT, STRING]
			--the headers

feature -- Change Element

	set_headers (a_header: HASH_TABLE [HEADER_OBJECT, STRING])
			-- adds a header
		do
			headers := a_header
		end

feature {SWAGGER_VISITOR} -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_headers_object (current)
		end

end
