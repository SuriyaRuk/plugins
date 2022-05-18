return {
        no_consumer = true, -- This means our plugin will not apply to specific service consumers
        fields = {
             first_person = { 
                type = "string",
                required = false,
                default = "person1"
             },
             zero_person = { 
                type = "string", 
                required = true, 
                default = "person0"
             }
        }
}
