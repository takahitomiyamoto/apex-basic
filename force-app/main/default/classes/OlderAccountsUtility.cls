public class OlderAccountsUtility {
  public static void updateOlderAccounts() {
    // Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
    // for (Account account : oldAccounts) {
    //   account.Description = 'Heritage Account';
    // }
    List<Account> oldAccounts = new List<Account>();
    for (Account account : [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5]) {
      account.Description = 'Heritage Account';
      oldAccounts.add(account);
    }
    update oldAccounts;
  }
}
