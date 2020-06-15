-- Database to store products, users and orders.

-- Stores users.
CREATE TABLE IF NOT EXISTS Users (
                        id INT PRIMARY KEY,
                        name VARCHAR(128) NOT NULL,
                        address VARCHAR(256) NOT NULL,
                        last_login INT
);

-- Stores products that is available for sale.
CREATE TABLE IF NOT EXISTS Products (
                        id INT PRIMARY KEY,
                        name VARCHAR(64) NOT NULL,
                        description VARCHAR(125) NOT NULL,
                        stock_available INT
);

-- Stores orders put by users.
CREATE TABLE IF NOT EXISTS Orders (
                        id INT PRIMARY KEY,
                        user_pk REFERENCES Users(id),
                        product_pk REFERENCES Products(id),
                        amount INT NOT NULL,
                        order_put_time INT NOT NULL
);

INSERT INTO Users VALUES (
                        NULL,
                        "Samet Kaan",
                        "Emek Cd. Meltem Sk. Bahçelievler/İstanbul",
                        NULL
);

INSERT INTO Users VALUES (
                        NULL,
                        "Ahmet Koç",
                        "Tayfun Cd. Kuşcağız Sk. Keçiören/Ankara",
                        NULL
);

INSERT INTO Users VALUES (
                        NULL,
                        "Elif Yıldız",
                        "Kaldırım Cd. Gülşefde Sk. Üsküdar/İstanbul",
                        NULL
);

INSERT INTO Users VALUES (
                        NULL,
                        "Sevda Demirel",
                        "Ragıp Tüzün Cd. Şair Fuzuli Sk. Yenimahalle/Ankara",
                        NULL
);

INSERT INTO Users VALUES (
                        NULL,
                        "Selim Kardaş",
                        "Şinasi Efendi Cd. Demokrasi Sk. Seyhan/Adana",
                        NULL
);

INSERT INTO Users VALUES (
                        NULL,
                        "Helin Solmaz",
                        "Emniyet Cd. Geçit Sk. Merkez/Yozgat",
                        NULL
);

INSERT INTO Products VALUES (
                        NULL,
                        "Ayva Sirkesi",
                        "Hakiki Ayva Sirkesi",
                        37
);

INSERT INTO Products VALUES (
                        NULL,
                        "Portakal suyu",
                        "Taze Sıkılmış Portakal Suyu",
                        37
);

INSERT INTO Products VALUES (
                        NULL,
                        "Cin Biber",
                        "Adana Cin Biber",
                        37
);

INSERT INTO Products VALUES (
                        NULL,
                        "Kaşar Peyniri",
                        "Kars Kaşar Peyniri",
                        37
);

INSERT INTO Products VALUES (
                        NULL,
                        "Süt Kaymağı",
                        "Maraş Süt Kaymağı",
                        37
);

INSERT INTO Products VALUES (
                        NULL,
                        "Baklava",
                        "Antep Baklava",
                        37
);
