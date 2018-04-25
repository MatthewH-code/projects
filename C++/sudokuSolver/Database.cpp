//Matthew Hall
#include <iostream>
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <conio.h>
#include <iomanip>
#include <windows.h>

using namespace std;
int main() {
	SetConsoleTitle("Student Information System ");
    FILE *fp, *ft;
    char another, choice;
 
struct student {
        char first_name[50], last_name[50];
        char course[100];
        double average;
        char grade;
    };
 
    struct student e;
    char xfirst_name[50], xlast_name[50];
    long int recsize;
    char test[5][100] = {"Cannot open file", "whats it 2 ya"};
    puts(test[0&&1]);
    system("pause");
 
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
     cout << "\n \t\t\t 5. Exit   Program";
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
                cout << "Enter the Average   : ";
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
		   cout<<"     	  First Name     Last Name     Course     Average     Grade " << endl;
           cout<<"  -------------------------------------------------------------------------- ";
           while (fread(&e,recsize,1,fp) == 1){
           if(e.average >= 89.5 && e.average <= 100)
    		e.grade = 'A';
    			else{
    				if(e.average >= 79.5 && e.average <= 89.4)
    				e.grade = 'B';
    					else{
    						if(e.average >= 69.5 && e.average <= 79.4)
    						e.grade= 'C';
    							else{
    								if(e.average >=59.5 && e.average <= 69.4)
    									e.grade = 'D';
    										else{
    											e.grade = 'F';
				}
			}
		}
	}
           cout << "\n \n";
           cout <<"\n Student : "  << " ";
		   cout << e.first_name << setw(10)  << e.last_name; 
           cout << setw(14) << e.course <<  setw(11)  << e.average << setw(11) << e.grade;
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
                cout << "Enter the new Average   : ";
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
