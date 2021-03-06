##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Taskrouter < Domain
      class V1 < Version
        class WorkspaceContext < InstanceContext
          class WorkerContext < InstanceContext
            class WorkersCumulativeStatisticsList < ListResource
              ##
              # Initialize the WorkersCumulativeStatisticsList
              # @param [Version] version Version that contains the resource
              # @param [String] workspace_sid The workspace_sid
              # @return [WorkersCumulativeStatisticsList] WorkersCumulativeStatisticsList
              def initialize(version, workspace_sid: nil)
                super(version)

                # Path Solution
                @solution = {workspace_sid: workspace_sid}
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Taskrouter.V1.WorkersCumulativeStatisticsList>'
              end
            end

            class WorkersCumulativeStatisticsPage < Page
              ##
              # Initialize the WorkersCumulativeStatisticsPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [WorkersCumulativeStatisticsPage] WorkersCumulativeStatisticsPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of WorkersCumulativeStatisticsInstance
              # @param [Hash] payload Payload response from the API
              # @return [WorkersCumulativeStatisticsInstance] WorkersCumulativeStatisticsInstance
              def get_instance(payload)
                WorkersCumulativeStatisticsInstance.new(@version, payload, workspace_sid: @solution[:workspace_sid], )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Taskrouter.V1.WorkersCumulativeStatisticsPage>'
              end
            end

            class WorkersCumulativeStatisticsContext < InstanceContext
              ##
              # Initialize the WorkersCumulativeStatisticsContext
              # @param [Version] version Version that contains the resource
              # @param [String] workspace_sid The workspace_sid
              # @return [WorkersCumulativeStatisticsContext] WorkersCumulativeStatisticsContext
              def initialize(version, workspace_sid)
                super(version)

                # Path Solution
                @solution = {workspace_sid: workspace_sid, }
                @uri = "/Workspaces/#{@solution[:workspace_sid]}/Workers/CumulativeStatistics"
              end

              ##
              # Fetch a WorkersCumulativeStatisticsInstance
              # @param [Time] end_date Filter cumulative statistics by a end date. This is
              #   helpful for defining a range of statistics to capture. Input is a string of the
              #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
              # @param [String] minutes Filter cumulative statistics by up to 'x' minutes in the
              #   past. This is helpful for statistics for the last 15 minutes, 240 minutes (4
              #   hours), and 480 minutes (8 hours) to see trends. Defaults to 15 minutes.
              # @param [Time] start_date Filter cumulative statistics by a start date. This is
              #   helpful for defining a range of statistics to capture. Input is a string of the
              #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
              # @param [String] task_channel Filter cumulative statistics by TaskChannel. Takes
              #   in a Unique Name ("voice", "sms", "default", etc.) or a TaskChannelSid.
              # @return [WorkersCumulativeStatisticsInstance] Fetched WorkersCumulativeStatisticsInstance
              def fetch(end_date: :unset, minutes: :unset, start_date: :unset, task_channel: :unset)
                params = Twilio::Values.of({
                    'EndDate' => Twilio.serialize_iso8601_datetime(end_date),
                    'Minutes' => minutes,
                    'StartDate' => Twilio.serialize_iso8601_datetime(start_date),
                    'TaskChannel' => task_channel,
                })

                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )

                WorkersCumulativeStatisticsInstance.new(@version, payload, workspace_sid: @solution[:workspace_sid], )
              end

              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Taskrouter.V1.WorkersCumulativeStatisticsContext #{context}>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Taskrouter.V1.WorkersCumulativeStatisticsContext #{context}>"
              end
            end

            class WorkersCumulativeStatisticsInstance < InstanceResource
              ##
              # Initialize the WorkersCumulativeStatisticsInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] workspace_sid The workspace_sid
              # @return [WorkersCumulativeStatisticsInstance] WorkersCumulativeStatisticsInstance
              def initialize(version, payload, workspace_sid: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'start_time' => Twilio.deserialize_iso8601_datetime(payload['start_time']),
                    'end_time' => Twilio.deserialize_iso8601_datetime(payload['end_time']),
                    'activity_durations' => payload['activity_durations'],
                    'reservations_created' => payload['reservations_created'].to_i,
                    'reservations_accepted' => payload['reservations_accepted'].to_i,
                    'reservations_rejected' => payload['reservations_rejected'].to_i,
                    'reservations_timed_out' => payload['reservations_timed_out'].to_i,
                    'reservations_canceled' => payload['reservations_canceled'].to_i,
                    'reservations_rescinded' => payload['reservations_rescinded'].to_i,
                    'workspace_sid' => payload['workspace_sid'],
                    'url' => payload['url'],
                }

                # Context
                @instance_context = nil
                @params = {'workspace_sid' => workspace_sid, }
              end

              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @return [WorkersCumulativeStatisticsContext] WorkersCumulativeStatisticsContext for this WorkersCumulativeStatisticsInstance
              def context
                unless @instance_context
                  @instance_context = WorkersCumulativeStatisticsContext.new(@version, @params['workspace_sid'], )
                end
                @instance_context
              end

              ##
              # @return [String] The account_sid
              def account_sid
                @properties['account_sid']
              end

              ##
              # @return [Time] The start_time
              def start_time
                @properties['start_time']
              end

              ##
              # @return [Time] The end_time
              def end_time
                @properties['end_time']
              end

              ##
              # @return [Hash] The minimum, average, maximum and total time Workers spent in each Activity
              def activity_durations
                @properties['activity_durations']
              end

              ##
              # @return [String] The total number of Reservations that were created
              def reservations_created
                @properties['reservations_created']
              end

              ##
              # @return [String] The total number of Reservations that were accepted
              def reservations_accepted
                @properties['reservations_accepted']
              end

              ##
              # @return [String] The total number of Reservations that were rejected
              def reservations_rejected
                @properties['reservations_rejected']
              end

              ##
              # @return [String] The total number of Reservations that were timed out
              def reservations_timed_out
                @properties['reservations_timed_out']
              end

              ##
              # @return [String] The total number of Reservations that were canceled
              def reservations_canceled
                @properties['reservations_canceled']
              end

              ##
              # @return [String] The total number of Reservations that were rescinded
              def reservations_rescinded
                @properties['reservations_rescinded']
              end

              ##
              # @return [String] The workspace_sid
              def workspace_sid
                @properties['workspace_sid']
              end

              ##
              # @return [String] The url
              def url
                @properties['url']
              end

              ##
              # Fetch a WorkersCumulativeStatisticsInstance
              # @param [Time] end_date Filter cumulative statistics by a end date. This is
              #   helpful for defining a range of statistics to capture. Input is a string of the
              #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
              # @param [String] minutes Filter cumulative statistics by up to 'x' minutes in the
              #   past. This is helpful for statistics for the last 15 minutes, 240 minutes (4
              #   hours), and 480 minutes (8 hours) to see trends. Defaults to 15 minutes.
              # @param [Time] start_date Filter cumulative statistics by a start date. This is
              #   helpful for defining a range of statistics to capture. Input is a string of the
              #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
              # @param [String] task_channel Filter cumulative statistics by TaskChannel. Takes
              #   in a Unique Name ("voice", "sms", "default", etc.) or a TaskChannelSid.
              # @return [WorkersCumulativeStatisticsInstance] Fetched WorkersCumulativeStatisticsInstance
              def fetch(end_date: :unset, minutes: :unset, start_date: :unset, task_channel: :unset)
                context.fetch(
                    end_date: end_date,
                    minutes: minutes,
                    start_date: start_date,
                    task_channel: task_channel,
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Taskrouter.V1.WorkersCumulativeStatisticsInstance #{values}>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Taskrouter.V1.WorkersCumulativeStatisticsInstance #{values}>"
              end
            end
          end
        end
      end
    end
  end
end