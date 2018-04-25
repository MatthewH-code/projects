//Matthew Hall
#include <iostream>
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <conio.h>
#include <iomanip>
 
using namespace std;
int main() {
    FILE *fp, *ft;
    char another, choice;
 
struct student {
        char first_name[50], last_name[50];
        char course[100];
        int average;
        char assignment[100];
        double assigngrade;
    };
 
    struct student e;
    char xfirst_name[50], xlast_name[50];
    long int recsize;
 
    fp=fopen("users.txt","rb+");
 
    if (fp == NULL) {
        fp = fopen("users.txt","wb+");
 
        if (fp==NULL)
        {
             puts("Cannot open file");
             return 0;
        }
    }
 
 
 recsize = sizeof(e);
 
 while(1) {
     system("cls");
 
     cout << "\t\t====== STUDENT INFORMATION SYSTEM ======";
     cout <<"\n\n                                          ";
     cout << "\n\n";
     cout << "\n \t\t\t 1. Add    Records";
     cout << "\n \t\t\t 2. List   Records";
     cout << "\n \t\t\t 3. Modify Records";
     cout << "\n \t\t\t 4. Delete Records";
     cout << "\n \t\t\t 5. Add    Grades";
     cout << "\n \t\t\t 6. View   Grades";
     cout << "\n \t\t\t 7. Exit   Program";
     cout << "\n\n";
     cout << "\t\t\t Select Your Choice :=> ";
     fflush(stdin);
     choice = getche();
     switch(choice)
     {
      case '1' :
            fseek(fp,0,SEEK_END);
            another ='Y';
            while(another == 'Y' || another == 'y')
            {
                  system("cls");
                cout << "Enter the First Name : ";
                cin >> e.first_name;
                cout << "Enter the Last Name : ";
                cin >> e.last_name;
                cout << "Enter the Course    : ";
                cin >> e.course;
                cout << "Enter the Grade     : ";
                cin >> e.average;
                fwrite(&e,recsize,1,fp);
                cout << "\n Add Another Record (Y/N) ";
                fflush(stdin);
                another = getchar();
            }
            break;
   case '2':
            system("cls");
           rewind(fp);
           cout << "=== View the Records in the Database ===";
           cout << "\n";
           cout << "First Name		Last Name \n \nCourse Name		Average";
           cout << "\n";
           while (fread(&e,recsize,1,fp) == 1){
           cout << "\n \n";
           cout <<"\n Student : "  << " ";
		   cout << e.first_name << setw(15)  << e.last_name; 
           cout <<"\n" << setw(16) << e.course <<  setw(15)  << e.average;
           }
           cout << "\n\n";
           system("pause");
           break;
 
   case '3' :
            system("cls");
          another = 'Y';
          while (another == 'Y'|| another == 'y')
          {
              cout << "\n Enter the last name of the student : ";
              cin >> xlast_name;
              
              ft = fopen("temp.dat", "wb");
 
            rewind(fp);
            while (fread(&e,recsize,1,fp) == 1)
            {
                if (strcmp(e.last_name,xlast_name) == 0)
                {
                cout << "Enter new First Name : ";
                cin >> e.first_name;
                cout << "Enter new Last Name : ";
                cin >> e.last_name;
                cout << "Enter new Course    : ";
                cin >> e.course;
                cout << "Enter new Grade     : ";
                cin >> e.average;
                fseek(fp, - recsize, SEEK_CUR);
                fwrite(&e,recsize,1,fp);
                break;
                }
        }
            cout << "\n Modify Another Record (Y/N) ";
                fflush(stdin);
                another = getchar();
            }
            break;
 
 
     case '4':
       system("cls");
           another = 'Y';
          while (another == 'Y'|| another == 'y')
          {
              cout << "\n Enter the last name of the student to delete : ";
              cin >> xlast_name;
 
              ft = fopen("temp.dat", "wb");
 
              rewind(fp);
              while (fread (&e, recsize,1,fp) == 1)
 
                 if (strcmp(e.last_name,xlast_name) != 0)
                {
                    fwrite(&e,recsize,1,ft);
                }
                fclose(fp);
                fclose(ft);
                remove("users.txt");
                rename("temp.dat","users.txt");
 
                fp=fopen("users.txt","rb+");
 
                cout << "\n Delete Another Record (Y/N) ";
                fflush(stdin);
                another = getchar();
              }
 
              break;
              
              case '5':
             system("cls");
          another = 'Y';
          while (another == 'Y'|| another == 'y')
          {
              cout << "\n Enter the last name of the student : ";
              cin >> xlast_name;
              
              ft = fopen("temp.dat", "wb");
 
            rewind(fp);
            while (fread(&e,recsize,1,fp) == 1)
            {
                if (strcmp(e.last_name,xlast_name) == 0)
                {
				cout << "Enter Assignment    : ";
                cin >> e.assignment;
                cout << "Enter Grade         : ";
                cin >> e.assigngrade;
                //fwrite(&e,recsize,1,fp);
				fseek(fp, - recsize, SEEK_CUR);
                fwrite(&e,recsize,1,fp);
                break;
                }
            }
            cout << "\n Add Another Record (Y/N) ";
                fflush(stdin);
                another = getchar();
        }
        break;
 
			  case '6':
			  	system("cls");
           rewind(fp);
           cout << "=== View the Records in the Database ===";
           cout << "\n=== THIS PART OF THE PROGRAM IS NOT COMPLETE ===";
           cout << "\n";
           cout << "First Name		Last Name \n \nAssignment		Grade";
           cout << "\n";
           while (fread(&e,recsize,1,fp) == 1){
           cout << "\n \n";
           cout <<"\n Student : "  << " ";
		   cout << e.first_name << setw(15)  << e.last_name; 
           cout <<"\n" << setw(16) << e.assignment <<  setw(15)  << e.assigngrade;
           }
           cout << "\n\n";
           system("pause");
           break;
			   
              case '7':
              fclose(fp);
              cout << "\n\n";
              cout << "\t\t     THANK YOU FOR USING THIS SOFTWARE";
              cout << "\n\n";
              exit(0);
          }
     }
 
 
system("pause");
return 0;
}
