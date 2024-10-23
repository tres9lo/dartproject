class BankAccount {
  String accountHolderName;
  double _balance;

  BankAccount(this.accountHolderName, double balance) : _balance = balance;
  String getAccountHolderName() => accountHolderName;
  double getBalance() => _balance;
  
}
  