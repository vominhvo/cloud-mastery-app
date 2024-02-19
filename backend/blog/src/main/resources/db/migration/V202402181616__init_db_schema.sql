CREATE TABLE IF NOT EXISTS blog_post (
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR NOT NULL,
    content TEXT,
    image_url VARCHAR,
    views_count INT DEFAULT 0,
    likes_count INT DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE,
    created_by VARCHAR,
    updated_at TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR,
    CONSTRAINT blog_post_pk_id PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS comment (
    id INT GENERATED ALWAYS AS IDENTITY,
    --user_id VARCHAR NOT NULL,
    post_id INT NOT NULL,
    content VARCHAR,
    created_at TIMESTAMP WITH TIME ZONE,
    created_by VARCHAR,
    updated_at TIMESTAMP WITH TIME ZONE,
    updated_by VARCHAR,
    CONSTRAINT comment_pk_id PRIMARY KEY (id),
    CONSTRAINT comment_belongs_to_blog_post_fk_post_id FOREIGN KEY (post_id) REFERENCES blog_post (id)
);