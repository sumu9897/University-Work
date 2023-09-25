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


    SymbolTable(string A, string B, string C) {
      if( A== "OP" && B== "id" && C== "punc")
        {
        Operator(A);
        Identifier(B);
        Pucntation(C);

      }
      else if( A== "id" && B== "punc" && C== "OP"){
        Identifier(A);
        Pucntation(B);
        Operator(C);
      }
      else if( A== "punc" && B== "OP" && C== "id"){
        Pucntation(A);
        Operator(B);
        Identifier(C);
        }


}

void Identifier(string X) {

      id[0]=X;

}
void Operator(string X) {
      op[0]=X;

}

void Pucntation(string X) {
      punc[0]=X;

}
void SearchToken(string S) {
    if( S== "OP"){
        for(i = 0; i < MAX; i++){
            if(op[0] == S){
                releaseToken[0]=S;
            break;
            }
        }
    }
    else if( S== "id"){
        for(i = 0; i < MAX; i++){
            if(id[0] == S){
                releaseToken[0]=S;
            break;
            }
        }
    }else if( S== "punc"){
        for(i = 0; i < MAX; i++){
            if(punc[0] == S){
                releaseToken[0]=S;
            break;
            }
        }
   }

}
void display() {
    cout<<"Identifiers: "<< id[0]<<endl;
    cout<<"Operators: "<< op[0]<<endl;
    cout<<"Punctuations: "<< punc[0]<<endl;
    cout<<"Release Token: "<< releaseToken[0]<<endl;

}

};

int main()
{
    SymbolTable ST1("OP", "id", "punc");

    ST1.SearchToken("OP");
    ST1.display();


    return 0;

}
