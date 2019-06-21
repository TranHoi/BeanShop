USE [BeanStore]
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [name]) VALUES (1, N'processed')
INSERT [dbo].[status] ([id], [name]) VALUES (2, N'shipped')
INSERT [dbo].[status] ([id], [name]) VALUES (3, N'delivered')
SET IDENTITY_INSERT [dbo].[status] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [phone], [email], [address], [password]) VALUES (1, N'Mr Tran', N'0969969969', N'mr.tran@gmail.com', N'182 bach dang', N'1')
INSERT [dbo].[users] ([id], [name], [phone], [email], [address], [password]) VALUES (4, N'Mr Nguyen', N'0123456789', N'mr.nguyen@gmail.com', NULL, N'2')
INSERT [dbo].[users] ([id], [name], [phone], [email], [address], [password]) VALUES (5, N'Mr Pham', N'0900900099', N'mr.pham@gmail.com', N'12 nguyen hue, q1', N'3')
INSERT [dbo].[users] ([id], [name], [phone], [email], [address], [password]) VALUES (6, N'tran hoi', N'0703119730', N'hoi@gmail.com', N'182/81, Bạch Đằng', N'4')
SET IDENTITY_INSERT [dbo].[users] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [user_id], [status_id], [order_date], [delivery_date]) VALUES (17, 6, 3, CAST(N'2019-06-21 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[order] ([id], [user_id], [status_id], [order_date], [delivery_date]) VALUES (18, 6, 3, CAST(N'2019-06-21 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[order] ([id], [user_id], [status_id], [order_date], [delivery_date]) VALUES (20, 6, 3, CAST(N'2019-06-21 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[order] ([id], [user_id], [status_id], [order_date], [delivery_date]) VALUES (21, 1, 2, CAST(N'2019-06-21 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (1, N'Apple', N'iPhone-(Apple)42-b_16.jpg                                                                           ')
INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (2, N'Samsung', N'Samsung42-b_25.jpg                                                                                  ')
INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (3, N'Nokia', N'Nokia42-b_21.jpg                                                                                    ')
INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (4, N'Huawei', N'Huawei42-b_22.png                                                                                   ')
INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (5, N'Xiaomi', N'Xiaomi42-b_31.png                                                                                   ')
INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (6, N'Sony', NULL)
INSERT [dbo].[brand] ([id], [name], [logo]) VALUES (7, N'Other', NULL)
SET IDENTITY_INSERT [dbo].[brand] OFF
SET IDENTITY_INSERT [dbo].[catalogs] ON 

INSERT [dbo].[catalogs] ([id], [name]) VALUES (1, N'Smartphone')
INSERT [dbo].[catalogs] ([id], [name]) VALUES (2, N'Tablet')
INSERT [dbo].[catalogs] ([id], [name]) VALUES (3, N'Gear')
SET IDENTITY_INSERT [dbo].[catalogs] OFF
SET IDENTITY_INSERT [dbo].[ranked] ON 

INSERT [dbo].[ranked] ([id], [name]) VALUES (1, N'cheap')
INSERT [dbo].[ranked] ([id], [name]) VALUES (2, N'midrange')
INSERT [dbo].[ranked] ([id], [name]) VALUES (3, N'premium')
SET IDENTITY_INSERT [dbo].[ranked] OFF
SET IDENTITY_INSERT [dbo].[items] ON 

INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (1, 2, 1, 3, N'Samsung Galaxy Note 9', 1000, 100, CAST(N'2020-10-27 00:00:00.000' AS DateTime), 10, N'Bigger than previous Note phones in every way, the Samsung Galaxy Note 9 has a larger 6.4-inch screen, heftier 4,000mAh battery, and a massive 1TB of storage option. The already good camera is slightly better, the stereo speakers are a first for the Note, and the Bluetooth-connected S Pen can activate fun customizable shortcuts remotely. But its price matches what you’ll pay for an iPhone XS Max.', N'galaxy-note-9.jpg', N'note9-_5__1.jpg', N'dsc03177-153388769796190219015_1.jpg', N'galaxy-note-9-black-back_2.png', N'galaxy-note-9-purple-back_2.png')
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (2, 2, 1, 3, N'Samsung Galaxy S10', 890, 120, CAST(N'2019-10-25 00:00:00.000' AS DateTime), 0, NULL, N'sieu-pham-galaxy-s-black-400x400_1.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (3, 2, 1, 2, N'Samsung Galaxy M20', 220, 300, CAST(N'2019-10-27 00:00:00.000' AS DateTime), 25, NULL, N'samsung-galaxy-m20-m205f-1_1_2.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (4, 1, 1, 3, N'Apple iPhone XS 64GB', 1150, 150, CAST(N'2020-10-23 00:00:00.000' AS DateTime), 5, NULL, N'xs-max-gold-sgmall-2sim-2_3.jpg', N'xs-back_8_3.png', N'xs-1_9_5_3.png', N'xs_8_3.png', NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (5, 1, 1, 2, N'Apple iPhone 7 Plus 32GB', 550, 300, CAST(N'2019-10-26 00:00:00.000' AS DateTime), 0, NULL, N'iphone-7-plus-pink_3_3_1_1.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (6, 1, 1, 3, N'Apple iPhone 8 64GB', 860, 200, CAST(N'2019-10-24 00:00:00.000' AS DateTime), 10, NULL, N'8-gray_2_5.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (7, 3, 1, 3, N'Nokia 9', 530, 0, CAST(N'2020-10-26 00:00:00.000' AS DateTime), 7, NULL, N'9_1_111.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (8, 3, 1, 2, N'Nokia 8.1', 120, 360, CAST(N'2019-10-26 00:00:00.000' AS DateTime), 7, NULL, N'nokia-8-1-featured.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (9, 3, 1, 1, N'Nokia 5.1 Plus 32GB', 200, 180, CAST(N'2019-10-27 00:00:00.000' AS DateTime), 7, NULL, N'1512844-01.jpg', N'hmd_panda_white_ari_lowres_row1_27062018_1_1.png', N'hmd_panda_packshot_lowres_row1_27062018.png', NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (10, 5, 1, 3, N'Xiaomi Mi Mix 3', 550, 80, CAST(N'2019-10-26 00:00:00.000' AS DateTime), 10, NULL, N'xiaomi-mi-mix-3-render-based-on-leaks-1-1600x1234_1_1.jpg', N'xiaomi-mi-mix-3-xanh-l_c-b_o.png', NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (11, 5, 1, 1, N'Xiaomi Pocophone F1', 380, 100, CAST(N'2019-10-26 00:00:00.000' AS DateTime), 15, NULL, N'poco-f1-black_2.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (12, 5, 1, 2, N'Xiaomi Mi 9', 550, 200, CAST(N'2019-10-26 00:00:00.000' AS DateTime), 15, NULL, N'xiaomi-mi-9_2-1.jpg', N'xiaomi-mi-9-2.jpg', N'13d2a6a0bf0091253dbafdd6aa3a3efa_xl.jpg', N'xiaomi-mi-9-6-39-inch-8gb-128gb-smartphone-gray-831513-.jpg', NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (13, 4, 1, 3, N'Huawei Mate X', 2000, 0, CAST(N'2020-10-25 00:00:00.000' AS DateTime), 5, NULL, N'huawei-mate-x-foldable-smartphone-grey_dezeen_2364_col_6-852x862.jpg', N'huawei-mate-x-hands-on-mwc-2019-17.jpg', N'huawei-mate-x-2-600x600.jpg', NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (14, 4, 1, 3, N'Huawei P30 Pro', 750, 200, CAST(N'2019-06-21 02:14:08.683' AS DateTime), 8, N'<p>smartphone of the year, camera 40mpx, ram 12Gb</p>', N'skyblue-rgb-500x500.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (15, 4, 1, 1, N'Huawei nova 3i', 280, 300, CAST(N'2019-10-25 00:00:00.000' AS DateTime), 5, NULL, N'huawei-nova-3i-trang-chipu-600x600.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (18, 1, 2, 3, N'iPad Pro 11 inch (2018)

', 1200, 50, CAST(N'2020-10-25 00:00:00.000' AS DateTime), 0, NULL, N'may-tinh-bang-ipad-pro-11-inch-256gb-wifi-2018-33397-chitiet-400x460.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (19, 2, 2, 2, N'Samsung Galaxy Tab A', 460, 30, CAST(N'2019-10-27 00:00:00.000' AS DateTime), 20, NULL, N'samsung-galaxy-tab-a-105-inch-chitietblue-400x460.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (20, 4, 2, 2, N'Huawei Mediapad T5', 250, 40, CAST(N'2019-10-27 00:00:00.000' AS DateTime), 15, NULL, N'huawei-mediapad-t5-33397-hinhchitiet-400x460.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (21, 7, 3, 1, N'Micro USB 0.2 m eSaver', 2, 800, CAST(N'2019-10-27 00:00:00.000' AS DateTime), 10, NULL, N'cap-micro-usb-20cm-esaver-ds026-avatar-1-600x600.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[items] ([id], [brand_id], [catalog_id], [ranked_id], [name], [price], [discount], [created], [sale], [description], [image_link], [image_link2], [image_link3], [image_link4], [image_link5]) VALUES (22, 7, 3, 1, N'10.000 mAh Type C eSaver', 15, 300, CAST(N'2019-06-20 17:32:04.907' AS DateTime), 8, NULL, N'polymer-10000-mah-type-c-esaver-pj-jp106s-avatar-1-600x600.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[items] OFF
SET IDENTITY_INSERT [dbo].[det_order] ON 

INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (30, 17, 19, 1, 368)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (32, 17, 18, 1, 1200)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (33, 18, 1, 1, 900)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (34, 18, 7, 1, 492)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (36, 20, 20, 1, 212)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (37, 20, 19, 1, 368)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (38, 20, 18, 1, 1200)
INSERT [dbo].[det_order] ([id], [order_id], [item_id], [quantity], [amount]) VALUES (39, 21, 13, 1, 1900)
SET IDENTITY_INSERT [dbo].[det_order] OFF
SET IDENTITY_INSERT [dbo].[position] ON 

INSERT [dbo].[position] ([id], [name]) VALUES (1, N'employees')
INSERT [dbo].[position] ([id], [name]) VALUES (2, N'manager')
INSERT [dbo].[position] ([id], [name]) VALUES (3, N'admin')
SET IDENTITY_INSERT [dbo].[position] OFF
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [position_id], [name], [username], [password]) VALUES (6, 3, N'mr.theo', N'admin', N'3')
INSERT [dbo].[admin] ([id], [position_id], [name], [username], [password]) VALUES (7, 2, N'jonatheo', N'manager', N'2')
INSERT [dbo].[admin] ([id], [position_id], [name], [username], [password]) VALUES (8, 1, N'mr.theo', N'mr.theo', N'1')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[banner] ON 

INSERT [dbo].[banner] ([id], [banner_link]) VALUES (2, N'banner04.png')
INSERT [dbo].[banner] ([id], [banner_link]) VALUES (12, N'banner01.png')
INSERT [dbo].[banner] ([id], [banner_link]) VALUES (13, N'banner05.png')
SET IDENTITY_INSERT [dbo].[banner] OFF
SET IDENTITY_INSERT [dbo].[messeage] ON 

INSERT [dbo].[messeage] ([id], [name], [email], [message]) VALUES (1, N'mr.Tran', N'mrtran@gmail.com', N'I need to buy bulk goods, can you reduce the price?')
INSERT [dbo].[messeage] ([id], [name], [email], [message]) VALUES (2, N'ms.Selena', N'selena@gmail.com', N'Do you sell motorola phones?')
INSERT [dbo].[messeage] ([id], [name], [email], [message]) VALUES (3, N'ms.Nguyen', N'nguyen@gmail.com', N'Does your store still have iPhone X?')
INSERT [dbo].[messeage] ([id], [name], [email], [message]) VALUES (4, N'mr.pham', N'mrpham@gmail.com', N'I waited for my order for too long')
INSERT [dbo].[messeage] ([id], [name], [email], [message]) VALUES (5, N'tran hoi', N'tranhoi.81gl@gmail.com', N'hello! can you help me')
SET IDENTITY_INSERT [dbo].[messeage] OFF
