	package admin.vo;

import java.util.Comparator;
import java.util.UUID;

public class AdminUserBean  {

    private final UUID id;
    private final String username;
    private final String password;

    public AdminUserBean(String username, String password) {
        this.id = UUID.randomUUID();
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public UUID getId() {
        return id;
    }

    @Override
    public String toString() {
        return "AdminUserBean [username=" + username + ", password=" + password + "]";
    }


}