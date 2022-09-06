def returnbook():

                inner_invalid_count=-1000
                counter=0
                invalid_count=-1000
                print('\t\t\t****************************')
                print('\t\t\t*       Return Book        *')
                print('\t\t\t****************************')
                booknumber = int(input('\nPlease enter the number of book(s) that you want to return:'))
        
                while booknumber > 5:
                    print('You can only return to a maximum of 5 books.')
                    booknumber = int(input('\nPlease enter the number of book(s) that you want to return:'))
        
                else:
                    ID = input('\nPlease enter the book ID :').upper()
                    for i in books:
                        if ID == i[0]:
                            break
                        else:
                            invalid_count+=1
                            if invalid_count==15:
                                print('Invalid book ID. Please check for syntax error.')
                                ID = input('Please enter the book ID :').upper()

                    while counter < booknumber : 
                        for i in books:
                            if ID == i[0]:
                                counter+=1
                                books.append(ID)
                                print("\nYou have successfully return the book.\n")
                                print("ID\t\t: ",i[0])
                                print("Book title\t: ",i[1])
                                print("Author\t\t: ",i[2])
                                print("Subject\t\t: ",i[3])
                    
                                if counter == booknumber:
                                    break
                                ID = input('\nPlease enter the book ID :').upper()
                    

                        else:
                            invalid_count += 1
                            if invalid_count == 15:
                                print('\nInvalid book ID. Please check for syntax error.')
                                ID = input('\nPlease enter the book ID :').upper()

                print('\n\t\t'+' -~'*15 + '\n\t\t|\t\t\t\t\t     |\n\t\t|  ^^ Thank you and have a nice day. ^^  |\n\t\t|\t\t\t\t\t     |\n'+'\t\t'+ ' -~'*15)
                print('Press enter to continue')
                
                mainfunc()
    
            returnbook()
