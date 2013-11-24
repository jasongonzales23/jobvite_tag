module Locomotive
  module JobviteTag
    module Tags

      class JobviteTag < Solid::Tag

        tag_name :jobvite

        context_attribute :wagon

        def get_jobs(options)
          @api_key = options[:api_key]
          @sc = options[:sc]
          @company_id = options[:company_id]
          open("https://api.jobvite.com/v1/jobFeed?api=#{@api_key}&sc=#{@sc}&companyId=#{@company_id}").read
        end


        def display(options)
          @jobviteObj = get_jobs(options)
          if @jobviteObj
            %{
             <script>
               var jobviteObj = #{@jobviteObj};
             </script>
            }
          end
        end
      end

    end
  end
end
