public with sharing class AccountDao {
  public void selectAccounts(Integer count) {
    for (Account account : [SELECT Name, Description FROM Account ORDER BY CreatedDate ASC LIMIT :count]) {
      String message = 'Name: ' + account.Name + ' | Description: ' + account.Description;
      System.debug(LoggingLevel.DEBUG, message);
    }
  }
}
