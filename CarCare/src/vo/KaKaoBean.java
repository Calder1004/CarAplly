package vo;


public class KaKaoBean {
    private long id;
    private String name;
    private String connected_at;

    public KaKaoBean(long id, String nickname, String connected_at) {
        this.id = id;
        this.name = nickname;
        this.connected_at = connected_at;
    }

    // 세터 메서드는 필요에 따라 추가

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getConnected_at() {
        return connected_at;
    }

    public void setConnected_at(String connected_at) {
        this.connected_at = connected_at;
    }
}