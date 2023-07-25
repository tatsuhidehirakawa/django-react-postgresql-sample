PGDMP     *    -    
            {            postgres    14.8 (Debian 14.8-1.pgdg120+1)    14.8 (Debian 14.8-1.pgdg120+1) >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13780    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3357            �            1259    16413    account_attribute    TABLE     �  CREATE TABLE public.account_attribute (
    account_id character varying(100) NOT NULL,
    self_introduction character varying(1000),
    twitter_uri character varying,
    facebook_uri character varying,
    instagram_uri character varying,
    youtube_channel_uri character varying,
    skill character varying(1000) NOT NULL,
    rate character varying,
    status character varying(1),
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
 %   DROP TABLE public.account_attribute;
       public         heap    postgres    false                       0    0    TABLE account_attribute    COMMENT     B   COMMENT ON TABLE public.account_attribute IS 'account_attribute';
          public          postgres    false    209                        0    0 #   COLUMN account_attribute.account_id    COMMENT     Y   COMMENT ON COLUMN public.account_attribute.account_id IS 'Account ID:アカウントID';
          public          postgres    false    209            !           0    0 *   COLUMN account_attribute.self_introduction    COMMENT     U   COMMENT ON COLUMN public.account_attribute.self_introduction IS 'Self Introduction';
          public          postgres    false    209            "           0    0 $   COLUMN account_attribute.twitter_uri    COMMENT     [   COMMENT ON COLUMN public.account_attribute.twitter_uri IS 'Twitter URI:ツイッターID';
          public          postgres    false    209            #           0    0 %   COLUMN account_attribute.facebook_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.facebook_uri IS 'Facebook URI:フェイスブックID';
          public          postgres    false    209            $           0    0 &   COLUMN account_attribute.instagram_uri    COMMENT     e   COMMENT ON COLUMN public.account_attribute.instagram_uri IS 'Instagram URI:インスタグラムID';
          public          postgres    false    209            %           0    0 ,   COLUMN account_attribute.youtube_channel_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.youtube_channel_uri IS 'YouTube Channel URI:YouTubeID';
          public          postgres    false    209            &           0    0    COLUMN account_attribute.skill    COMMENT     G   COMMENT ON COLUMN public.account_attribute.skill IS 'Skill:スキル';
          public          postgres    false    209            '           0    0    COLUMN account_attribute.rate    COMMENT     B   COMMENT ON COLUMN public.account_attribute.rate IS 'Rate:評価';
          public          postgres    false    209            (           0    0    COLUMN account_attribute.status    COMMENT     O   COMMENT ON COLUMN public.account_attribute.status IS 'Status:ステータス';
          public          postgres    false    209            )           0    0 $   COLUMN account_attribute.create_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.create_date IS 'Create Date:作成日';
          public          postgres    false    209            *           0    0 $   COLUMN account_attribute.update_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.update_date IS 'Update Date:更新日';
          public          postgres    false    209            �            1259    16418    account_master    TABLE     ,  CREATE TABLE public.account_master (
    account_id character varying(64) NOT NULL,
    account_name character varying(20) NOT NULL,
    mail_addless character varying NOT NULL,
    password character varying(64) NOT NULL,
    zip_code character varying NOT NULL,
    barth_date date NOT NULL,
    time_zone character varying NOT NULL,
    language character varying NOT NULL,
    registration_date timestamp(6) without time zone NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.account_master;
       public         heap    postgres    false            +           0    0    TABLE account_master    COMMENT     <   COMMENT ON TABLE public.account_master IS 'account_master';
          public          postgres    false    210            ,           0    0     COLUMN account_master.account_id    COMMENT     P   COMMENT ON COLUMN public.account_master.account_id IS 'Account ID:ユーザID';
          public          postgres    false    210            -           0    0 "   COLUMN account_master.account_name    COMMENT     O   COMMENT ON COLUMN public.account_master.account_name IS 'Account Name:氏名';
          public          postgres    false    210            .           0    0 "   COLUMN account_master.mail_addless    COMMENT     ^   COMMENT ON COLUMN public.account_master.mail_addless IS 'Mail Addless:メールアドレス';
          public          postgres    false    210            /           0    0    COLUMN account_master.password    COMMENT     P   COMMENT ON COLUMN public.account_master.password IS 'Password:パスワード';
          public          postgres    false    210            0           0    0    COLUMN account_master.zip_code    COMMENT     M   COMMENT ON COLUMN public.account_master.zip_code IS 'Zip Code:郵便番号';
          public          postgres    false    210            1           0    0     COLUMN account_master.barth_date    COMMENT     N   COMMENT ON COLUMN public.account_master.barth_date IS 'Barth Date:誕生日';
          public          postgres    false    210            2           0    0    COLUMN account_master.time_zone    COMMENT     U   COMMENT ON COLUMN public.account_master.time_zone IS 'Time Zone:タイムゾーン';
          public          postgres    false    210            3           0    0    COLUMN account_master.language    COMMENT     G   COMMENT ON COLUMN public.account_master.language IS 'Language:言語';
          public          postgres    false    210            4           0    0 '   COLUMN account_master.registration_date    COMMENT     \   COMMENT ON COLUMN public.account_master.registration_date IS 'Registration Date:登録日';
          public          postgres    false    210            5           0    0 !   COLUMN account_master.create_date    COMMENT     P   COMMENT ON COLUMN public.account_master.create_date IS 'Create_Date:作成日';
          public          postgres    false    210            6           0    0 !   COLUMN account_master.update_date    COMMENT     P   COMMENT ON COLUMN public.account_master.update_date IS 'Update Date:更新日';
          public          postgres    false    210            �            1259    16423 
   offer_list    TABLE       CREATE TABLE public.offer_list (
    offer_id character varying(64) NOT NULL,
    account_id character varying(64) NOT NULL,
    offer_type character varying(1) NOT NULL,
    offer_title character varying NOT NULL,
    offer_severity character varying,
    offer_catagory character varying,
    offer_location character varying,
    offer_status character varying(1) NOT NULL,
    offer_text character varying(140) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.offer_list;
       public         heap    postgres    false            7           0    0    TABLE offer_list    COMMENT     T   COMMENT ON TABLE public.offer_list IS 'offer_list:オファー台帳（catalog）';
          public          postgres    false    211            8           0    0    COLUMN offer_list.offer_id    COMMENT     K   COMMENT ON COLUMN public.offer_list.offer_id IS 'Offer ID:オファーID';
          public          postgres    false    211            9           0    0    COLUMN offer_list.account_id    COMMENT     L   COMMENT ON COLUMN public.offer_list.account_id IS 'Account ID:ユーザID';
          public          postgres    false    211            :           0    0    COLUMN offer_list.offer_type    COMMENT     S   COMMENT ON COLUMN public.offer_list.offer_type IS 'Offer Type:オファー種別';
          public          postgres    false    211            ;           0    0    COLUMN offer_list.offer_title    COMMENT     U   COMMENT ON COLUMN public.offer_list.offer_title IS 'Offer Title:オファー題目';
          public          postgres    false    211            <           0    0     COLUMN offer_list.offer_severity    COMMENT     ^   COMMENT ON COLUMN public.offer_list.offer_severity IS 'Offer Severity:オファー優先度';
          public          postgres    false    211            =           0    0     COLUMN offer_list.offer_catagory    COMMENT     d   COMMENT ON COLUMN public.offer_list.offer_catagory IS 'Offer Catagory:オファー・カテゴリ';
          public          postgres    false    211            >           0    0     COLUMN offer_list.offer_location    COMMENT     [   COMMENT ON COLUMN public.offer_list.offer_location IS 'Offer Location:オファー場所';
          public          postgres    false    211            ?           0    0    COLUMN offer_list.offer_status    COMMENT     D   COMMENT ON COLUMN public.offer_list.offer_status IS 'Offer Status';
          public          postgres    false    211            @           0    0    COLUMN offer_list.offer_text    COMMENT     P   COMMENT ON COLUMN public.offer_list.offer_text IS 'Offer Text:オファー文';
          public          postgres    false    211            A           0    0    COLUMN offer_list.create_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.create_date IS 'Create Date:作成日';
          public          postgres    false    211            B           0    0    COLUMN offer_list.update_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.update_date IS 'Update Date:更新日';
          public          postgres    false    211            �            1259    16428    purchase_histroy    TABLE     �  CREATE TABLE public.purchase_histroy (
    purchase_id character varying NOT NULL,
    purchase_date date NOT NULL,
    purchase_time time without time zone NOT NULL,
    payer_account_id character varying NOT NULL,
    payee_account_id character varying NOT NULL,
    amount numeric NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone NOT NULL
);
 $   DROP TABLE public.purchase_histroy;
       public         heap    postgres    false            C           0    0    TABLE purchase_histroy    COMMENT     \   COMMENT ON TABLE public.purchase_histroy IS 'purchase_histroy:課金処理用テーブル';
          public          postgres    false    212            D           0    0 #   COLUMN purchase_histroy.purchase_id    COMMENT     H   COMMENT ON COLUMN public.purchase_histroy.purchase_id IS 'Purchase ID';
          public          postgres    false    212            E           0    0 %   COLUMN purchase_histroy.purchase_date    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_date IS 'Purchase Date';
          public          postgres    false    212            F           0    0 %   COLUMN purchase_histroy.purchase_time    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_time IS 'Purchase Time';
          public          postgres    false    212            G           0    0 (   COLUMN purchase_histroy.payer_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payer_account_id IS 'Payer Account ID:account_idと連動';
          public          postgres    false    212            H           0    0 (   COLUMN purchase_histroy.payee_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payee_account_id IS 'Payee Account ID:account_idと連動';
          public          postgres    false    212            I           0    0    COLUMN purchase_histroy.amount    COMMENT     >   COMMENT ON COLUMN public.purchase_histroy.amount IS 'Amount';
          public          postgres    false    212            J           0    0 #   COLUMN purchase_histroy.create_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.create_date IS 'Create_Date:作成日';
          public          postgres    false    212            K           0    0 #   COLUMN purchase_histroy.update_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.update_date IS 'Update Date:更新日';
          public          postgres    false    212                      0    16413    account_attribute 
   TABLE DATA           �   COPY public.account_attribute (account_id, self_introduction, twitter_uri, facebook_uri, instagram_uri, youtube_channel_uri, skill, rate, status, create_date, update_date) FROM stdin;
    public          postgres    false    209   �C                 0    16418    account_master 
   TABLE DATA           �   COPY public.account_master (account_id, account_name, mail_addless, password, zip_code, barth_date, time_zone, language, registration_date, create_date, update_date) FROM stdin;
    public          postgres    false    210   �r                 0    16423 
   offer_list 
   TABLE DATA           �   COPY public.offer_list (offer_id, account_id, offer_type, offer_title, offer_severity, offer_catagory, offer_location, offer_status, offer_text, create_date, update_date) FROM stdin;
    public          postgres    false    211   ��                 0    16428    purchase_histroy 
   TABLE DATA           �   COPY public.purchase_histroy (purchase_id, purchase_date, purchase_time, payer_account_id, payee_account_id, amount, create_date, update_date) FROM stdin;
    public          postgres    false    212   Է       �           2606    16434 '   account_attribute account_attribute_pkc 
   CONSTRAINT     m   ALTER TABLE ONLY public.account_attribute
    ADD CONSTRAINT account_attribute_pkc PRIMARY KEY (account_id);
 Q   ALTER TABLE ONLY public.account_attribute DROP CONSTRAINT account_attribute_pkc;
       public            postgres    false    209            �           2606    16436 !   account_master account_master_pkc 
   CONSTRAINT     g   ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_master_pkc PRIMARY KEY (account_id);
 K   ALTER TABLE ONLY public.account_master DROP CONSTRAINT account_master_pkc;
       public            postgres    false    210            �           2606    16438    offer_list offer_list_pkc 
   CONSTRAINT     i   ALTER TABLE ONLY public.offer_list
    ADD CONSTRAINT offer_list_pkc PRIMARY KEY (offer_id, account_id);
 C   ALTER TABLE ONLY public.offer_list DROP CONSTRAINT offer_list_pkc;
       public            postgres    false    211    211            �           2606    16440 %   purchase_histroy purchase_histroy_pkc 
   CONSTRAINT     �   ALTER TABLE ONLY public.purchase_histroy
    ADD CONSTRAINT purchase_histroy_pkc PRIMARY KEY (purchase_id, payer_account_id, payee_account_id);
 O   ALTER TABLE ONLY public.purchase_histroy DROP CONSTRAINT purchase_histroy_pkc;
       public            postgres    false    212    212    212                  x��}IwY��Z��lJ�A�w5u7�5�
�^/�&-ɶ<H���df��b(���`f06�}�>ǖd��O�D�A��NS����ƖB��yc�Eܒ՗��Jdy�����r��r}iybb�~w�>�<�p�>�<q`�~ey�N4w�ŉ)��ľ������svƁ_��~i=}�\;�\?�\��<qcy��r�	��F���w�T�I/�o�]\��{����xmy����7|_���V����_��7W'^,�f�돉�Q����cpl�<к�9�^.����Gz�T���sg8�8��Lq��X�xsxxx[���u�}��Bű������s�h��T;sDQ���mN[~�v��P����W>Ӷ���wf���1��"������ָ���X��毥���t����>68bu�#.�ۅ������_��G�~����r��S�KVRx�,HB�,9ma���1��|�k[�Oo�Ƿ1-��a�.8F7!����x2�1�u���"��]���k�r�vr���l�Э��������׭��[���[r��]�}k�j�ڹӀ��w>)�<�ͭ��١�\�ɭ�"6�#2�dW�`&�7ly�܁�{���'.�CO�vEc�m��Qa���M[�~|��֙�~h\�ێ��ڻ\�J���_�	>�6|mn�F�y��\�m,�_�Mm���u�o%��~���-9�S���B�\�g᷿��<>o;KexB�,|��v�ϯ���\~�nt�~���mI!,����RV�#f�k�֘�5��bz�Oh::�t�T�ӈ��ܯBk�$������Z�Z�S>�歋�+�wn�����n���2��6)�z�C��[yy�1|��N�T�{B����@))�"$!"����;;ӓ/����B��î\�R,���8��˕�
i�]�r�~���(5۱�W�v~�v��j�"�k�4�L��B��[�Ov�V�n���(<=��4�:6Z�����j&��գ����6�v�V�.\-�/�����ګ�m��m�e�.���]G��NϫK�-�����śv�S���Y������vaI�)�]�����q���{�0����.�U������.���
ݯ���+�-���m`�~��HB��D:Υ����$������3Q��/; B����(n�j�@����%^�	�B۠���$�|-E�3���˂��N*��Kz5���+�|?�^()��B����i�׹�J��
�o@_.�=��B|��ٕn.�-����`=��~�)�*u~�9�kz�M,�v�w-��0��Ѽ>�՝p�Ȏ��PY�V�K�7��_
:G���ܐ�-���=��n�!��y�K^Y�T�^���HN[v����@��=O%��Cgo.��r[��������*�s�wPk���w�J�h�(fI��:�_,���\�ܸ�Ű@�Z���*��Xjt _Θ�E�؃f���DnVj�?�=^y�D��q�;K�0��w���F��x�1��y�(�r���Ӎ� �㫗�͉R>��壤��G���Gr��s=}�k�W��dg���P�g��쾛�)tP�W����xߍ+��~�0��=��5Zʱ/�\��8�X��+j�_�|����៸Mf|��L7��剙����r����s�;E^n�ۮ���$�m���N�b�m���}�\�����/ƪ�_P��Y͕Q�Sp@��	�=7\,����Τ�Q�Æ ���{'nhq�Ä��h6�)u;���HGI/͒���W|��P�
:����:��D������-��i���x�1n=�������
����+A"�i˟��sp���x���/�:�J���2��G���u���.H��]�3ߟ�*-�������+?~�s��/vl��<L�]�Z5��i�'0V�%;��i�UNӉ��8�2��2?�8z�tnk�@c�H�د�z~�9u�qoO��x�ȱփ����[g'�'['�%�)sZ��5��/6��6N�oM�JF$y	��QRxe#HBd#9��7��/
v�h%_q{��Wv�2����1��g=n��U�j�ϰ�t�$ 0�@2nuXzG��+q#j]G�����cFWV����р��p��h@p�B���m���\\e���$7=�a�:�דު'��It�RтOq��lQn�`/,4�^o]�N	��־g���\�<�5��A}0ut��Sxw�����9k"�� ���V��=x�(d���(T�5��֕�j3� 4��C� ���1w�y�W��z�ST~�"���Ս����ƽ��K��\i���^)	�)IN"�f1�?��K�YP"��3.\w|0��Q�)���P����3:��#�z.�EE���\��m+&-7Rʡ�ۮ��C9I.�Z�:�+��D%��fg��JE��y|=_�V+N9��lӾ�e�sDNON뇫�8��������<:�<��!
������Ȁ�����]U>W��ԡ�\Sp�CE��~p����D�E���E��k��Xq�˹���nVn�0����M�*��*P��sA�)n��&:���մS��֭�'X�vq���:o��%o�*yJ��]�[q���Ӱ�&W^>n�N�"�������:��1]���6�$O������!�ܥ���A\rރN��ϟn�o�����+~A"~�Ia%�ERfV�����S�ή�r%���HX��!��1
s@�&Z3-ݷXÜ�6���@_9o��V�O��~�|�ƽ���������:jG@C����֫�g<�N�\^xm�9y�'��
o+�u����=)����u����z>��|>���C��<�S@ܫ�q���y���w�2��C
�/p�u�����E���j�'Q��xNP�u���޼J�S���	���bcq�}YQ�d�n>�и;�_�!�!
�f���v��Қ}�����7�u��ԍ֩�����{N5. ����ӭS�z�7�Xy�i��`Bސ`����)N�0�?h�[�\�T,T���������9a�D�TF�g�-t���[�\�����f��*��mJ
�m$!�Mrr���v���Z�ǰJ֢�_����j��cJ]v4��hw�ҙҳNDQ�i�8�D���P��Q��yX:Q[}8Tr=�~O��t�qw�:����S���衾|�X8�)Q��k^;O��ݕ��k������'P��&�����ڱн!�L���^!�!KN�\^��k����4�/ ��L^.��_f��f�Ne���x�����1���B2�	�n�g�����/�/OL��e�A���l'Wh���E��u�N�n�d:J�f�䇂�`$�����$?0��y�6I�X�dӒnn<��/֑�Ѳ���i�#�5{ (�j�cC�P)�2y��1
��b����:�p�*�6�j�{(L��k�.�� &FZ�yz~�j������]�TK�b⧮�<�x6�|4�����Q�\�gsZ��rnkC«J�4�V�э\d���^���KN�d�'w&CGG�4;�)��!�T�v�V��D�˺��hS�S�Ѯ�l�՘ڳ�b���7�Q�i=>�6}���@g.Q��e}�l���� L�]������꓇���W.m9ݜ:ڼp]׽�Vo�F���T�y�r���QRx�#HB�#9}���a��OQ��D��{���/J)GG���Y�S �X��:�[J�q�l��-2��(�D}�<��e^e����n�er�H������YnX��i�)�㈏U�	y����������:��Z�O���O����T���Br
�oѿY�o~3R*kh��oWl��+����@%�S�9]�k���$j��t~��`FT��i|w�1!A�_�co� �l�������w_�Mݸ����
�^i�9M���pC����cd�"��
O��fվɕ��V�<EE�h����P�˕J_Iᕾ 	�����yC�4=ϊ�#�k�*�I���4��(��1�d�ӝ��ZC����td�=
�3k�    �=Z������Ȱn�E�O^w�\���{�o2��|��A���De^�K���_���C���������ӹ��`���Gm�������%JPIᕠ 	�����S� ��`�J�`�������a�kь�ȏ��@�� ��ڜwh�u���œ������S�)X�ð6�����xc����ls����]��uxw���|�R�KF%�(|�DN�J�>U��!Xu��͎X�]=L�m�0O\He��Jf6���?�i�����`U\y���;�%��f�]���f�m�o2�E�1X�F)���⌸��⌊�W��$a�����B��4Pv�S�Xi.�$/DX���52Z�Y%�ZlP��B��m�X���17��<�9�\���wF)�%�U,�XZR���r����4�HA4�a����<�"��a�s���u�IE�'	�����a-1i�.����::��-*�%����564l��D@��X��}�_�f����74���"���[���,��2�������=��~�qK� D�4Z0-u�.��1���k�Տ�N�Y��0m��$���#n@�����9:�$���6���O&̴�	")_���;�XtX�,�#�U �X����(-�p|�	��g!.m�׸�z�ueͶ@]�n�	�]!�Y#G���P�u�HIᕑ 	������?)���n�BQu0bI��-?���t>gt��~��?�����=L ^߯�]x�u�_-���ۅ�ym�:�va��2�.gN�a���<q�.�h�n
��i_�]���#QV�.�A��uzA�@tx��Z���a�a��NA�z�X������溺��{�V����iN��m���2�2�D �e�>�v�j�P�@���c�~�Z�7.8BUQ�"TN�
N�&�(��E�i��zG<.����/F�d${t�s$��������w��ƴ5�?kދ:��Qbi�#����кD߁���ɍ,�,a���!�9I�\p�ШĴ��*��3�&z<q���f����Uz�C�ډ$ԫOETO�:T׷��E3�l���k'^״��0��I
�-���SGå#..X:*
�t8I�t�O���˘1��a,��e��=f`�a$�c�p�h_:yw����N��ퟵۿ�x������������'�k�ϻ���zw�ѻ���\ۦ��̩w�������k�?|���Ի�i���{7��?O��&���`R{W���߯?�����wON���-�E���VQ��֜$h-8}��\RF�l�# ��v��с�t#:`�f�|_I4Sm�F4_i=B�H@>�[C��,~��b�(|XlN���>h.-.b�o<�L��rJ���]���)$mˈP�y$6�P7
;��Cd�fYٙ�Y�w��\?�γ���en �RP�AX�$��9����L[�.���]HtXI�#�Ѐ�H 4�E��Vy8�t�����y�6?�nP�%��"�����v�u�C�7v?_��i��<�����m�f:	�W�T��'	�8	N9��q�@[�>�1'� �n�\���&{���<�s%m�jW�����J^V���^A	�AIN4CepE�8AfV;�h��aߧeE3I�3[I�	����*
_>����c�O��rUO[uѢrgy�W2x�}�����}������('.xT�(?#���<h��
`��{��]yq�U�7i��mж���-0�ж�i��� �J)F�������f` ��3D%{��ӁV�/����{S���h?0��M��#�%̢�A	�fN�!�aБ|a(�Ҥ\�k!7���!� ����o���{�I�-��6��]T��*�,Y=2�TƖ��c��f��w��"Y*��'�헞�}|��zD�����(���������=m<g��f�\[����ngN��,8}*xV�U����D��|�H�	���D�1�V>���F�CdGo{�k�O�
^���gQ�GH���6�u�	�����)�fj ��+��%^�a��ĝPL�ݤ�w&��QQ�N��N:�w���E�յ@�v"%���;7RȽ����ߵ�$~o�T��'D�*��E��mB��U�T+؟� t]��uU+�*Wg5�Ok:ˤ��9Z�Z��+��(| XN���y�6�5I��E��o�����8c�%G��F5���Rb�%M��-��ec��55ݞE����7j�]�E�����6�[��׈K��RQ�:�8IX����32���^�(G�s���"�V�H����R���-�o��C�(p���8�Z0�(����$e�V@Ǚ�����m�K��ؽ�u/��m�O��:��	�Z!�C࣡��M��$aS+���q�ZA�F���aS��#��]=:�(�z�P+�x2�7�d���Yy��߷����Е�n>w��}ل�C�1+���b��ܔ��%8�����p9IXWp�� -�%A�P��][�$X�3k$;��h�Q��3�\P�-�$T�@�����'B?�E�Z���rBb�v-�$�������M҅T���=���ʿ�����~6��buz�a��l�AZ�>�.�:��9yQ���'A+�lQQ��-�$,�"8}`�TZzG魺�
�xG<&:��@�f<������G3/7��@�L��$o�^ZW�_��k��B	�#���8��u��_�f#�SbE�A���Dp�� Bp���%�m�Ũ1|��"�Ԟ���Cv�K���@�� _pr�''�y4¼�p� y�r��h���.����"���y'3�C�-�r��8E��JW�8�!H?̌#|S�J�PGr�����0#	MsN'�fI-��t6�O��ĚK��ɥ��Vg��1�{1��k���%���h̝����O���h����a�h�qˑ��}o2���
>����G1ϖU|��mm�zt^���\E�8'	���ǑX���HnӰ�a������4�Jb��i��`��Ȏ���|%S���j!��\�ƙi��9����C�0c�������X1�:w��>��� ]�M�DW-A��@��'� J�D�I�@��ӧk����t,�)d8�&��[�ru+ZIg�����b��A�?m7����p�����XD��؈�3& R��'��Bb����dn�h:)�ŖD0�Z��XY	�Ԙ8�g+`��G\��7��w!��PR��W0����Ӈ�J�A�Ɔ�X{���F\
D��Jb�3�U�D��a�9�5S��.��&]���ǱW���WWF�i;]�����΃]��!�����Sc9���3���׃���?&������3�;�0��I�e�8����"\��Ž������_�׬��X|��U>�s�0�NV�?���h�	���F�v���#���:8�T�y�kɥ����)&.�3�������G𮻵_x�ƕs�һ�P6�h��\.*�����q9IWp�����v�0<���YS2>g5%�5gDRN�;�Yk��cE}��@�2��z��Q�[�Lq�{%���'���lcr���b.1��D�ȕ��T>P'	�	N�?X.!+:o�7@Q�.M3���?�3��z�d�`����/_�xS{3�z���7���௺�z��K�͞��o&ߌ���3�M��G䓯_���_�C���۴�����1��^{ ���}�)����^x3�a������$�������ϴ�������Ѐ��맯_����������xSCF�=�c�_�#���{,�1~'��ߦo�SG��G�*
��lF:7�s��IM~ C��4�5i��M�t}a���C���vX�s`�!G�����~�}{q)w���������m�<��p�5�4G�u�ϭ�_m] ��U�8�T?�+r�m�_'�l�U>��I�,����a|���qJu[�;���,�5L=j���p>S��2p+T�@��51w�^�)�3 T�YY�y�'i��dh   穼�@�))|o9I��[�郦R���$�3�FBN��B`&�G�%��RO�[���T.�\!��𐁠J�r���:sv��cN����T�����q�����m�h�u~���V4L�uk�k>�@�|��5�さ��AUYA�*3�Ъ2��i�Y�m��63⬲�f�"�?݁�����F�>�d�[�e_�~X}�w�gH�4jS7��e6Y��up6����ˍsV�������'&�϶�\?���5Q,$����9IQp��hDf�������6Ңʆ�]6�x��r �3�sU\�U��ݙ����ƥ��Oy&���ؠ|�GBl�o�f`����w Sr��N��)#	M�rN�Fk{!���4Y��Na�c	rr�ז5s�34����Z�m�KP�Q��Q�����F��+�Ѕת�Y�p�Ig�`k�RvWއ����P�v�ٌ�j����bz��j Q�U�@I�B�I¦�	N�*Mi�iW� &h��h�c�ćo�h.�=\J� ����D��I0�V��S�듐� UyN�����q��\�R�r9�rVR��|r��1����7���*�S�*�ѹw��8Q;����P���#ή[���^��TP���)	�K�y�|��u��nl3ʒNzs5��fb��k�f}��QW��Z��I�/��$a���	zR��2Né,�S��Z&)����:z)���<�J�|�T�{�I�������|Z�����8�${{�X�7���Xr$�۪���/v�X,-�'w��r�/�ڸv�1�lm�_��$*�,{{��zEq�������e�-lk�5�YI�J�HB��pNV(���6'P����Ku,���QI=t 9o3�ƪ��K *�=+�R�1�nն��d���i�&��AiDA�/�0�����[NS�!$����D~U'��t�i�vZ�c��#TO�F6��!�P&���*�1Ef�qt
�b�s4P:��*?Fb��|:"K�5O�my��3䊂k�*
_����ո�����Z�Bfa���0�ӻ���D�K4k�+�I;�9��-숦����Цݻ����K������xxe�@s~�9u�Qb횲�����盓�6��<;��B�@i���������s�0W^p�8��RS�S��)��bԓ��Ü�����BQE���z����sbr��8w҄�5<�<����DxI�"������8IXIpz�����5Exe+~:?��\��?�COE��ru`0	t0\hJѻ�d�����x�N�T�\k�2��0TM���s�Лg��8\3���5{*
��BF:��s�CY+j���-�e!�K�y����f�pGG��}�5�y�/�rCPj,p���l5�Q�4b��g�)p�zɻ����H��8"� �Y�
Hh��WqɁ�PR�Ƽr��1���G��]mc~�ν0�w6+F�_zRf�w�/᫲�F4�6��8�-\���|~�'�!k�*����O���R�r]��URxe+HBd+9}ZXZ�E�h��ct�zP�-:f��=f����4���S2�ؘ��{�SS"]?ȡ6Kk�}�(w��_�e���Kf�~�yl"������Oz�O6��,,P��o*��:��B�П���uŒ���T�n!N�-$8}؜�����nĩ��A\��1�"7���jz�0�	Jz�����*
_z������O�2���-C7�j�R�`�,�4��Xnx@��P`�nbF�F^�^	<
~�b�j���Om�	��Z�dT�^;G'R���$��k*
_��I5��`�,W��5W�`ä�]*��h�����s�����j����0ݏ��ӫ7�^�='��6+�.�Kp�51~I����#	��qN�"�]���#��֘��)t���%��ֈ�nK� �@�3�+ MF&�9�_f7䜉�d{tľg��
���6�!((�0F
C���OP]���IauZ#D6;�ya���vՁξA;�����^��d�X1����S1m|-�V3����\	���A��Ź��C�0����U�CI���I�<N?�]1,}�5�q4'aD��d��,U݅�Tm��<�!؜:-�z����%棵N^�_�1N`��K��z�H��a�M�Л����:����(|^>'	�����2$� �1����Y�q*>�I�C�ʈ=<�n
s�i9�P��uh�s�&�����6~���>���V.P����t�q�i���i��b�޼J�qX�$��e�-�B������3#	=ęs�����ax��1�cYi�d��d&j�h)�9��A��|?�))|S�9I��a���@�L��`]1�<43�]�-BlF�6���� +���r<��`��"�~�8�N�n=i�ټiD��5sh�ί��!ZK��C���.1n�¶�\]����	��$l������T�G~*�E�Gm�0I�!&�t��Hw���AA��U�8�f}���g�*
����i9�D:{a�V�7��銧�q�t�ko]���L~�����6(E+(��hFZ��>�$~�[^��I%2LZ�h����`��}iW1 V�\;zs�Hu�%���m�l�����r�;��uv���o����I�{�,��������P���@��)�a-��j��������&p��F�`U>,'	��
Ng�<3 L��5��t{8G�Ҕ)�y:`��;���?���[��Y������h�\�i�Cpm�֓3�'g7j�����5��p���bfI�ܦ�si�ޘE�Xz^�w&�ȧ���8IX�Op�.�]h2�����T�X�b����u#]����|��=wB���OЩ�m��@�����]@l����qh݁��s���qPE�S!�@�S���E�$aC��O��k�1�p�k�D41�`�S�����R%�AY#�|��4jn�"ү�A���mW΂���稝��n<��a$�x��}3�z;_�YC*F#�*�@-���OF���`.���	�'��N�w�y��W8rw��iJ��Ҟ����Ay��=.C�;8�VQ��hNFN��4)[H�i�����O���X2:`滬'(���[X���r�0+8}��x���N�����<�$FθauX�hY��NXC�����
�󎟼ge]�^:�C3"�^�=xI����$���M�<c���%�SOV^��^�?���pc*����"W(w%�W�$D�����5a}n̙�r��� �X�b:��Lo!�>+�"�`��w�աx���Z?,�ݵRk�E�{�T;��@�t��ߺ��|�Q��&c�U>1'	�N��E4%})4��0�aDD��4�w*j'{G���X�a�a��L	��a��c_lg�L��X�g;��2�,�Z�X]�����j�~�G����{������\A�`��mN֣-8}��hB
2�g,@Xd���(��T��G��j������ď���S�����;�yyHÄ��0\n^8ߜ��~�a{��8v|��3��>Ȳ��$�[�7��Ţ�-���g�9I���>B>Ԕ^��=�1�O��7a,��I�]��B�W#��GJ
��$�xO���%��%����y�qqE�d�Bs�������`d�.����4�����V��1����klV.�����'���ie:|~ 82�70d_�U�BU�Z('	��
N���4'Č�S��5D����XtD�v:�7����8��4���7A�`�mcj��#n�Gi=z��x��y���l�/���U���I������Z;)�G�*~ң��/FG&Xf���E���Oލ            x�}{[S�J����W$��� �y��r�PRꫢdK�l!/[�mٕ����(�1�歮^�v{���)�v^�Q�>��xj���%uT����Z�����Q�/����O"a?����O�qt��|��D�?���},^����C�[�|�ZM1���1{��C���f��O��)˽б��~�[G��%
�1
���@�q�>I9F?����e��)|��ρ|�������0x��@�PևF_�0��z+JD:�Q·�zXG^�%���l���O��DWj������I�C�!~�ߎ�hu�E��8d�N�~rxΐ��²4��2^����Wջ�����M������EX����a��|���tڙ�����}������(>Yo��k1_�4��LH酎E�Sz��ǃ�I� NL�/�sN�<*����E���J�"��A�b�
�����'��|8���p�eVz�cP�n?��|�t?�D�3p�y����&���I��T�:a��Ƣ��(f�H�U2��/ц�e/t,���{z8���F")�U:
�+Q��Z�]I���׀E��	Z�e��?�E@��0�q���~��TU�Y1�BǢ�29[���/Ϣ\����OCg�ٳ3��&�����:L��u�&���5������b\)�E|:�W+/t,z�v��=+n�.?B����,bv���V��:��6@�::��_8�a��X"��iT�h�ʡ��:��ѷ�|���C�j\	40�8
w��<0XD�V� �X��Ҥ_ o0���X�ը��X-b�ϖ^�X$����O����{�:i8����ѿ����o'�:hM9@�aÚ\�`����
z+%Y�
-x=�����>������ѹx�qp�?�֜�,���h�������k���V'��C:�t�)�7:ð7g喤1FsR�c��б��#^_~���	>��Ȧ���8R���k��d�3^���&���~[�xo�gE2d���l�ˇ:���/9�?����!�)����t�����H�5�L��:g�h�E5up��RCROp��S<n����0_��w�o��|DR��£z����&�5Nb��t(����A�5@A  �-U5�G����nf��:F}_]|��?�^p���f �Ҁ$��tbC�Pp�~&�Z�y��Dv*����8�[�"/��ӷb�ӱz�c���ӷ��_���;m�Z��	x�. ��ߎ�dQ�����H��2!�}'zK�q�aC��.��������A���?�#�j�;�; 4��k��Vǌ���  女S� �%�YQT����z兎Eo�^ޞ����j�U}NIÐ���H7�����ё J�I� S�IM�4H��H,�zL^U��:��;�pr�y/�MtA!!Mi#;�-k
�(�,��B�Q�B�5�"u�3,2V�b�[��|F���^;؜���OK2O4���Ю���Vjg�g�"z,	��b��l�I��)ʢW�,D��ie5�y�[��ו:~X}:Or$���QH]i�3 ��N-@d�$Bg��A%��<��.	z)��!,PM���x�
�ZR�e���{�^���z�QvV7i�) �!��I�ҡe ���E�fb�/Ki����BǢ�ى�8�s|W�k�����/�%� �@�q�ÆI&:1�) �z;P�"��9Jq�F3��BǢ���E}0��G��( �/	�`���g8�2���歎D�K�`��;��[�z���V���6�BǢ��w+\M>��^�FB� ����{-��m�r��b�0Q?&�Q�y�38	T�8\V�C�c��7d|�ɧ�D�\�:F�gG��>���1�F�:���m�1he5�g�#r:e��d.�!:�u��r���h�F|�*6���%���5����_n4*�G[Ǚ
vw�Ҡ'���tܼ�v���-�4�=դ��,"�Q+��=N�Эn4/NO/�����)frMJ>�pT�+��N���V�+���l�ZS��l�mW/t����:| �?1��D`�J.������S���M9@Ǯ�Y+�Eڙ��q�-�3��5[�x녎E�pp18��Ɗ�P�{3|2��J.t� "Z�}#�
�)��`�xA�V�6E+F5~�B�"rp�?%?H�^ °d�M�swn[۩�o�uk�=�F)l���:����͈�0�h�WŢ�L��1��p2X��n.�?��_������0�f��r�:jZ^���f�C���v�����s���:M�G2\�7�ЬD�*��R?q��o�ͱ�F�-๛.q�(��ޖ�'�\	���v��^�X�q~��zw5�Ï(��m�i�P�֜�?G���c�"���<&k����TN?��l�q>C�J��M�{�c���5]o���L�(���Ҷg��!�fh�`#[�!�@I��#��� Z�l*"ɖ��J��:}/~���|;�"ӌ��X/� �&�c�Q���8tۡ��=�&��*V��j����
ͺ�[ky��.O��_�o�t%�%ۻ&����ҽU��Z���1\���M�v��B��7�G^�X��-[׫��W���k��Gf����v�t�!���%��;��m����/т.	Ve慮�Ʋ'�s6�������v�mٴ>
m���ax4���Mo���u��I�x��u$�ɬ�BǢ��8�����&�فkڠ��=��fdKM���J]:��2��r��M9����j�=n�Н�|�e��8�5�R�6�ϑm�Ul��:��5;̱�Q��WL
����T4�BǨwD^���z���a'i3ܒ�z[4�QR���@T�]�t���߹��^Ec6��MJ>��U�.���op������Lpb��k���fCD�0�V'L�Ez �C0�u'��"J�%Z��6���Q�]Q��[~4:�!��O!�w��#r�q��17BOmCӺ����mI�c���M4ek/t��|?��k������K�LiÖ�jLV�:eP�y&�):3	p�ޘ��|Њ��b��z�;ݾ>��&��35��f@r�<7o�a6T-h�e��J7��@*@x]l5�(��UjY�q+t߈=�/Opt��Mtu�XBB�&I[D�7��v&�t6�u|7o"⢹n���"e�Z�Y�
���7�⛚�_O>��h��fL�w���'f ��ێ ���'i�FI�y#�) �MzC>��Z�a�V�����N�o�77�������6,`,N�7�Uo� >4�=��o ��6�w�0%���*2�<�(OH��xㅎE�sR_���߿�H�ɲ$7��G��v$�m�86��$�����J�8���*Z2��
^��(�B���=�����S͒��	�!���Zf�5â�b�з��_�6l�0�\ћ�AR�2�F[6L�{�˶���D���n6��8fq��vL��鬙I7��N�͠B9�BG� ��P5e�B�L��(�B7��_.G��y�|�����Sg�9ro:k�F��FGl��t>�5$Q	K���IZK�
�	,q^z�Koo�����\|_�ρ�%��#�RnH��L������I���o"��H�g�,�z��n����h�s.���%�.J�]2�j��[�ܼ��p"����63IM"U�E35�,����k�u�G|z]}��#m�p\2|�i2��ml�6�#.d�v��v���
�BVb�%*Ų�y慎E�/��_N	���,���N}g	�H���4�$�o��D3FjZ�ФZ%W�-E2��q+t,�GoV����i#F�!���]��K��80,�*����%�@7ouv}Ә�L�	�nx?�[��f���ފ�t8��BǬ����$��^ON���y(i�z7P�o���:i`Z{4l��lJ�AU/±X��S�u��:=�ٻa��?//~!I���o�M�י�N�}������p*t���0@�B4M�F�l9B����{������pv4=�r���h�&ɡ��vs7�~�K�[ 	  
x�3�
�B�t��9��iNR����m�t5��^�ʍ�F���w��oH �%D�q鎭��9��
ȼ�������=�.&U���E��f�UE_�~,����K����9@��15װD�B�Έj'�fY�k
c�^L\��
�d0[���cх\��_���CTP��d�@�Γ������D�c�I�[s�M�)l��K�h=�%K�F�l�������ZD7�ѕm�������s	PO�֏x<7G.�س*]��U
�`	/��1�x�c��ɧt��?�k��ᅘ�l�����_��vq�R�怋���	���^��*<��z�6b9�����_�O7�xyi�܌�P�Mô#�쐋�akuf��� �l����^��`½���l'����}qs��߼�o�|^&6��dˎ�kTDj������,��-8ɦ�Z�|��o����t$�����2�[��-@�c8aW5�ow�7vXc-r+i�ҁ{�ހ�)���LW��]6y�!99�_�O~>i�T͹�����m�4�-t�f�O͙�l[݀��JU�^��b"�����ۤ�B��,����/o^�߼�^c�=�`�I���
 >���Vgڀ�1nwf�`�k��W�iE3V�,We<�J#t��Y����S�k�˄��o��ߎ���p�͎�]��	swx�M�\s�F6yT$�B�"���6��հ#"!�hs��w���V�f��V��D�ߞ�@�K��FLr��1z���j�*/t,�1���K��}�@Rj4r�b�I��(C� J��J������73Wn��I�&���*E���;y������};AD���������*Iw�WG�Mj�����`����f��eI��|��REq��B�"�������%�nA�0sP*�)��S a�A�m���3��|!1�f���L�Rͧ�P��Y��G/t-�8��]�]<��Q�C�q칭;3�4��VG_�w{-�ucPH��H��ɺ@1M75[ͽнM���W��y����$ ���v���
�4	���:C	4*Q�e���k�j�ć�J�!k��d��BwXz�w������I��F��}${`+���̵�&ܶ3�����S��t��B����iL��E�A�4�;w�q4h�G���B (�v�JG�m�I�ވ,�A>�P9��xP���EB�"������ww�fr���̤F�M�B��޴��ْ�t�=eո�g���Ha��bw-�?p���˄�[�w��M?��?h������@#WjQG�M�ɨڬR��-"����l�zvz-44�.J��ّ?舟����s�35��q\��f�e>^�?ވ���?7����"��A��jc{���'�[�h5:��|5H'#/t,R}�w��ܾ���3�f��O��.����S��$�% ~2��ۆ܁�R�H����X.��R��F��#�K�t�pp��ߙ�D���ڿ�mw���7��R�� B3��a�;oao��#e��I�{�5�Ւ{�;MVu��ñx����%��*�T��5j���vS�tfz4$�5����t�F�s9+&���٭�L�~|8y�?1;77�2|����l.��_��Z���mi�m��6�D�™2e".�#/to\����|�i=�BҜ"��65 �#�����~��3n��@�����&�yJg�*\d��qⅎE���3)�Y����$�M�>��g�������:nh$ow�0e1�-��8.��d.7"�^�Q�er���HRfVn	i�'�� I��6-,vxdu�A���}7{���^A���*e�������?�{�E����lD<�fӈw�%7ڲ��g���#3lu��St�V�����D:S|R�^�Xt{�c�N��?_�T�R3'%��w����vw�y��SI�?l�r��ނV�`8��ǩL&"V^�����G{�����
7$�9�p�a~���^�vnа�laN���HL6����q�]z�c�f���Տ��W{B��pwQ�w6���i�[z�Ф��1��1
6�[!�e��:��x]�GC/t����/c��F36�G!u��'m�|��e�[�X�ag���m�f9���ZEEZ�(z�b1��^�ε���o�O7#�Qu���;_x���̝Y�^���E��S��7a���^jz�Vb8<��Н�g��x������3
�?%�>���7�TUu��;I��1�Q����,�^�'�t^��Q��f����=�~utT\ܩ�>��od�v�mB7��������%��IaS�`�l������~���+�R            x��}YWɶ����mRs�ս}���O�����H��+��'40������A��f~�Ȕ�t�B��1dDd�$\�V-
�T��{�����H:l|Ic,=���Z}���r_(�̥׏���l���*��X�{��/��5����-�����Dy<g�^U^M��k��l������9��8���̗�c>��o��3J�͒U� �U�k���ܲ9=i}\*g��xdl���ʻB9{�g@�X/g���2z9���#_��?���oW��͹�jq��r�Z�#4�W������֋?ʹ�dB��d9���+�����q9wfK�ʕ�F>��ޏײ�Bi�Z��'�3�?�?km}f������������Ⳗ�P$<����ڃ�Hg.�T9[�=p��E9_���G��+s�!�x=g}9fo�=2���Y�y�-��h��ή�=�ek��Z��j̯�)T���rnV���ǿ�TV�������$a��qx�_�}/�?����ss|��������8��©�ͩt 1���{�)?p*wR��s{��Le���.,g��u�Z�o���v�U�nd��.p��͙Y�r�|��Z��lY��l�*��=��M��-�e��Y������`6gȏ8 �C�i��;,���`��4om�(+�����[8�u��P�$]E�{ֲs��%���6�,޻,��5�\�o/N_p�+�����p�������r��xI��'g�w��a��rc-��ٹrn�z���{o(�G�4]��Js�%�� ,�|r����x�5�'���TBx�:���[!L��Nq9���O�7^���J{V����;y|X�m{��r��7ۮ��i��]�[���7���)�`��	����!_�h4�	��{��.�.˹}|�i�U�6~��G�����C �(ί̳��a�>�f���y�3?}����Yso�#t�`��J�6V�yY����bG���5�_'?A�������LS!u�mq��~��W���ؒ՝;�M����#�7o��O�����.n��:O~�€;Q��S�$���yĹ��a{3�X�@j�W���@�~�5=$�+�d����Y��r�l�"���L��6
��*|��
��<^m���]�d�z�؞�ş�p�	����}]�KyS�U}~g�~���rX����e"�ek���G�$�B�|���a�+��[��L��\�f��%�m��W-D���j]�h,ؗ�Ō��p�-�l�|��;��Rڮ,M�T�#L���x|�P=�	;uoќ�Ax�i�e+vv����F �@M8�0�΢�Ê����U���^����Q�;�Vj���=^_�X �%{@����?_���W^ez�],��!�,Q�$�c��Ǉ�ڧ[P�`���MU�x)>��Z��gHVI�?��R]���@��?4�˷ �$�#��Nd���������Y��R~�4����s�D ��=zQY>5?��ݩ�A����j�����uW��GX<!|F�G=,d�H����UYٱm/���I��5Y}xfn���U�7P-NǪ�f�}f��eK8��������#���$Y��^��˿���	U�ަs�N�,-2ۉ�V�"eq~{a͎W�Q��сe��/������P=�i�-R�P2�o��<�4r�P�͉33/γM��@{4�H��%58o�2�
�w�ɬ`�����=��7/TÌsZ�>1B���k7�Á�@���t�&�H�5�m���~'�� �׸Q7�lw�-j�#M)��V|S�Z���вG�9w.�3wH�%�GIU7�9�s�����[��c_!��N�T���22�Y�:����,U-������}=w7�hZ�J*���d"�F���n��{�%G��
�Tĵ���s�wJ(������Ԥ��:p9{B��'�2/�_vみ/ns��op�^�����`��ߗ�v򿿍�u�;���/�;2��L�����/{�Z9 �=^���wp`a��i�`.�����nP1��Cc��h�����c~��}��S�:�s4gmOۮl~��.T��؇Ucp���k��"<�f� �G
d��`����/�Q�ܰ�|���S�H���,(��;T��
{$악�Hğ�����G���D��-,�·���ǧ�BXz�魫z�j5�)��yW:@��Pi��?���Rp�F[8�j�O�w+��S��
����'n�.!łj��[���4�X,����H{>m��;��.�`2ޛ�1���ܔT>�q�	��{����{DAO/f�K
/cμΛ�g�W� `�D�]I��P���R�m��O�ς���Y=8�-?wԷ o�Z�f��l3�꘥&�����Z�kn}��5"Y���p��mė����qt��u��QYW����e��VYع	�z�s�G��^���	
w��@G�0)��eP��%q�ẑ���2s���i4V�>W�uY=�"����Ȱ/e�%;ڂq�̒1	�Չ�$����ؓ����?~�ퟷ3W�Ɨ�����O�+r���43X@�ɶ�����"�/ �anY�Va�r�W礄WNJ�T�X8��34����ǌD{9��f���z����vuw�Z=U��2���D�}K�a3���� e�Y�	�m���FS�K.<�rq�rۅ�V�u�S�]=f���)��ޡ"��IL|6�y�F���(2%*�|�._lB#�/_��[��Ō�D0�I��B�c�ݙ!]�3Kx�E!�� *��s;���p��U�mޘ�K\�^1���eb_����%gR������ؼ^�N���_�녃��(]��:�{|b�rWrFмD���]���.�e����sw��N�����sBs��e�$��?�JF}]��d�c`j��Vξf���̗!'���g�W�L#	Z����hC:l�q2����>3����鶹����hP� a����� ��9�l9
�'g)�T�84W�8����O�p$%d���Da��olW_�t�(�_��s�d�7e��x #��Ǜ�[d
u�	N%�^	���_N�D�k������z`�
�J�B��Y���9a!H��&��òS�i�a��ƞ�[A�&��w��[��T~�S�<�E���<3t�j��C˨o�$}���h��7�Vť�$t?�7�C8�0iޞ�_-^[kǮ�Z�0����9"�Ɍ�4*�P�H�������w�t�N�Rc���-r��Lv>����D�VV�R�n�B�Շ	�Jr���OI���FBcW�[a�V���;�鮸�^@,W>�o�X�Mx�������j��z�;=���=��|m��:��0Ou�:�֌���sq�6$�HF�1Jʘ���� =���B���=l	���6��2_X����EРP��862T���N�t���������q�b6!� T�pI�W%�G��WԔ��`\ǆ�j5����`�Az��ǸqȄ�� Z�{�*�`{C���2J��}����b�F���nPT��1uX��S���yn@#1A���-"���E;��tG����;Sm`�4��¹�av �,%�}��V�?U~Vo�`�^H������6~�l}aA>ɡa������
�r'�Ճ3a���T�%R�U:�CT�|3��)I�s�77?R��`S��U*L������0t���]b�u\Y���++���H�@�s�7��r>n�2a�&�+�;"	��!̡@��cJ�s�M�M�@����G���sV�����]������;����{M@�|�+/�d��cȩ��������G�i,��l�|��Зɯ���pt�-��ick��%E��#�o�O�X�5_�޾Bo�茏2�E����G�]	�v���VwhƘ�d�KB���J�y������k�;��EX}׉�2�gO�"+3W�,��P�H�D���׃
O�
V�tT.�FGu0z,ܛL�F�|=��p�`�ہ{R��+
�K���ჵu����λ�Op�����6ס�lA�s��X1� v6K�����    �g֓s�����u���l%�Ֆ�	�
_�u�"�Hq}9��hc��Q�{c�����@�/M$�S��d��4n���S�_7���?�Mq�q����$*�D���9�45\k�my|��/Aa�}4�1��=�ݎf�,8@N�0��"�P�"K�r�y��[b*"�t-m��h2�5�z;N�q��KD$2�M�k.d	@�� q�_e�r��$53��	[�=�i��0X� TF>��'��X9��ϣc3�D ��m�%㺃"� ߠ�q����pc�&*er�0P�^ȋ����oQ�f�H���m>"�R����P�0��e��g>8�!��������1�4R&pI��=��G�U�.Y�{��S�\@	���Y�T甔�Ҫ���SNJ{ ꏵ�|����H�k�<L���.�"JA��HhgkenM�+Y���"����2{�)�k�KW���w��{�Vq[5�nD��I����{i���l�
h�L��>2��;d��F�Q'֑�f/����=j���H����	�>]Ys�<|{\3]�clH��F�?�|c��d"�вԝʢ����#E��C�~ӡ�� D��1�Pj�jT :���'q���e>rr��XԠhv�76��ย�n�Ox@b�ܝ�����r�e�f���aOV\���|湏�������gQ�k��z�ۆӆo$��3l8E.�]����	_��8�`M��(��%"��[4sb��*��
썞�n��/�D�''�Y�AB�}VV�g��@ �a�U�o4d�%qx������	4���R�Dp8�5�$th9-,�{�����`I���LN�����6EP�h��̇|ei��W�����D�D|��L��}��E��Zi^��2�F{�uƱ�fW�ح�Z�WK��L�%��s�Q��?���	{�Lz����W�]Y��;�
��<w��[�^L���Ӄ��:�����u�$%0���%68s��%�i��`-Ƃ�s���2=���Ym���W��M,O�__���G�1�c]�v߈�3ؙ�G���ua�V�X/��j%mr�����Al금��'�r��º���L�|�I�*#۝��c7M��ơ��}��2#���� �H�m�'�y�r��	'v�ch|T��h`83�V�m�pI���6�#F�M���O"�&3�i(�tIM�%�HE�.O�c��3���*.�W�����ת�^��� �H<�ξcVg3���卝��<pĘ�Udd2��zd �^&<8B&=py%��Eb!�C%\�L�5"�~"]����!d{ӯK�9���MQk����C��$�y$���E���#�]b�4������"�#�®����j�ߓ	�G���X岇��r -_���~��CAk����,���$%�����<g�y��Ϋ���n)�b�U����#���x�#�����91;��iŷM�2�O) �L�����ΐ_��l^�ߚ:�����vÁ<��,��+km�9�3�z�،c@����'܃q��%��J!Bh��N�4�E�Ɂ�N�`t������� 1l�	|v-S��9撛�%�k6\s�{#Jf��nN���R].{���S���f�Vp2X�)\������J�`���EZj�He��d�QTB:~]�ʙ��p�PЗ0F:�B��o�(�2Ŋ���;�+մ䰳�׸�X7�q�"}�~�\{���P���R�}�����]-�n�M���V}��a������	j"e��jS��J�j�B����\w��4e}ڹ:���Ց�^g�=���s�t�����ce�;"�ԁ����7���!��$�H��.y�@\���c5ޓ�j��f�� @���������Ù�`Z-͐K�=�>�tƂP'φ��poq? M�a:ߍ�sYC1�ge�4JY�nW�z�'���h�j�8��tfFd��������cz+e�p���#���q���Âw�F��zܳܲk�V���� 2)p�Ȍ��jEՉ���$h�砸��Ȝ;�%��RMv ���'|��t23�y�g��������s4�s��G�������4M*�]���QYޙ���a1ɖ�0������s�+�t�VV�|�2���'��U�_-�� 勱/�T6OkK !Ͼ�,������:Fu0��@�T3�&���jz�}�<a�
 ���lC��p��΢���!���a�5?U�6�>d��Ăݸ2�ğ�Ω�����9�0"����9~kNs�ĉs:���纨�#�!g	zC}�����ĝ*�����
�����ҍB�mk�dt8�̦���B
R�p�Y��wɶ�����Q}�׏V�_g]H�҇�Tw{z4�KFS��`F����FJ�ܫJ������*�u+�]u}"�enM�Y�P�\���P���a�F/�Bs�b��+��/K;���E��6��o=�d:UNJ�A� �gu�1��^Y��֠�|o�����mrb�	���ز,&#EN��'v@��s�{��F�Sa"�C�>�2�:__�,�#;�~���r��M��$���0	�ݬ9��\����:*���m�"Z��Vl,�*�á����`X���A��L<qԂ>1�$�'i�ƿ@��6n
��j.3����%U� kP:�nͫ��rI���L����E��̨�����w���u��A_��i��żZz����08�6��@�SCdjA��Bk	�Ms�#��v�7Z����M_�E�q��T)+n�&8Rk���p�@,��S]6�����s�[�Q��3+u&�G�D�o�C�g͜a���5��"�'HO�J��_����>�u�j�ρk�{0Y�k�K�l� �Ȑϧ��&�y�~�h��q�c�0#���R@֒2���X�/
ǆ�Q�0�wA)�&�*^C��$[�z;X�Tj�*6"%w��vN��q$��:9yHN��6em^bG�3��D�a�O�6��)7X8�
.}����j�6�;��v.ATA<�����`h@i��r8�}��CV�Q�~�ߎ߮���U�c3���%%1ߜ�H'/�eZ��b���jFe]�X�;im��/����{
��TС�T�'����=���0sY������R[4}P44�sE��33�
z��W�:>�;�>o��H�2vq1����������Ԗ.c,�n���;.�Kj(ZQ�ZV�2�
!;�ȹ뛦�+��z-�[ՠ��\R���SLۼ�7��7�VJ9��>2�GeL0�����v�����^r�Ҫ�h;:����]Z}]֔T̴@i��:,-Xv�e��[]�]�{7�V
DzzScC
'=�K�U��PI�y�]"�h�f�j����ޞ[ǟ�j�R�?A��G��$I�Fq:�[Y�vu����"&�,"K��hz���Qua��U0I�"A�sE&Y���e����W~"A��Y�M��μ��z���aGÚ:�����lsY8��]�t$*'"9���~��+��YjPK͜=,n���u#�H��QN���(��Ѻ���y�t�b�X}�٥}L�}�n�{q=� `X�zHiq��J�㱌g�5�Q�,W�2�N@�Z���c�������H ��;|T�1�*OA���u�3/����7�x����"@��#�
ӥ����Ŋ5�Q�)�u�6}���J_�ߝ
�g�|}�p���h�'د��=Dv��!�NL�����+�*^���}����R�9R4��@����ƿ@n�ĜW����URC���N>���L�2Df��M&�D��z;8�' 	��+�&ָ�+m ��!����@\e7�����ssq���j��B��幂9�^[��ZB1��\����ͭ.�/%�����2�N[��OJ�� ً��E-1�6�rv9�K�h���C�1�<a �d* @cg�3+e!�S=�@�H�1��pg{[L/��D� y32%q�n{x�C��R���A���۟�Ç:�)��j#} %7ۆҜys��VN+W�P�ޙ���,c)�c���L���eҾ����w��˛0���`v�G�JD*1*�� �  D���bq:��D��ڕAP�zaSv�������̀ڶ(:H�����[�ұ����!K��� ����������H5�"B@�T���*%�o�b�5�CB�M�S%�ݺ�H�,��8��u�[�����]҄�z�P�A�k�sH���I�t�e��u̢A"_��qeue�ǡ�95�z�;8��֥F���!��Y�[pmZ���3���-Z'+��<'YzgIE2\�QK|��ʊ8b�a=��id�C��a_*�I'��%�m�<�CjP�u[R���}/�P�F�t/�_#�0;?��G��'�~C2�迊���.g
5o<eWXk-�a_)Y�B}݉���)e��k������Q�5A�����r�W��:�Ƥ����%	��Z=!�+'iH*^�4:ŀ�_�?y�Ni�f٨j�s�c���-	�T$�.&�IEM,�f|ʡ�Im����=�=�|�	�T�M1I[�� 7�Q+/J�i���|/ʩ�N�[�����D\�Rđ����m��F��|4���ihV��u���+]bc����PNl�"{���"_������]2y)�����v���FBO�W7庍c��Z��Vl�$�@<8͌z�]����Q�R���ΰ#N��-b&�m�}��g��p��u��]! _�vZ�Դ^�JޛS</�ҙ���'�����E�V�vF��cC�����w������:�5���dޡFd�%`��"��h����a����n��]|E�	�?�����V��q�8���ě�>�Z�M�YHI@茶GR=D�G�2C])�uj���oGd��h݉"v�*���`5������7];.4O�y`��[
��n;��;�!��B	Y�I���/1oG_č/�lx��OX���V��G����T��2G;�DW/�7Yg�c���gn�O��.����+3�I��}g>��w%���Gxf��v��Fs�����0�kQtI��=p��{��zs�֨�3H����m�N�.��^�@O$��}�Wdm��rp�H���	e����{]��{.9f������u4�������ۦs`���*Ek#Q �/�٧�ؽ�Q����
�+�䔴��H_�а9s�å�=�Ğ����uuE�0���;l���;�J�U��E��i��;)��"�XT�̌�-�5(B~�}��g�
C*~��neE�[x���uTvmv��v�|�%|���\>�_���ĩ�o��Q����9���ў{Y���d86꼾�x�_�<���I��jɸk�C�ޢ/s�e���#�|Gɼ�	�KȲ�
��zq���cq���-��k�zb6~D�3S��Dw�������}��.V���bG������8����1���+l����ED@<BO C�b��4co^����49��'n�è�t۳D����5�Uk&
���o��@�xl��pw�?k�/���]�yzmɭȭ`e��J�zԨX����F��F�!��ӷ�bW~�%�޽��}��kɷm&&G���xGH���+i��+�D[+' -7�W��_A�C⼖ӭ�|߸tmW���"#��S���&����Z�g�����HKWȟ��gԸ'�<�{NL���W��; Pxƫ��%}�hHx���@��k7��Jܣ�15��������*Zo?A6;T�{�-�D;o�{_����8�9�[aY�$�����\�� 堬y��%QK���~�����b{��=��W�>XLR�l�s��1"�o�[��d���}ah30����ԪRX�j�D��#�!5����ó��ҕ�u?���QN�/�a���]j��M�=z�qp����me�Լ�P�,�Y+$���QÖ���z�Ѫ��:��F�k:���#]6*�S��9T�E�=������P,�u����9i"�K,�)S��$��%w���5[
���X��y��w^�?�I�d��d��u�#%vY�����!������;�I�@)�W�>��vs��0fWK��YgRʿ�FtҚ|��ڵQF��v�Ze�d�`x�3�t�}�-Թaiw5w�H���?	���9��rӥ�u�HR�iϣ6�
�PpJc�P���e����ֈQQ�3��Lk!�O�@2��	�;������>�D�[|_Dvu7��9��4l��mY�Ƶ�b���{�eg3�f��C��꺯?j���]_:��w�z"���S�73'�;^-N��QZI�W	�E�=Rp�$���f�T��*p���5jϨN�M�D�BI��X ��`t3Ýa���Q4���c��3�Q�$R̖S:Y�R�o��k& �lR�ֆ!�3焙����s�ڕy��5�ۢ8����"���Dk:06L=�h�CI{���Qۆ�PR��D���l';d}	�h]�^��Dt��b�2j��fC9;[�zMkưA��O���L$�Κ��k.�����Ѯ�^s��I�k�աH ���h�7��i����d�KDt�����ry�g��\x����E����]���r Amx�����E�(�_{��ᎱĐ�;�����ص���ͯ���f���u|���b\�_O"@5�ȅbA�q��80�4���<\���Q5әHg�".i�dZ��Fz+,���f�Il���/�m��$%20��G}=��h:�lcm(�~y��~DJ'J���z���1�7%g�J��ڧrZLz�č��?o�k��Յ����Ѿ�T:6��-�j�]t�Y��W�rI�mꟉ����(�$(�XMA���T'C��i~�ʒT$#��5
��Q^�/X�d8M��Th,<5b��	;�S��4sVT^�_�������x�K*����G�Yk\n�u�enq	c[ ��U�6rL ��dWdx���uo�.�l88Q´���`�m4苅{F;�3m�PM�Jz�m3��YL�ޯ3����u��F4������]������%�1_ХJ�HFW�Ԕr��¡-���Q�-Ͽ�ǖ���v��         �  x��ZI�㰮\˧x�$8�,o���vh�-���$��{�"j�au���H�uw��=��?���˘=�9�*���䧬V���S�)��W&�8��Ǝ��>��1��C���~�n��_�7G��'D�>t�]�խ��L�H�����O{���C�O��ɸ>
s<kԽ�=E���v�Wf`XD�?.�A$���5��:;˸;J{T.���g�+&�U����zA�.���a�u���1�8;*v�<�M�=�2�]%Σ��T+��P��E�&���~��T-�쏋��Q������팠!B�r,��#Lx�<��=��θ="����|3֑w)T�����ݫ}O�J5#}��.�Q����1�|��o��K\�4Nأ;L\�{U?GY��3�I?*k��J1ր�Y
���DB���P���\2�T���\1!��!iפ*��-��'5)�ڴ�`O���HQ��yR1�!t������d���{:����/�1qv��b��4�y�5�T[e�$�ˀ����JY8��b�	]x!��wq'���R��h36E�%uFOb�mSޫ�L����e��G��k�YZ����"���q��I�s��U�]����X�ö2�)iN-�W��b�S��`Ѡ����y�˳�K����9\��M�f��"-�	Id�ԓ�����|w�̬�TSq�݃[<_|�I���#��ó�� �Z��":�?��u��'Q-��B�Ҏ�"hx0�Aw��<��kZ�	6���N�D>�s�W�e\�����$[<�=P1r�%I���o�R�x �����x9Nf��#�W1��8��MIe7�=�Y���}��\����n���ZN��*��l{|�W*�"�,��AY#�{�	m#�J�c�̦=�P�N�M�^��ڭ���pMu�1��A@��ʗo�iO������OD��;�"�oc&#�vRϲ��M�P�ދv9IdM�*���ـ�v��KV��9��5�kN�?�����j��@9O;�.Mԗ�?�bi�|��&'�#�;��[z,Ie�ᅮ��k=����c�2:��[^��,p�'��2�LƐ�:b�}�8/i	铰���H،
Fx��T�X0�Bd��{���M�9�����f�g� �ڼ\�|�Y!*�N�G���S�u~��B�]Xs�� �@6&��8���-��Tu��t�8��$q2���� ��؈���8��>ڻ;W�藥�ĨOYR���=�O��1�,�s���֍�9| /����c����:���(�vQ���=����[�)��C%?o��d��@�d.��Ncf���R��)�I����g����Jy���o9)c	�=��2#�g=�v�v�-�#�U<6�B5�?�eD���ᾙ�5���q��zf�"3�5|mKs��������o�ЛV���KI�w<O"���^XC�͗m����?U�u3�N^@g�3�����K�w���%R^N��>�nM�!c��Ȳ��?M�_!(��x��I�;_�������l��z1�pR�ڈ�$�=�M�:&����S���G���#�ڰ$Ο�}��Y}e��;V홡�#�:�Ihw{��ȉ����*U��0��[Si�S�t:[b�?�I9��v�f��rT���AnB"�Wօ��כZ)��
x�FƗ��=DX�Gt��G�{[�.�T� �бI׈C�ΰi��~��u�`���~�D�jz��1���ADwit؜���\�_�����Ӯ�:�T�Bڌa��
���aݭ~���=���X!C��-�*2~cn���������l��l(�ص*N��*���>���B�e,A�Ew���׳���`X�h��؃�`X��S_�W�V~��I��I�}��#�(]��i_�(&���Qw��<�U�ɔ�}���(���Wd2,��rkR��@��'��e�O���8%?F2�w��
s�X�5�y���ژ�B��gx�BO�cc��B���ĹJV&r5�s�5�yY��������˥"���YkԛP��2	�����A��4�hO��n���A�Q+�F ƾ�{��gǻ&�R�/j2�k�KS��ðޕ@���m�V���F�=��l:]�</�N�6~ݣh!V��fX���	}f66lPEg]/��Q�8`SSM6�w�{W�;��Na׻~�%p�W��k��&=�R�4�=-~��V���y_й�j8/,FR*p��� �_يk����ͦ2��k���*��l���4p�9ߛzZ��\�����/&4�q#'��{�M�1�K5�s���H�p�d�<�O��;���z��?\�ٻ��*r��.��|���:jh��Ɉ�ӯ;_�w�ݒ����
���^�����x	Oni���|�ǂN,�L��q8�F܅����K4�*ݫ/����{|G����vN)����gf�����&N��
 �C#",���l�����i&�����z�ң[2����E��Wl~2�>#m��y�tͦ�N�(��y��oN����@�6`+_��-����kT���Ʈ�;r�t�7lb�n��]��y���_sv����q�SVi�N�o��0��-w�-�E�!��m�]���h����q�Yʂܣo��a4��t�ƚ��n�l���gjd�Lj����ٜ����/W�Y�b��ޅ�=���+�i{9�4�7STϺ]�Tg��(N{�^]Q�ɘ,������7��@[y�����&��pqԋVC,%�l��]n�U�u?^VtI6	�i�BD��o_�t{p��De\>���{�0��%�mAÄ-�����ov�Fx��ʥ�d'�St�S��8k=�/���v������q�n�0�:���$	l�<8�U�Iv�ȌwI���X����eӻL��?�~[�\ri��T�]�ke�!8ux���uփ���gv7���5�=>w&Z��/%�B�H�Yoq�z�7��T��%v���S�k��b6Aw;[F��oL�����������=��%�Rt�gf�՗������<`��*I!C�����t�ַB��O�����lm�<�>���{v����nL�$���4���Z�����u�;��f�=��P�|u��٣o��;�r�^V޹_�0_3,��ChQ�舮��#��J u����Ω~�N�D%���_n��MP27�u���!~1K���A�����!�(�׬�/��.7�~\���[�*_BM�G�;�j] �JR�Cڱ�C��g	���MO��qqzl�Y���ٟ�0��� ���Ά��/y"���p8�?31$     