public with sharing class AccountDao {
  public void selectAccounts(Integer count) {
    for (Account account : [SELECT Id, Name FROM Account ORDER BY CreatedDate ASC LIMIT :count]) {
      String message = 'Name: ' + account.Name;
      System.debug(LoggingLevel.DEBUG, message);
    }
  }
}
