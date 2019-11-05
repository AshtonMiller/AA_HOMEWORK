class BoxOffice
    def initialize(num_seats, show_title)
      @num_seats = num_seats
      @show_title = show_title
      @tickets_sold = 0
    end

    def sell_ticket
      # logic for the ticket selling process goes here

      update_tickets_sold
    end

    private

    def update_tickets_sold
      @tickets_sold += 1
    end
  end

#   tkts = BoxOffice.new(2000, "Rent")