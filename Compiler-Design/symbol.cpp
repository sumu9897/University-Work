#include <iostream>

using namespace std;

class SymbolTable{

public:
     string id[5];
     string op[5];
     string punc[5];
     string releaseToken[5];
     const int MAX = 100;
     int i;


    SymbolTable(string A, string B, string C) {  // Constructor
      if( A== "OP" && B== "id" && C== "punc"){
   mOperator(A);
    mIdentifier(B);
     mPucntation(C);

      } else if( A== "id" && B== "punc" && C== "OP"){
      mIdentifier(A);
     mPucntation(B);
     mOperator(C);
      } else if( A== "punc" && B== "OP" && C== "id"){
     mPucntation(A);
     mOperator(B);
     mIdentifier(C);
}


    }

void mOperator(string V) {  // Method
      op[0]=V;

}
void mIdentifier(string V) {  // Method

      id[0]=V;

}
void mPucntation(string V) {  // Method
      punc[0]=V;

}
void SearchToken(string S) {  // Method
if( S== "OP"){
   for(i = 0; i < MAX; i++){
        if(op[0] == S){
          releaseToken[0]=S;
            break;
        }
   } }else if( S== "id"){
   for(i = 0; i < MAX; i++){
        if(id[0] == S){
          releaseToken[0]=S;
            break;
        }
   }}else if( S== "punc"){
   for(i = 0; i < MAX; i++){
        if(punc[0] == S){
          releaseToken[0]=S;
            break;
        }
   }}

}
void display() {  // Method
 cout<<"identifiers: "<< id[0]<<endl;
 cout<<"Operators: "<< op[0]<<endl;
 cout<<"Punctuations: "<< punc[0]<<endl;
 cout<<"release Token: "<< releaseToken[0]<<endl;

}

};

int main()
{
SymbolTable sTbl1("OP", "id", "punc");     // object
sTbl1.display();
sTbl1.SearchToken("id");
sTbl1.display();
//////////////
//SymbolTable sTbl2("id", "punc","OP" );     // object
//sTbl2.display();
//
//////////////
//SymbolTable sTbl3( "punc","OP","id");     // object
//sTbl3.display();
//
// cout<<"identifiers"<< id[0]<<endl;

// sTbl.mIdentifier();  //method declr
//st.mOperator();  //method declr
//st.mPucntation();  //method declr

    //cout << "Hello world!" << endl;
    return 0;

}
