namespace Nyx.Auth.Database;

public interface IAccountRepository
{
    ValueTask<AccountRecord?> FindByUsernameAsync(string username, CancellationToken cancellationToken = default);
}
