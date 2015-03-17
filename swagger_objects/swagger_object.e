note
	description: "Summary description for {SWAGGER_OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SWAGGER_OBJECT
inherit
	SWAGGER_API_OBJECT
create
	make
feature

	make(swagger_spec: STRING; info_object: INFO_OBJECT; paths_object: PATHS_OBJECT)
		-- create the object with all required parameters
		do
			initialize
			swagger := swagger_spec
			info := info_object
			paths := paths_object
		end

feature
	swagger: STRING
		--specifies Swagger specification, must be 2.0
	info: INFO_OBJECT
		-- provides metadata about the API
	host: detachable STRING
		-- hostname or ip serving the API
	base_path: detachable STRING
		-- base path on which the API is served
	schemes: detachable LINKED_LIST[STRING]
		-- transfer protocol of the API, values must be either "http", "https", "ws", "wss"
	consumes: detachable LINKED_LIST[STRING]
		-- list of MIME types the APIs can consume
	produces:detachable  LINKED_LIST[STRING]
		-- list of MIME types the APIs can produce
	paths: PATHS_OBJECT
		--available path and operations for the API
	definitions: detachable DEFINITIONS_OBJECT
		-- holds data types produced and consumed by operations
	parameters: detachable PARAMETERS_DEFINITIONS_OBJECT
		--holds parameters that can be used across operations
	responses: detachable RESPONSES_DEFINITIONS_OBJECT
		-- holds responses that can be used across operations
	security_definitions: detachable SECURITY_DEFINITIONS_OBJECT
		-- security scheme definitions that can be used acros the specification
	security: detachable LINKED_LIST[SECURITY_REQUIREMENT_OBJECT]
		-- declaration of which security schemes are applied for the API
	tags: detachable LINKED_LIST[TAG_OBJECT]
		-- list of tags used by the specification with additional metadata
	external_docs: detachable EXTERNAL_DOCUMENTATION_OBJECT
		-- additional external documentation

	set_host(a_host: STRING)
		-- sets the host
		do
			host := a_host
		end
	set_base_path(a_base_path: STRING)
		-- set the base path
		do
			base_path := a_base_path
		end
	add_scheme(a_scheme: STRING)
		-- adds a scheme
		do
			if schemes = void then
				create schemes.make
			end
			schemes.extend (a_scheme)
		end

	add_consume(a_consume: STRING)
		-- adds a MIME type of what the API consumes
		do
			if consumes = void then
				create consumes.make
			end
			consumes.extend (a_consume)
		end

	add_produce(a_produce: STRING)
		-- add a MIME type of what the API produces
		do
			if produces = void then
				create produces.make
			end
			produces.extend (a_produce)
		end

	set_definitions(a_definitions: DEFINITIONS_OBJECT)
		--sets the definitions
		do
			definitions := a_definitions
		end

	set_parameters(a_parameters: PARAMETERS_DEFINITIONS_OBJECT)
		-- sets the parameters
		do
			parameters := a_parameters
		end

	set_responses(a_responses: RESPONSES_DEFINITIONS_OBJECT)
		-- sets the repsones
		do
			responses := a_responses
		end

	set_security_definitions(a_security_definitions: SECURITY_DEFINITIONS_OBJECT)
		-- sets the security definitions
		do
			security_definitions := a_security_definitions
		end

	add_security(a_security: SECURITY_REQUIREMENT_OBJECT)
		-- adds a security
		do
			if security = void then
				create security.make
			end

			security.extend (a_security)
		end

	add_tag(a_tag: TAG_OBJECT)
		-- adds a tag
		do
			if tags = void then
				create tags.make
			end

			tags.extend (a_tag)
		end

	set_external_docs(a_external_doc: EXTERNAL_DOCUMENTATION_OBJECT)
		-- sets the external documentation
		do
			external_docs := a_external_doc
		end


feature --visitor
	process(v: SWAGGER_VISITOR)
		do
			v.process_swagger_object(current)
		end

invariant
	swagger_never_void: swagger /= void
	info_never_void: info /= void
	paths_never_void: paths /= void
end