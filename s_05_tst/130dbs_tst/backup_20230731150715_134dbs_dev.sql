PGDMP                         {            postgres    14.8 (Debian 14.8-1.pgdg120+1)    14.8 (Debian 14.8-1.pgdg120+1) >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13780    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3357            �            1259    16392    account_attribute    TABLE     �  CREATE TABLE public.account_attribute (
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
          public          postgres    false    210                        0    0 #   COLUMN account_attribute.account_id    COMMENT     Y   COMMENT ON COLUMN public.account_attribute.account_id IS 'Account ID:アカウントID';
          public          postgres    false    210            !           0    0 *   COLUMN account_attribute.self_introduction    COMMENT     U   COMMENT ON COLUMN public.account_attribute.self_introduction IS 'Self Introduction';
          public          postgres    false    210            "           0    0 $   COLUMN account_attribute.twitter_uri    COMMENT     [   COMMENT ON COLUMN public.account_attribute.twitter_uri IS 'Twitter URI:ツイッターID';
          public          postgres    false    210            #           0    0 %   COLUMN account_attribute.facebook_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.facebook_uri IS 'Facebook URI:フェイスブックID';
          public          postgres    false    210            $           0    0 &   COLUMN account_attribute.instagram_uri    COMMENT     e   COMMENT ON COLUMN public.account_attribute.instagram_uri IS 'Instagram URI:インスタグラムID';
          public          postgres    false    210            %           0    0 ,   COLUMN account_attribute.youtube_channel_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.youtube_channel_uri IS 'YouTube Channel URI:YouTubeID';
          public          postgres    false    210            &           0    0    COLUMN account_attribute.skill    COMMENT     G   COMMENT ON COLUMN public.account_attribute.skill IS 'Skill:スキル';
          public          postgres    false    210            '           0    0    COLUMN account_attribute.rate    COMMENT     B   COMMENT ON COLUMN public.account_attribute.rate IS 'Rate:評価';
          public          postgres    false    210            (           0    0    COLUMN account_attribute.status    COMMENT     O   COMMENT ON COLUMN public.account_attribute.status IS 'Status:ステータス';
          public          postgres    false    210            )           0    0 $   COLUMN account_attribute.create_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.create_date IS 'Create Date:作成日';
          public          postgres    false    210            *           0    0 $   COLUMN account_attribute.update_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.update_date IS 'Update Date:更新日';
          public          postgres    false    210            �            1259    16399    account_master    TABLE     ,  CREATE TABLE public.account_master (
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
          public          postgres    false    211            ,           0    0     COLUMN account_master.account_id    COMMENT     P   COMMENT ON COLUMN public.account_master.account_id IS 'Account ID:ユーザID';
          public          postgres    false    211            -           0    0 "   COLUMN account_master.account_name    COMMENT     O   COMMENT ON COLUMN public.account_master.account_name IS 'Account Name:氏名';
          public          postgres    false    211            .           0    0 "   COLUMN account_master.mail_addless    COMMENT     ^   COMMENT ON COLUMN public.account_master.mail_addless IS 'Mail Addless:メールアドレス';
          public          postgres    false    211            /           0    0    COLUMN account_master.password    COMMENT     P   COMMENT ON COLUMN public.account_master.password IS 'Password:パスワード';
          public          postgres    false    211            0           0    0    COLUMN account_master.zip_code    COMMENT     M   COMMENT ON COLUMN public.account_master.zip_code IS 'Zip Code:郵便番号';
          public          postgres    false    211            1           0    0     COLUMN account_master.barth_date    COMMENT     N   COMMENT ON COLUMN public.account_master.barth_date IS 'Barth Date:誕生日';
          public          postgres    false    211            2           0    0    COLUMN account_master.time_zone    COMMENT     U   COMMENT ON COLUMN public.account_master.time_zone IS 'Time Zone:タイムゾーン';
          public          postgres    false    211            3           0    0    COLUMN account_master.language    COMMENT     G   COMMENT ON COLUMN public.account_master.language IS 'Language:言語';
          public          postgres    false    211            4           0    0 '   COLUMN account_master.registration_date    COMMENT     \   COMMENT ON COLUMN public.account_master.registration_date IS 'Registration Date:登録日';
          public          postgres    false    211            5           0    0 !   COLUMN account_master.create_date    COMMENT     P   COMMENT ON COLUMN public.account_master.create_date IS 'Create_Date:作成日';
          public          postgres    false    211            6           0    0 !   COLUMN account_master.update_date    COMMENT     P   COMMENT ON COLUMN public.account_master.update_date IS 'Update Date:更新日';
          public          postgres    false    211            �            1259    16406 
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
          public          postgres    false    212            8           0    0    COLUMN offer_list.offer_id    COMMENT     K   COMMENT ON COLUMN public.offer_list.offer_id IS 'Offer ID:オファーID';
          public          postgres    false    212            9           0    0    COLUMN offer_list.account_id    COMMENT     L   COMMENT ON COLUMN public.offer_list.account_id IS 'Account ID:ユーザID';
          public          postgres    false    212            :           0    0    COLUMN offer_list.offer_type    COMMENT     S   COMMENT ON COLUMN public.offer_list.offer_type IS 'Offer Type:オファー種別';
          public          postgres    false    212            ;           0    0    COLUMN offer_list.offer_title    COMMENT     U   COMMENT ON COLUMN public.offer_list.offer_title IS 'Offer Title:オファー題目';
          public          postgres    false    212            <           0    0     COLUMN offer_list.offer_severity    COMMENT     ^   COMMENT ON COLUMN public.offer_list.offer_severity IS 'Offer Severity:オファー優先度';
          public          postgres    false    212            =           0    0     COLUMN offer_list.offer_catagory    COMMENT     d   COMMENT ON COLUMN public.offer_list.offer_catagory IS 'Offer Catagory:オファー・カテゴリ';
          public          postgres    false    212            >           0    0     COLUMN offer_list.offer_location    COMMENT     [   COMMENT ON COLUMN public.offer_list.offer_location IS 'Offer Location:オファー場所';
          public          postgres    false    212            ?           0    0    COLUMN offer_list.offer_status    COMMENT     D   COMMENT ON COLUMN public.offer_list.offer_status IS 'Offer Status';
          public          postgres    false    212            @           0    0    COLUMN offer_list.offer_text    COMMENT     P   COMMENT ON COLUMN public.offer_list.offer_text IS 'Offer Text:オファー文';
          public          postgres    false    212            A           0    0    COLUMN offer_list.create_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.create_date IS 'Create Date:作成日';
          public          postgres    false    212            B           0    0    COLUMN offer_list.update_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.update_date IS 'Update Date:更新日';
          public          postgres    false    212            �            1259    16385    purchase_histroy    TABLE     �  CREATE TABLE public.purchase_histroy (
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
          public          postgres    false    209            D           0    0 #   COLUMN purchase_histroy.purchase_id    COMMENT     H   COMMENT ON COLUMN public.purchase_histroy.purchase_id IS 'Purchase ID';
          public          postgres    false    209            E           0    0 %   COLUMN purchase_histroy.purchase_date    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_date IS 'Purchase Date';
          public          postgres    false    209            F           0    0 %   COLUMN purchase_histroy.purchase_time    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_time IS 'Purchase Time';
          public          postgres    false    209            G           0    0 (   COLUMN purchase_histroy.payer_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payer_account_id IS 'Payer Account ID:account_idと連動';
          public          postgres    false    209            H           0    0 (   COLUMN purchase_histroy.payee_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payee_account_id IS 'Payee Account ID:account_idと連動';
          public          postgres    false    209            I           0    0    COLUMN purchase_histroy.amount    COMMENT     >   COMMENT ON COLUMN public.purchase_histroy.amount IS 'Amount';
          public          postgres    false    209            J           0    0 #   COLUMN purchase_histroy.create_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.create_date IS 'Create_Date:作成日';
          public          postgres    false    209            K           0    0 #   COLUMN purchase_histroy.update_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.update_date IS 'Update Date:更新日';
          public          postgres    false    209                      0    16392    account_attribute 
   TABLE DATA           �   COPY public.account_attribute (account_id, self_introduction, twitter_uri, facebook_uri, instagram_uri, youtube_channel_uri, skill, rate, status, create_date, update_date) FROM stdin;
    public          postgres    false    210   �C                 0    16399    account_master 
   TABLE DATA           �   COPY public.account_master (account_id, account_name, mail_addless, password, zip_code, barth_date, time_zone, language, registration_date, create_date, update_date) FROM stdin;
    public          postgres    false    211   	q                 0    16406 
   offer_list 
   TABLE DATA           �   COPY public.offer_list (offer_id, account_id, offer_type, offer_title, offer_severity, offer_catagory, offer_location, offer_status, offer_text, create_date, update_date) FROM stdin;
    public          postgres    false    212   R�                 0    16385    purchase_histroy 
   TABLE DATA           �   COPY public.purchase_histroy (purchase_id, purchase_date, purchase_time, payer_account_id, payee_account_id, amount, create_date, update_date) FROM stdin;
    public          postgres    false    209   ��       �           2606    16398 '   account_attribute account_attribute_pkc 
   CONSTRAINT     m   ALTER TABLE ONLY public.account_attribute
    ADD CONSTRAINT account_attribute_pkc PRIMARY KEY (account_id);
 Q   ALTER TABLE ONLY public.account_attribute DROP CONSTRAINT account_attribute_pkc;
       public            postgres    false    210            �           2606    16405 !   account_master account_master_pkc 
   CONSTRAINT     g   ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_master_pkc PRIMARY KEY (account_id);
 K   ALTER TABLE ONLY public.account_master DROP CONSTRAINT account_master_pkc;
       public            postgres    false    211            �           2606    16412    offer_list offer_list_pkc 
   CONSTRAINT     i   ALTER TABLE ONLY public.offer_list
    ADD CONSTRAINT offer_list_pkc PRIMARY KEY (offer_id, account_id);
 C   ALTER TABLE ONLY public.offer_list DROP CONSTRAINT offer_list_pkc;
       public            postgres    false    212    212            �           2606    16391 %   purchase_histroy purchase_histroy_pkc 
   CONSTRAINT     �   ALTER TABLE ONLY public.purchase_histroy
    ADD CONSTRAINT purchase_histroy_pkc PRIMARY KEY (purchase_id, payer_account_id, payee_account_id);
 O   ALTER TABLE ONLY public.purchase_histroy DROP CONSTRAINT purchase_histroy_pkc;
       public            postgres    false    209    209    209                  x��}[[i��u�)꿽m�*�w�af�郻�{�b�I �@R�tE*�GTl-�AP�3�ʅ��k�<�v;�|��Z�)U��(��gz����Zﻎ��ެ:�7�w�����ʉڛ����땙�ʥ��2�U(���5`ZV�ؖ�g���O�7�:�d�#���0s%��*Yɗ��|�*w�	E��.69����������������F �PH��Uu%j'��kauo(�7�)!�]��`R�R�BL��~e���U�Ŵa�C�)3ץ������]�{޵��yל���=9��w:���j�ϟM닀P�-k!�-�{Cx׊j�b�Z8��b�]}� >��ы�֫����G������^�n��Z[��^�[��^��>:�^��^�Y��\�NnMM4.-�W.�W�P���õ�iB���]��Z}�́g�!~E�6~^n��ͻ����ze��zu�2.XI���nϧ-�p>mN��'���)�˥�y3��-o������>���-|����7�dO��|?t�?��[e����T��#��	��UmE�#�`_�R��-@W�zu�<Х��	|��Y"���#|��Ы���g�)Sʗ@S�7]��X{p��:	Ϻq������ʘx�M`~l�͍��l���֎:�-���ZO	I)��$>����{#�1s���F1g�p(�+������E�D�š|1���~�� 
Ͱ�_�R��5��$���'�-�,"R�]�M�	ϩ[@����V۵x���9�+'��>5�޷ו���%K�+�-��������#�퍜��P�B�Rk��9���RJ���y{=�Q�o��2J����OYk+�J���ҳ���d�k�7��g�/x;�I%c�����+�}�e"�]�D��u���SJo�C�T��<�+�pʗ���Wp"
Φ��M�RD"�7��S�^*�_̢"�)b��pG���霕N��Z�&��]x(P5Dv^\	���yq^O��i� Q}�`g���s�B�:P�R�F�=F�C����֟^l�x�^��^=�^�^�K6�s��6�J��T��"|�$(��[�q��?��~�?�Ch�.����#3����~F؝!��J�T'�3���|����mD-�p������q��S�c���O��[b��`�h,�o�m��TUf��Z{8Ү�A+�����Vvk�}�[�R8o���ܚ��t���R����si+M�8���q,w��aV^��+��ɤ{{ţ�-j͉�7٫����X���vvE-#p�/d��fN�b�_gft��#0Գib寱�������p�#k���כ�2O�H)�B�$>B��0;�?�L�������ѝNZfz�������o�߯��447���=y%�7�SD���9ݛ/���#7N�m�E�䣅���YLFrS>z�)|����?P��	����Ub���g�B��ڱ���wg����#�kg��7�N�N�L'7o���R���󔏔�)N�#�i�/e�lU �=�Q0�=h���s9Z[B��b�^mo;�F�Y-�������B�~��4>x�#�be��~|d��9��`K�>�朚~�p!^^�k:i�ON��xs�w�����d�@���Z����h���Cd�����L���7\.��b���r����ۜ��O���|��--�-&�%Q|-�^�6�=��b��P?����J�$����W�%b�A#��?Re|���P�:�U����2��Pu>Z�����$8񑈸 O�H)��$>�����lQ����O�Of1�a�ҎX���!�-�F�7�ٕ*��|�ٛv�,����9{�+?}{���}�Զ�tg�P��𵐊;K��e�ŸV�X���W7��7�FjgN�ۘ��-�����߯N������^��N�m<~�xs�qy���|�q~�Rbp�p�qj�v�"�XQ������K6�<e#�pʆ���Fpj�n4�rF�P�,ك���CT0�^\�a�#��F8_����t�Q,����*�Eo�#�j(ا��Δ������8�+�c$~A紇��?huݞYq:��fwoH�EV\}v-̩���zGӂ2{�{y���Nc����^�m��r�U�~����3[^����o6N,��$���i�n�v�>����7����Ҹ���se�ڃ��+h�W��n�g~�o�~�I�<$�$|u�8��K���x����w�)$)�SH��GH�υ�ć;�Y�<��!�u�q�j�b���Im�[M��CHw(��VR҃�4j��J��O+hE�)%�Sr�l��/��%�h�H��oM|�̥�%�h�Km�w��htaR�ʤ�^�֒�X�d&���w�肳, ��@�d�>���/�*3�K��Ჸ'��b$~	+Ή�P��=B)��Wu _���i�TJVo� ���f�+&a��vIYg�Gto8��at��X���
=]����NW֫����-���ĕ�E�$��n���x�!��r}
���ƛg��wȧM� �O�[yn���Vp�=��<��Y�ݿ>z�0�U=�x�9A�\�W/v�2������)~N�#~�Ib"�9�f���L�U�̈���V+���?!�F8�n�q��!���`)��)���{m�G乃�g�c�P[�nM�������K;�y��aP�N�<��Oc4ds�+���+,S��
|���[q��I����<y�$��[��f�>���\R
���$>�Cp�y%�-�u�{(�z�2Хk!ƪ� &�* 7��DK����p�Y���us��ۘ�����0�/(�ە�Q�O*���k�� �I�R��N�m��t��m\,����ǈ�����۸p�ci��ښ9R��P�L6��N��9^?6���7�+|��@�Յ�¥.������`��oҥB>W*��Jx$���G���E"b�5��D1�I/oU���ԤΧ�I|���d��\W�vw�����&���D��0n�`W��WSV@RpkZ8�@�D�(W��Q��2xX�;W�|2�U���f���x�R{x��:������+蝾yY[��(Q�/�o_%�ݍ�[�_����S��&������Y߽!�����N)s)N-�n���R�5殻F�k	��B�T�*����t0�XL�2B7�H�<�[si�&�c����c��Ӵ ���6����|m�v�(�i�w��w�M�CB�N{Pߴ��y�M)#����Ш�0�Q5TX�#��#�دYe��˽�AC��N��cb�|�2����r	��R	"+MW��(p�J�Sٷ����@+�+�/)%K�>�W8m��R�P�!v��4ѿ� �I�%��{�F�Q���7Si��x1�7���U)HK��Fܤ��N�s�N�,$w5�d���z܏pQ�P�S�֓Z��ZBo�`�$;j��"��C��#[G!��|t���\�ى��sX��r��I^�d/0��4�5��[7f0�_�|�ęQ`�ʦ)g!��_��N�ѓ�w����J��v~��]O�H)���$>��v=�ŒqbX��=	�%P���#jpP��I-��	�#���k�/�^�#F�%�!Q��O�W�V �Z����Dr��X�|<�L*`#�x��2��#�dB���)n��H�j�f���O�sMH)�k����	��3�GDx���"�oyo�l���2���b��(@)7�+��*�,UT�	3��i}Y�a_��}��;V���Z=�<p9��Xهo莮]?�8v��4LO����F�z�V�2�!�3��Ƿ�h}olc���/P=��6�+|q��R8��I|�/8}d��)L�R�c���U� A���t1TCzGzp88h��L�FF)=F~�z����m
�聿a�u���Ry��M�u9�/9?��Ҙ�4v+������P~,�^�G�!k�,�|:��ƞ~�@lO��(����O	J)��$>�v9�i�P�&`�+%��;:�O+L�Qs�'g8��.���$�������>}~s����}�|    JOp0�,���e����52M7�Ve����ûǎח�u��o���e$~�Q�i��6樑:n8쎐Hi
"�p�]�s���p!�
���/�o3���[:nc�I-8��,�2�N�j��3�uC�g�Ro��ЪOE�_�wEFF��0����I�y"y��IG�M���=�u�\4��Z�A���m�̙%�hX�"�%�� �P2&�8�t�i��7�!ƀ���VT�B'�hv���b�I<�E�@��#5�IJ��Q�r9�������%'F�''��Y� b.'7A�扶k��P"�����_��b�?�󠐕�{��r�װ�у>������ݸ���Β��4}?B�On�!�"�h�!aS4^�l��X�ǈgn�k�`$V�ܜ}�9�J�������#�p�9�����>"��D��3d��$��x����l_!�T�<0�»�}Dj�ۋL r�!icr�v�^��2��M��bܦ�P��(P�q�����}y�HJ�'������>j[�8%���N	��A&��hp0a������m���ҿ�|a�im������J��v� ?זo�J_yhmy�R�oo$��Pn�p�Kr�w��e�\Atڔ�֖��H(Kk+~���hq :��+����X��>�q��k+��Ƅ�������^4��A�.O��o�%��2E���8�a����J8:C�#J��ž_��Ń�Oe��������I&R���)��0�;E�Na���˨z�`���ّ͹k��H�b��8uUl3�D�����>k�^��!������2ox���g$~�p����u��[l-A�`��Ƃ�hy��)�06j��P���=�ҡ���^��;�Do�1V/qz��7�ȣ�A����x}�>~�_6��e#�pɆ��Ɇs�����I	w���mls `O�#�C=�X�õ3�/��p���*����_Ǘ��}�x��sW���������~�v~�}�v��K>\��a���<y������~{�|���a��]�ύ]����z^F��y��ϳ��_�ׅ{��U�/�U-�p�����s�����E��m��Tz��E`@DC#�ՇR��S�-o; �ۑ�S7O�+��?�r����#+^�¼��2
����A�9�O�F�Fu%L)p�֦��P4XNdr1C�$��9��t�a�Z ؕyZj&1�<in��^=mO�z���en��P�aW��v�8��\�T��_u�wt���ұ�0ؙЋ)����V�6��5�R�).�R(��o7�^Sh{���ʃZ��/=�:�c�͎��S\�w�IF�31�:���+U�(����0�[��� �p�[HÚ �U���-��{��ey
JJ�'����ISS,��RI�c��2D�q"Z0�:R��g?�x�;+�p�a�_�s���+�Ϊ�X��E�h���>}�S5�zx���?F�%uh	*~N(��%Pٓ��"�v7^��e�Zbqm۴(H(�-
�ķE�q�i��˥���mo����¦��Dk�H%��*��`OL*v�_�Q~�a��\�FxJ�=��,�?�1킸��E�\�ipI����\z@1R�p>y >�wy>r)��s�G.8� ��ۖ4lz���H$K:��+
Zz<I�t���'I�؅1y��c��{p������k���m	е٠B�-P�)�Lk��:�c,��S>R
WS3#�kj�>��<�W��L2���HU�A+���xgW�t\�$6��a!���*G�Ui��;z��p��-�҆0�nU�\�gKBc�b�?��^��|k ��cI� �P��*Q�d�W��µb�ߊ�>u
�/��DD��Z��C�vMv%2Y#=X�8�����?��Z���K��v%�ylgA�ҙO�K؉df	�.�E{��%{a��l��aBE��Sir#rU+���*�p�]�ؕs��o� ��3M��C$��-������pQ+�;���wWS��3�y�h�Y`4f�c.�q/�Z�)�4�^�WXl����	��B�ҽ{�d�^-F�׫�9}�L��ŉ����!����#���Ro/]3���0�Gr 36��l6��
�MPm�?�	)Z�<�6.m,�ח�Q�k�vɌo��#�r��v���9x�)�k6#�M�9}���uk��>�װab=8��s��g�����={,3��3-i:�Z���(Ҷg�y6/� �Pm�� ˪UfG�b��❺�Q�R���/u�9�zs'���L�.�	D�$���2��W�-��!d�������.狚��sY����I�@$��v�JÃqy7�������~5N�*�~�m�y��"��ɫ��`��QK�d<�q�i}l���>&++n�;�"�p%Y�_��s�x
;���+�b�E�cK�AK+�e���L���5)S�/���=>xi��^��zګ#����[`�0���1,�*�p�5P?�;�d��������Rim.,�نZ��ة��klS�V���>�`��m8#3g��&����Q�-�S��/�
5�i0ق�֘���}:�!�l!�H�� {�����^�t�Y�?zI�L9�7����y�!nr�����$�Ya�i7�h�RCK(�;gO�\���`�ޑ��3�w�%U|�<WG�����|4S	��\��s�!M��ar�l����xT·�=V؈(���BO�����OO��e ~���Q��H��9�q����<�)�9�q�[ǰ�V�;"���W�v��c���,%�[�ZΙ�������.͒y���<�)a��(� .�[�X��ƕ[�3K^�(Kt�I��ÏECP�z퉚���5)�p�&�j�s�<��7I�(J�*��F��Hi���H`�~Y?[M��&����j�n����lx�ˌ
�h���s
��0�t�yR/����a�<�bM|����^���f30�:�/�E�;z���<��!��wH�����E�2�����'Mb�h�@U���pG�3�|G��2�c��v.�����v\
���ٷ7�J��͡6���[[����["2wwT�_q�/�q:y&�>Qz2����s�ή�L+ŵ�K�;�.{�I�������y�ȵ��I��y{Â��Q�k�K�߼��e.�3?�sN�%Ӛz�ba��'�pt��<��l��1��ۯreK\z���c�b�=�[���pk{9�w�M��C��/�������G��AE;��⦼�2
 ���p9�]OFx���ď�ʫ��?���$�ٸ�Jt�*F��2Q��Ll,�lޭl�5a,����YgŹf��2_�c�m�j��qg�H6���H��l���N��l��
a�N��MoC|��豞�����޼{���~������ᯪ�n�����wK��ޏ �c��K�}�X$�c�����-"ѻ�6��4�<��=�ן�k����"yA~>�U�-�u�~?���,	sx�ٻ'��ʻ%��3�U�'`���Ż��be�U�80�?�W��@��̮�)|E�#n�~'���&���N��g���(܃�)��`l�i׻L�x�|r7�ѣ2 Z��C`���!�3�=U���Q�O1�7��/A���"�]�&�-�&�f:��ko�m,Oئ9�Q}I���Fn��,� �VθzT?�+b~��c�o�۴�(\�����v�i��{B��Ln�|��0�z�����ɜ_>�"Z��}�������E�� ;�C��I��iXI���|;M�uzJNJ�j�H���rN�8��6e�����.�(;̣�q�`l�(d�]�r��b>g�s)���T(K�ґ6ʖ�Iџ�3�U6	��|��Q��U4hg)V�1�W�GZR0ץ���BU�bWMd�ܺ��O~��Ԕ%�2%�)3N�X%�Zw��#�dÁ�Q<��O�T����k5����o^�p��Emj�`S���OH2�N�^{s�v���:�s���������7[#�[�Ƒ���x�e."#�C!rN��@��f����8?Q"��q3v�D� ^  Út�������=qR=\��H�)��O���Ԃo�8C-�-����r����RJ��6�S	�;qJI|�����iUĳQ2t3&�g8P��S��j�$-�pˆ�(
Ч�q(]����L4������A�����3g(�J�m�ރ��e*�o�L:��22�)L������JOH)\���߸9�����PAgѝ��SD#�+=��vb��i�ƛ�9���y(�lk��J�os!r�05��!w�ȑ�Y܎����q���o�'��iӍ�Q���P[a�8�^e�N�������u�Au�����V��J�� �`r�߾ژ��b_=L�́�$g�ٺ�\���������p��+��^��I�+�d$~�$��Q��EG5��~j�7�_!���B2�3��y8����(\ό��=3��sj����FP��J쪊s���`B5d��=��_�T>_X��,�W�v{���r��i����+�4{{��zEq��)>����b�����)f)�{
%�B�8}�l\�-P�8)ΪQ��XT�2��#�U̢���b�/x��,�cFGr�5[K��hA}��M��6�	��4BI|K#��l3�Kka�p��b2�����S-��q�S�m�N��/��v���H1�����Ό#P�r����,K�����6�f����O?��I⎼k�2
W����ո9�]�u�H��C'P��	r���(uǌ��h����S�6G�s���ܨ��`�vuqc����D}i�>~�Rb�$돏՟-�Ǧk�'j��6^�AG�kr4�roW^F�r���+�9}��?�!NZ\vlS%I�X{(�&rV$�?�"�g���#FF����mq&��	c8Y�8\{}ο���»�$�pՐ�_�s���G����V�(��;�픹xw���<���w-x���o}�,�6S�ӵ�X��0*Y�Bmz�q�6��4���m��Bv��~���=����N)d��P�*�qѱ&{疊�.?O�R��P��G��R<%�GO��I���*�*'�&LR��$�grL%�]�����&J����Hs.��1ҕ_��$������o�+����x��fi_�}���Q���h0�$��z��
�l�k��qHa�'٬dG
C��e�x���mL�l�}y�VJ�-'����0u�M���(��zj���"�a=]�Dz�q-g	@�	?����O-n���T��'��<�+�#�S�1�?���V�H/����GG��l޿Ru�q.Xu�62���L�~�8������4BN��98�߲w�����'�H���8�]i�M����e4�	��+'�r٤W�C��[�Q�r��/��9}��
��E���i:�H����;��:��J�TA���2�䖦J��M�%5T!�uB��V���#�r���rڴ��i_,2�u�8MF���_��9�z�}b�3�d��1P����z4�I��M�,U�x�m�/�c������'H��9Rd��}?���g5�]�6�0	��FI|�a���=�r%�આ� ��c��>hȻ�� }��wL��H�_iy�I1X�:֜q�%Iv��g⦶�H(��J�=`��O�\"��`�u�����O�#%��.�����3�/�j-��
MԊ%C�~��{��7�X5'�&(�����[|���[Y��>qO.�:��_��4�����o���`+Z�	��EMF`�Y!�:)��]��Pl#��;�C�r�l���[#שw�8~�'5�;. W� ���)�M������X�ǿ�����(\�=#���9�O����MG瀩�9������P8؟(C�PWa��ǡ�ֆ9�9Ŏ�}�5usk�ђǸB���V�F��w�@����ƃ#ң\��؜�E&����1��9��g_��֒2
�	͔���f��s �"�煺�-��p:A؅�B�cX5SY/�]���ؤ�	Ì�o�0�;�'��bn��ή�)d�Ʋ��ߑ���J=9:�������Z'��p�|���&�͙=d�]s'7�
JP�A��z�sq���c&�og������5������>yzJ�٨�k�	:�Q��J��#XxNt�eU��AA��S���zu��,N>����Ƴb8�����L�Μ%�/�7b��ޘ���Bd=|���ֶ�?K(��gJ�[f�>+�� �ߐ���-ͧ%�U=���RZO�V@\�mێ�Y�E�$�U���͟t��d��k1���ڸ<�>�[��2�-:r�ΩJ��t�����4ʮ��?��8��!�m�b���� ���7�UF��2?�+�}Z��d���r��JP�Z06;��4 ��kU�������PG4 �6T�,�vy�������5��c-|�l���y�Bs	i�ژ=Q[}�_��Oƻ�'�pU��_e�s�M�	�Zt�D\-�K±1�D���(�ґ Sl�6w����N���l;�@"YY9;��wM�d˙��o���1$�ߪO�sUH)\C���4��3�c~2�,�Jnk����\��M�=��B)�M9�����4rn�����^���mV̼���P���n����$� ��c���uK�E,f�H�#�0�����KǓ;<�]� >�xw;:�U�\E��7�N�\���p�m���c1�}{��2
W�H�bh��3�M�VJ]X�Axa\	j(����N}��
����VF�2�����rN���i�/�2���Z�I�k�`Q����񀼴��󁟝'bM3ݡ9]��=x�{�#����-�8c���u�k��7^_��Ο���'[*Bu��"��S�R
��9����O�6d�Rmm�dR�I�1�T�XŎdw.К��Vt��F�h�BOS?�G�5�Q��4iu�Q�p�C�t������6|;Q��!x�e.�0#��sN�#��ֆ���l~:V���΁"�Dv��h��'��ñ}�iS����l�l&��O[��͕��+Ǳ�F>�δ`��=co9x�2��w�)X)��-����esN��Uy�m��Gf����l,UNg:���K�(�G��d��Tߏ< Y�'dv0����kW�K�i�O?�_�t{��Q�P{o��1�)o{-�p�kF�g�9�]ȅҦ ִV'S����8Z�����,v�|��3�R�O�$�'x2N��P���Y��Ԑ��'1gt�g������^K`�|���U;s�����5+����{��C%���Yi��^ 81��gW���.��(\EPF�W�>���z�#Sm�p�Aa�½�T�˝}VI��l�`�:B�<Z�|ʙ�sZ�Ӷ6~��w�4���X��1^���ڱ�;������2
��f$~��s������"s����_m�`��O�̷            x�}{io�:��g�W�hZts"q�|�m�!Mz�4+.Ȗdي|,Y�e��o9$EUo���5"gy�Q�7E�F%��������0�=ǻ��r����ף(��%~��E�����'ѷ�8���_��MB�=��?������>Z�J�1�D�c}�t�>������3��,�7�)˜б���N䇿��=�~M����)s�ý_����2C�����x��}��iu�O�	����a_����t�ޒ���!��ͺ֡:F�Bܞ������.
�:���.�q�����<��:G��>��yo��#O�T��倠a�ќ�N�X���>�m���>A����qb-��Q�cVG���y(��hu�z4���z9���pF�fl���b��)-ELJ't,ڜ��x5�N���ڏd�#}̌9�a�U���������`��VG��� L�A��)�S6�ʠl8��9�p�EZ:�cP*���|��8�DA����y�,��Q}A���>�N�L��x_ݺ96__.��ĤW�(gx��A��(�8�c�]���|����^!���JƕEB�=��K��6=�2�=�z�V��H����Z�-W�Ku��1��Q���9��t��б�J�g�����,��IeՎ��W�7�ᆔ�5�L�:
a���Jk���:$I�έ��|\)����ȖK't,��q�ꑕO�g�_�h�ca2���m�O��t������ZD�=��t�P����a��A"����N�X����	's��(��"��4��m5i��C�:�G��IQ`Q�CM��q�^$��rTMQ$��f't,��n���C�>#O��P�NKn;#_B���#�a���:
���&��{�w*�=�Y)ȜVh�E���N�X����ǯǏׇ��I��h����c���i8��mR�tj�N<��V�@G�E��H����gb�ý���D�^E8:�cQ�W���C�a���PAC����Ŋ�{F��~HŁr�V��< ��-"B���9J��x��C6@1~N'�|8�cQ�����d|���a�u����RD���wp��:e�J��"�S�>�kK9$����y�
't,���~zp�	�҆>ѥ{���륮l���Sn��T�S���3?��@�{YͲ��C�YϲA+t��1���^�|?0�D�f:mS]J�֔��/D�#1:�ȃ�ht:m{ڕ %��\�Y9V���� ˡ:��^���e�� �E�������H��z�N�,�~d]�T"V*5�z��ǆh]�ϳ�:}���tg7{:G|�'���ڕ�-$>Ӧ2pȓ�����*�m�+J �X�<�B�j�UX/�б��������#6\����PnRg�m-�gx:���u&MjB�&I���ވ�Gz�	^V˩:��'�tr�}'�#ʏ����>�Ӷ�!��> "[�去$	�݇TN�J��|&�u1���	�[�[����OKR�*��>WWg�?�j�N?�B�V��ԫ3���҇�d z%M�AhL�0������qUɣ���8C��@Wn
��'n�m�znuR#"��[� 8�`��<aC2�����x�
�ZR����;���ޫ����uqڒ�����i1��uX�F@���I7�{ګ߄�f	-�`�N�X�<;�_���G���=�ۋ��ߖ���teg�"��	��}���p}F>`Fz9��))P�9���:.O/����G�� A`�6��"xw	}��b����8�$���kuR���ޚ-q���y�g�j;�c��ͧ%�&_�V��#Ή�M�U���e8����y��$At���c�	C�iA�AZ�w�L%zC���4D!��� qBǨ����|�����܂y�J|�1�E\x	iuR;��G��
�S��$�M�p�������ؤvBp?��V���|�VY	��/N���׹��z7_�D��Im}�Ğ%4m�w����z��\���y�nu�Y~zz�t���"&�K�DC��9 �)��7��� \f���J�  U�6�E1I'�f9pB+��>Ƚ�2�#����� �W� _�W_wJ��I�ө�RLd2{q+�n�b&Q�b�� o�б(.g��X2�J\g%j�%��W���8�8߲"��%�- oj� C�_�����KF5~vB�"��|���3G�a�,�U-���p;���!U9H�:�(��ɚ���#RцqoFx�٠F�`�����	�~�/'�����"��������[ے@�5��6��:��T�h�'��:peeo,6�T=d�U]��бhR�xp)>��\�ui�n� rou#_Z�Ce$�Z�F�� ڴn��p�;�6t5Yg��|�mf�jㄎE_��է�����@X��7.�9��C�A�.ɀ$��{֯|�H84�{9[Gd��P���j�dN�3�tCW�y7���Xԫ�E��-��i�9<	@iu8��CӞ���\�t�C���R]Y#t,��Y<�]����8�"}2�A%�����H�
߀$����� p�G@J�^"Y���Z�����n�n���<�.}D�¨�$�q$�k��-�Š��D$,oB$eܚ�&x���A�\f�j�C't,b�����ǣ��G��+D@,��#�aX[��yGa�����&��7�� �4��e�:�{kc��㛂_��`�5�2bk�鴉u��6��e�ٚG�t�R	����_'x<��*���d�;�c��Q��{vI��@�m�lI�ך6�3�� R��kuX{�e��g@s��H�q�.'U3^m����͏{v���q_�?Ŧ��l�+�2m��$)�$�fh�	v��FὊ	N�l�� .SΜ�1��G��������&C� ٧,�=nAK ����i��`�JI�*��HFhRE�-S't��L��ջ�=$�
c�c��[�$�!�9�F�ku�vnDې�\�.��F2�ø^��Xnb��Х��<;�����k>r%��kI��А�#�:}tLڑn��V�풯7%Y��Z,�ᔭ��EH���ݨƿ�nT����N��om����"�7�� �$���v�$�$
o�ޘ�U1�h��|1�:��n��Uד��Ι��g3���m �U�� e���t�A�&-+)4)��6
~��t�*���A�
�3b/��ޮ�cU�ԋy����K"�%y�c��8Ļg�J���&0�32��C���V�[�c�c��]t[�ݛ�W�me���p�u�ڷ��FE�c�y�4yD[l.��Q4��s�=�fN�Xt��������m �ΓR����
���x"�f�E!�㶖�і�7��*2+� �(�I��x턎E���o����E��8h��xRík��V虤�x�� ���aUo�Ⴉ�v��2'tS����^�?U(�r3�0��_o��9��ouzL�\�5��.x;�!���j�4ڰa��	]�}8�Ɠ���v�ܔ��c&O6i�+�K�vn��1���l�t��>X4�rʊ�B�L��(qB7��?.G���_�;@��+#jA ٖ #�[���k�KpLGb�B�w���HR�r�	,pV:�o�����O!�~��� h(w�T�-����;���|ͮa� )wV�n�x�K6�L�h�W�qm��7���l4�*D�W���A	��$�NI�9<����:�w���t
Э�j�<�(��b���'�������}���W�  �&�[p�+����}��0<�Z�+u��kz�&*>���|�Y�:�c������ŏS�>#�yM��&�l�I}���N;���?��e�������J,SƳ-x<��Q+t,*�˯g��.�"�3`���Ɯ�8+���E9B������4�l[Xb�5{5�4�ޜ,��Dy�����:f��GO%����~r�8�A�[�@��,�X�#:�v ���*{!��j<�����h��б����-���|������I�+�����Z�s�Zi�B= ~I*��	g�b��K2-+9vB�8����pz������������_w���%L 4	  �I5H��HP��^A����m�d9��N��5OG�����c�I=m����ukn�0װ��:j)��*Ͷ�'��I�ǫA!-��|�9�c������z���W���,u��⸎/�c!�����oq��|����ƸZ�$��`�HT^j��EbuTʇ~���QN��z�Ə��}�Ga�/��DÕJ��T��9����Ռ�/0ų��\����醇��ѵi�-��k���\P��{���a	M�Kt�
׫$ΧK�%A�e���	��O�%�S��8��(D����s73���;����Bbjr ��%���*<F�j��|1����	�b��7/����R����f��t�9T| "h���E@�Ja��46��8DC�N��9qB׹/n������;�
����pT[
�^\0T�mV2:M��H���k��˞���S�@�r!�I�UN�Q��ӑ���DRoo1f�[l�#i�M�����.h���v�9#�3��(%�t�✔�r^;��&/��'G�����E�I٬K�6`�E��f��U�:��	�خ�=nRyv��|��e��&��tB�,6ޏ�oo�>޾U����I�!��J�hW#�+�m-��N���v@0��\N+����,���P�����E�G�a���M��+z�v�Br�>��\I`G������POݱ&�y�7�r���l�,IℎET����a5>B�m<�]o�o!KY�h���!���ef��&ʰ����v�'fE��g�f�`�:��������#!T6�*�5���VI4��L�����F-��9pt���z��r��T%<�#�pB��N���/�O�'�p=��Qn��2�4���Z] 	@Y���	�r�mX\�4[���aT%�б(����p|��hOU7�r0�P�_�8;��-�Z�nB��ėͲ�&|!�i>TevV/�p℮E_'W����K"o��4n6���$� k�U��6:_�*�  %q;��o�U�"��k�,���M~<�)�?����`R�!��8�����fP���^�3z��� ��]8N�PR0Le�Y�l$���d��������#����z�x���͒��o5j�:���I
��� �)x��YVh>u6��:����8�������f��
 iv�����5�w�a6a�7Sl?���Y䃬Q9�hP��б�vu�m��&����(l@J��`[��N����E�V'-���[�&TT���"��{ʪqY��:=qL�ߞ����%�&���$)�B$S���ma5��$D h�:�o��0��zK9���:G�dT��I��.�uxu���"��5���_mn��������p3��� F�z�5��G�Ij6_dS1s��<�����!��snV�_�fITWy�BF�[n���\�L
xoE��`��0��r�LFN�X$�l��ܼ=��	=j�����a����-`�IE��%5C�>���\�4�I]�Eb^�U����I_��w����(�X����k��P�A��sd����|�����:"�j�Vt����	]"Y���/G��K�[Ue���x+�e%�k��֝�x6̼�Ț�6Ы²���f<1Tb�O��N-&Ӄ�O'/�
#�X`��5�-1}C܎��[3n���h>9����7�D΢��2a<�7#'t�[w���|�m5~|AB����(��~k*�[%�:�uP�?B��o=S�6K�l.Q��4?O�б�<�y&�&��"�xγ�cnY$�5r���[�V'�R�lg��[�]7m�2�y�!���i:wB����˝��E�0=m�n�4ߺ-�M�ޙ��w�n�",s-��;_�ۃ^N�q��
�"YM�I鄎EG_����<�F*�h "]>�^�5���i��j[�S�V��@�J<l)К�d0�k't,����`����w'�TS�͇$�� (�&�8xq��f �l?�`��`�hU��)z��x�#�n�}��u�S_����P/�-���6��̑�ުcNg�����~X,)*�B>Y'�r������fᄎE�����_���R��� ʾ�"��C2s��:� mu�]��-\r��*�
�,�4Q!&ƫ�����y`lx���[�T>�i3�c[�m������F��R�v�G�L.aa+̓r0E�3��i�pB��*��ǟO�#|�(����	z�pۭٕ�� ��Q�=����P�W�L�����^(d�T|X�WN�R��<?ݽ�[}G���,h�#_���3�[���32�,ۘ�7�,��x�H�J����<rBwG���a~� n���ȞQ����#[��=�:��ڰ2��5�ad��v{��� �X�         J   x��OKK-��L�700�/I-.�LLN�/�+A3䬨���"#�ĤdN#K]s]##+0�&����� r]�         \   x�+(-J�H,N��L�700�/I-.�420��50�50�44�2 !�����Ҽu(bF1S�b###]CC]c�`1���p1�=... �:"Z     