class Train:
    def Required_details(self,trainname,trainnumber,fare,seats):
        self.trainname = trainname
        self.trainnumber = trainnumber
        self.fare = fare
        self.seats =seats
        
    def Getinfo(self):
        print("*****_____________Welcome to railway reservation portal______________*****")
        print(f"The name of the Train is {self.trainname} and Train number is {self.trainnumber}")
        print("                        ********                         ")
        print(f"The number of available seats in the train are {self.seats}")
        print("                        ********                         ")

    def Fareinfo(self):
        print(f"The price of the tickets is :Rs {self.fare}")
        print("                        ********                         ")


        
    def Book_tickets(self):
        if self.seats>0:
            print("Congratulations your ticket have been booked!!!!!!!!")
            print("Thank you for Booking")
            print("________________******************_________________")
            self.seats=self.seats -1
            
        else:
            print("Sorry, there are no seats available in the train. please try another train")
            print("Thank you")
    



obj=Train()
obj.Required_details("Intercity Express",22012,1450,38)
obj.Getinfo()
obj.Fareinfo()
obj.Book_tickets()
