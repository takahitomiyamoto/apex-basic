public class OlderAccountsUtility {
  public static void updateOlderAccounts() {
    Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
    for (Account account : oldAccounts) {
      account.Description = 'Heritage Account';
    }
    update oldAccounts;
  }
}
