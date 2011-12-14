module TacticProtocol
  state do
    channel :needed_truth # Used by the tactic solver to provide a truth to the tactic
    channel :need_truth # Used by the tactic to indicate the need of a truth
    channel :provide_truth # Used by the tactic to provide a truth
    channel :remove_subscriptions # Used by tactic when terminating to unsubscribe

    # Format of data on the wire
    scratch :need_truth_scratch, [:what, :who] => [:who_name, :user_info]
    scratch :needed_truth_scratch, [:what, :provider] => [:truth]
    scratch :provide_truth_scratch, [:what, :provider] => [:truth, :user_info]
    scratch :remove_subscriptions_scratch, [:who]
  end
end
