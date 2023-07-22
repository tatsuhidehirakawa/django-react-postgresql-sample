PGDMP         	    	            {            postgres    14.8 (Debian 14.8-1.pgdg120+1)    14.8 (Debian 14.8-1.pgdg120+1) >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    210   �n                 0    16423 
   offer_list 
   TABLE DATA           �   COPY public.offer_list (offer_id, account_id, offer_type, offer_title, offer_severity, offer_catagory, offer_location, offer_status, offer_text, create_date, update_date) FROM stdin;
    public          postgres    false    211   ��                 0    16428    purchase_histroy 
   TABLE DATA           �   COPY public.purchase_histroy (purchase_id, purchase_date, purchase_time, payer_account_id, payee_account_id, amount, create_date, update_date) FROM stdin;
    public          postgres    false    212   ��       �           2606    16434 '   account_attribute account_attribute_pkc 
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
       public            postgres    false    212    212    212                  x��}�[Y��s�+�w|mmSIHr����8���=�p^*I���
�'��rQQTl/-�EPT��;��'��J�i����U��7�=G���ʪU���{���Yu��?�6�wk�t�|�~s�><Q+��������XV���_~i��������Yz�����P����|���--mjYȗ��|�*%tQ*ꦃ� ~�/���L>>�U���C���z�p�`0xP�(��'�^��ٵ�d(�j�h$�G�>��[I��f銦 �)#�V
ZZ��!7�Y:n!�w��g�Ӂ�������'N��?6�/�C��:,t�to8�H�$p�jի���Ze�V}X�ުU_cb׆*;��kj��Ze�V�R���*j��Z�N�2�35޸�V+_���`x��){q�?�x�gj����3��<���܃��� [y���\_������Zy���7{o�|!��MA|�aB�
��\��)��oy�ۀ��D�+�|ނ�����M>٥����'��;�o+� �b�X��`��Xj�!VO�Rcf"�˼V�C3�Z��É,�!
<���|�Y�l�*��4c�W ��p�~g�~���9	&�qzy{�1��<�f��P�G����C �d�2��}�Cm!���JI$�𒈂���ar8��Z2c���t���9��sż���|��njE�1N��d|��c�j���lKZ�1�YBu���Ra�B4�ċ2��
���C�B�������oW���m%��~�RzJ[kws���Z_V��䔣'),������XJ�je���e������[볚s�����to�=.(][k�J&��6��(�����3 0�d���3`T��\϶`ׯ��r�wrJ�-�pHH_6 )}�^�R�2L�ǹ��W�z.�(���|J�Ƥ��0-@��: �5 �d)��s��"� ��1� ���Z����ו4r�b ����ΨV!#�v!�:W �|�ZE��	xz��+W/Wj�+���Zy�V}�6���·����c�E��I�Q�wO��w����~ �p��� �]�mV7~��]@�K 7T&��'��[�R xRc_RL��?�kFw�H�I�(`�t�Y��];�|��X�]+���� �]:8!�wp�gpӁo���Va�7 o�tKGc�s]�9��3D�+�3r�~(}2zw7�0JՑ�ֹQ]��P�;��8��c"��(��o�_��K	�9I�[d�B\���E�-��{_r�ͤTBx�BA|��08�gt��5~�D�Gl&�N=i�������t�o�߯�e�8?��=���k��)D�BZ�� �7�.X�*O��A����cY�L�bi^=U*8�#`�JP�;�x{c��Kp�v����=z�>�q�4�n���ߺ ?L<i>����N6gκU!}��I�#��҇��Їa:�s	277 _��'
Z��p��8e�{��;�c~ށ��F6VsZW��@A������X�oTj�\B��K�����
6�e�s ��Zu����N������Na�+7�D��E@�L.�� �	GN;�÷'�҇߁�{B7{;2X2u�P��U�M(���Y@�	<]�˛]��"�U	g/�� ��ҬR�ٛ�r��#:\@|i�W����e��.�=�*/�o��mP�#��2'�����2Q|(�^HJ!��"ć"Ӂ?u�,��~��p��d�zB+��s��akZ�7z�H�S�>�0�u/ӂt� ��Z�����oO�<x��рJMlD)��R��E�X���7�W׶W����m̍�k��_���l}䢽t�~=dO\l<}�xs�q}���v�qyCBs�V���=q\�����n6F�$�ц���6B/m(�m&G|CQq$�u��۲���=6�	S��8!�E<&�������`�X �~F��鉘����*Ӑ��rKN�Yr�ϒ�� ]��]���2���	Q<6ג˩`'#	G����ښ��~c�>ґ��о��r�u�~�1�#v���6��i�]�v�9� �B�}�������XyHѾC�(����)�;kЄ.�c�`�݀2H��x�>�x
U�V�G�	�&���1`l�$��y�P)�a#�RI���D]"���;B�b@e0�3Ȉ=<�/x�`0��Nœ��NU)*�ҧ'��Ø���CFwT�h����R�9%W��f�T�w�J+Z���J�f�K���i��C�w �������J7xۢ�Xz2��w��TĉC�� �Af?^#	�o�Bpj�[z.���f6&��J�y����bB����
��T�:�/ZiS��� ��du�ǀ8 ���HR�ĤBؑ
������v()���
]i5���R�k���#��T��H���4%��6���X����Z}
���7��S��]�� ���Zq6�O�se��V�f&n-���U�Q+�	z�'�(� 1��JЧ_�ܻ��+%��K~
�C~�I %�DzŠ�9�D����z���UQ�Q�o�h+�]β6K-$S]}i�}N���"�>' ~�9�$�>p�ßп)d}�_�˕'�����B��D��P�U=�`x-d�3e�x��4"��X׭,��
6�,2G����Ԑ������j;�O��b��>�"]�Ky�>|���*�T�9��|�ގ�7o@�s���?�"==1'ٖb�!] B�� >�a��
n�=Zօ�[��?��j����v��fڋ����2N���~s�.Rw���ެ"��ϝ@�� b������[�@�I�Ph�C��B}e�;p�4^l��"�hNx�ȃƕ���A��3{��b�H�W�W΢����o��1X��M��Ǌ 8K@�x,��}�BU/�"�C�Xs���h�	։�٧��h&��e���.�6!�w�(�ϴ1L.ӨS˥�^���"L��C�����OG������p��P��x٫�e�An��}���r�ټ,��Zͼq�x�n?9�vynsn�qy*�o^�kW$��K�{7�
��͙�ۯ�Z�6����M���Z����`3#%��Kd
�Cd���JF��A����[�lKŭ��1�p9�j�<���+��鼔�9kc}�qү�֪�H-`�*t*)�<�0��=�vq�i����c���_$���E��_D0폿�*!i�ODQ8��5Ù�����*ZX�I�Kݖl�bAO�17#�������"�u�E`�Y`�3Ȳ�W�ʑ��/������R�XWV���{T)�
��	LΎ����Fp�Y� @3�k�t�L���C+�i1f��!���B/�)��&���q�Ɛ����Ġ��v�w���d(c�-^�9�6�*�Ҝ�ѓ���3���k.��O�P�o<?�3w	&<<sE�^!G9@ �����SdS����Bg��P��3�3��+����\�ߺ	U�3�� ���
Y�n�%��<B/y(�y���0Ѭ�������S��#�A-av	���\h�b���]�7"��
�ߐ����~���A�Y7�2I�Pvv{u��t�V��q����
�@$H��NQI=��}�14�1t�`�W��BxW�Y�g7JY�2��8^�~�q\�!7��\�' ����+pw_����ccx+0�ym(!����'o�o�j��tW���gH���/Cᴝ�s�[&ρ)<�3���ۛ�6���he���/��H��Bx�OA|��0}���KM�Z$�Q�:�4�0O�g�Dzz�`<pB �3�uk��ui&��Kw��9$X)�|+/]2K�.����v)/yoT�:��
��y ��W_(?�Z��c�jE�@w�Y }�ħ�h0?J��
b�ˆ ���KA
�CA��{a�..�� P2�nt� M�|�R����m�'�}[���\��X�����wx�Iģ�O�c�w�����)�C]������ѱ��?SfC�'� �$\◄K1�o�� OT�W�L�\,�7X�?��˟��d�'����^}��D��,����+V�B}ko�� 34V�!    ѦO<���<�%���Y�/�E1}b�^;�]����#����͵�#�E� W��۬�3���Yy�&`�sC���1�nC߰�-�hG��j0@��d�F�d銕GF0hpj0{����$�b*�lB�\L'��r:� 8:?:QL<�0#A��s�(\�t��hd��/�����|�d���|)���,8�����	��� ��!�_n�DŞ�!�~rg�4�bW�]��>0�n
-�-5�f?@�g~�w,Cs�2ٜ{ܜfں�J���C'@�� 8E���):Ӟ]���G���髞�ԧf�=�x@ӓd�3�Rt�P�Q�"��u`�6&��;��5�E�!���u�`�;���6&��҈�KJ#!��FćF��GO�"O�J(ī%(Z�QK��J���y���ޭ��0Y�[����چ�6ޮ�߭����S�Z۴��ۙ$̞�	�0�a����\FɥQ^|�����2�dqk�1L������{ ��K�0�\��������9��wk��t 1B�����y��4�����S,��# �^��s�J��?c����&QR?����-�|1[f'�PE��J@�,T�i��4vz�Sȵ�۝�VE3j$���97Ԝ�%H{��� ��W��g �u<J�<���EW��-Zf�	��q#�7�gً �,{�eO1}�D�8#/n�����B{i��1{�@rI����V=��Av��VyDk�X��(��xU�ƛ�h�]��u�7n�G.�S����:"�:ď:�>$��\MS0�e���:�����[~[��a����G�=��}lU�mi���˿]���>��6>�aj�íS��o��)�_�����������۳�WF>���|���a�߯���o��tX�Py�D������G^\���C�E��N_K��.��r�	�_n:Ŵ�9��d	�xR�=y���@*dth��J
�Y��w+P1�ٓ4�����b/&O_Ap���/}�b���� �1 T�k
�yL��R<��j�P Y�{O^2ԝ�.�C-I��vF��*�]�L�����5��	 ��5⛷F0�1�s[��V�y�=L�#1�RV�@W��b��q?c-�

2Tq6�ίw�6p��}�u��خ\��LOYݓ=
6��^
g��#N".�D@�"N�gvcA;\%��:[ņ]:[�:ا�U��Ԙ�
�W��ר�גJ�%�!��I=T!���]�Y�AT��
�$�V"Ul�VV����X�% ~�X�i?���﬩�(�T[t�F���+���
�u��#�-�g�d{p�IAb��Vx�7.���1{�]*=|��� ����iUB2z{+/C.q����o��j���|}@�)����Ҁ9�Y�^T��=�i`���#�kX(��,BkN�S�T/x`CI�?س�S.��N9�r�iO	Y�kƼ9��ǜk�"�h8�չ�ZU�,�M,����>p�}h-�5vW�2_�Bܼg�R��~��s{��ll�t��N@��)��Jϊ2�����|�NE�XG:�jW�!9�ȓm�r-y+M�����$ou�p��<o���+>�G@Z�ј/:�ߩU���ڒ� ߙ數��&5{�lf�KF�-�d(�O��	��m�H�v%��3YM�/�̽��~��?��Y��!WR]�e��򮂙�����JS:��R�tY�]�K�"�R��J��nԠ)a".���P�����<V�%��X�I��aI�pN�+\EAw5\t`���=4!��ˡ4��-Dg�L��#ɜ�7m~����]�AWIu�6�3��qi�&���7W�F@���(�}��Q�c�c�!�p)�F8��SH%>^br=�0��=��f]'I���:m�Pq �)e%o�:�k�k#��G�/q���ƽD�>��<R�#k�A�A�4�\����b����4��5]�`��7k��:�P�#]�5��"Y$5	f���D���;�J�Hw��ym����}jW�Q*�/B�E��Ap>\��å�>{�V;AB�)�J����
SF2�ˬm��ܐAp��3$(�}�~³���D�.�$ٞN�c�2IW�2�E@�����_��k��戞.b[]Ź�w� ��O��K5n�ԇ��a/i��1Z6X��E�9[����b���RqF�["�V=6�*�d�55 茶�v��y�XA�V��W�(u+���(��HL�E�j��K����I\�-��:"�!����gDPL�n�%BOc� �E�jE�֩�j��`��(��k9K��tVΣ��7vd@Z?k�0�T�@�dH`�y3���x'9 �Z`X$Q������[Z7�P:�|� ��`������������{X ���1��{�`�<�4b��މj����>��3�Э�LH^���S��J.-�^��ǟ��o4������`���=�\G�w�q��T��$���[X������捕s�4@G*'��#8�#8���3��Hmj� ¶;��&��\�Ǵ��dG���QL�s�k)g��$H�` f�}m5����ӭ�"�����%�����c�q�.���C�i�%ԢQ=�G����>�!M��s"O�ApI��/��bڿ�� [\�(�Ǐ��T��?9**"��Q#5H�^�B�岽|����:�ˆ�<`�a!��~���It:�|b5�]��b���%cN���dW'Hohm���?BL�=�}�Y�.!߾���� �>���0]ގN�������D�#�|�z�t�^��|N�Z�tq�?/���*ٷw)'\�����2l�v���W�~�6I&Y�^�ɷϔ�L����
�g�֧sk���0�a'�&�"/X�?��Kn��I*���\ߪ�wS�^N}G}�G}�鳧�92zƂ���R�CZ<��`�S��oR^�Tz���'��:��p��}����%�����~�!�J���,�f0킦��O{��lP�t\��K@��q)�}�I��샸�`�Əx���1+��'L��
,���
(�Wכʻ�P�	��S+1筧�丫���<i��B�r����F&OjApIm�/��b��^|�O�:�ri�?���vo&��	����ͻ�����w��Ͼ��[�*ʻ�wo���߭�~? ����R�W��%>������z�zHy7@V�����/��� �9@�ny��.��*���W=�ߏ�?� �9����g��WʻUx�s����
@����p�|��&� _ޗ!�/ <�y����G�9|&�����DG'����-z�j���'�>�S3�X@�+%��bn����0:b�����
9d�S$�jگ s?�?����M��$U��;��,�o.m����c#�Qy���w���/�!��Ҹ9
X?�+��L��C�Kv'�	��d��>{�JYHK;�`;�n����h�����cqr+:� '��i�ft�&NQ;�y"ʜeJ@�	���χ}+O�{J)'��z���'u�R��E��<��={��Z!SJ�����|��s)��8	�P2�%]I�Z�2�O���$�*(-�|Ar���Y���BS��=�hQ�n��y�
�4_(n΄��KZ���%�,����7�L0�O���_��
�E=�=�u�Jj7W�y_�~h�yw�����n.&�����$Iׁ�	�����7n5_�F��8�G��/4�����zܐ8�D��(��	�_6"��Y�=9��ӓ����=�Uq�W��|���ԫ���˂�<A�g|��C,!hl��� 0��V&���)6�]\��u�A|]�ӿQ��b��V�
�\w����Z�}��_Kf	�XS��pT�?J��C��P��f
T��]��I��i�+����7�e(���#���2��t�v�4I"*{K)	�\:�ׅ�b�/7%	��Ƒ<?zN2h���}�h?�m�E+z���=jm��	���c񸼜��#���#�3���B��'�k�I1}b#݌�������[q5��5�H:��u�h�Z9��i� [./!���n6��C�o�B�m��D�
�6⋣�   �9\g�
�=BL�"�'E�=I@��I�ijR����v����-�>폫���d��EK��Ze�DA3�8��}o�^|�sfZN�O�aD슼�\wR.�B���Q8�3���B��
�m�B0}�9��;oI}��O��P&V��Q}�M�Cr��$��#���? {N��iK�����*�.~~��� �~~���O�(q�Gc�k�G���&"�L(���@�H5�8�Ә MvSR�.�q�e��0Ӟ�7Pwdf��U;�gH�?��_~R�X��lD�����-���=7��r�kQ��>�;���9��������)rhөS������;n.m���^����G&0$�"�Y��h��j}xڞ<k�-o�� Ş�;2}�\/Apz)��K)���,0������D̏H��|s�
q�#���S����In i�7Y?eo\��Q�#""."B@�""���j�YC�a�0P�p-�4Kٞh@�`�Ri"�\����=��7�x�i��bcq�X���|{z�q�TM�� �uWC]i>2F��!����a�&|�r���5�!���#5���vv���ur~E���t@+�i��*%-'e���$�7�I�$���*9�����/Hz!4��{��FI�R��RZ!���įg)����˂Է线�k�d�L,��j�BƢ~��Fl���|�7N�f����E��"<��vmM!mٸ��BxiKA|h�0�s�X�;ߞ\�z��`D73ᮾ]��9������$zԧ��##���(�P^ K����/9t]O�F��aT���`e����*��G7�/{��C��kk({�Wh*L<iV7�a�N��9Z�Y^�"��J_�_���i4T��[���|w��h)ޓ�&e�.�w��X���	����bڷ�)����y�+���:��e�NA�ܾ7=��oK� ��@� �&�D�2�q�-H�}����V<���;7Љ���Ծٵt�rcM�k��X���!�ʑ�Q�xp��rG�ړ���p�w �Z��ZS�^�S��Q�^�P�h��L;�$i����.�� ����3�T:�`FC�XEeݺHo�È�k�\w?�$�f�{:LI|�ט��$�3�k�Pv� ��B^/;�j��� ���cߘ:����中p;�p+���[:T�&�z� ��ŬV�b��"��.S?�J�\���g� 8��r`=�?�� gڭ/֫���<���[J�!���n��wE	��\G{x-���	J��\���!���Ġ0�[�ywcg�6�����L" ��X&Qkރ�t�&���U�M���ӗ�k�"N�' ~Z>��]Y!F�W�⦯�L��x�_��j
V�i��l�0��!S��;Swv��".9J"�F�5����>�4iO�l<>-<���ٻ��.��;��L�lK69�A��8c�C�	�}�l���ܭ{�Ӻ��O�F*+S����YBp-t	�_]������4E[����vA_H�M$�=8�NI#�yJ0f��N����p�r��'9��F$K�皏_����޼	4tvZ+y""�ok��I�,�����v��'�R�sU����RX��w��dU�1	Ŏ
'�+��cvЧ �H��cm7����9dҾp�
���M�����}�(���'M��K(Z ���1�o(�`�׶���ִ5ȧ��Ĭ�T�+�
�l�{��7c�������5Lkq3����k˂ m\�>�k}y�&�y��ގA�Zr��|��Ԯ��ן]�<B2�]�{<���CR'�(yR��K�$ ~I����-f]����jK��l�o�H�#W�������*2׍���P�����H�k�7^\k���[;<\��2MR��i��, �������(����A>:3� ���� Ŵ�H*�A�r-���f��x!�����1���%z<1�{�������",i��d��ƹ��3%�M�z���
�U�f@�*�\�/���b�]��8��VQ��;%8��.㻄5d�}�L#��b ��:'��׉�ɳR�ϳvv?-�N�.� >���L�IT]�E_��bo����c�=g.Zw��;똄��X�ē�)����E�@~�=���[nF� 83������g���Riۓy��**�s��l����[2��.��"N�?	K1}�&ol��"r��v�WSM��#���8�!q���Oރ������yj_o�=x���C���]�E);�a���m`h�#/�7n����_�|�_�2c]�S�(�tBp���C�)�O�9�i ��Q��ޚ�b�2��\��+�- 9W��]=b�=U��������8=����T�A^�XO��tɿ�G�%�^�%�y���!& ~9����;��ڈ��jC��L�E;:�L`f�y��1p�)��cG�����8�]t�\.����xs�Ns}���-���EB�g�'�Q����lR�
!��c�WpL1}�h;%$:e�CH���(M��LG��4��ײ����M���1�<C�q1Š�\�u�����h������Ϣ����>,'�]���ML%��"Nb?�M1}(���D
��?�e;�DN�հߥs$��Ϫ� �gUL�ϩ����4[����_��	=�Q�9����+�e_��<q�|�̓�%r�I�Utz��o�:����E����6Jy,T��B	�_,�b��n��j�c���~����c��n�7���>����b?�V��#g�qO:Jc����8���W��ӽ'����������oSL�V�ȯ��`���P[[���B��            x��[YO�<��6�b���.H�8��j�K�j$�=�����������ދ�Z�����s����"����}'����qk3�����?1(��?��w�h���N4UсJ)�(�D�`?ͽ��D�?`j�(�DU'����7��
�'V�[�5�3���pv��^=CcR<���oPU�2:�)8Q!؏�,�ͽ+w���O7�	hʘ� �H�oR��a�Om����k�R8%���x<�a�A��A�=D!R51����㌠��(�$��;���#�F�F��q�nÛ'`��K�Zk8�=��Ɔa�QK���s��6H=#�����hq�����:�F.0t�~����'�s32��U�yP����2Lg��L(��D�A'$A���>�@O���� �@�Ѵ�h�cu�I\f��ˡ~3*�c�3X��H���^=N6?^/���S��0WD�iIgvP&P]���a�.9vk�7���<Z$�����-q/��k����(����]8�ت\G�ۡD#�N���[[�&3[3�HҨ�zA`������^.n~3"�96!��Z�M�cw'�Nb�ٵ%�Ś�����y����<������&�u��
���Z�Wq/}f�H-]5��Y�	ph�hV�����������
s��[F2�f%��.��2��zr�N�	{A`�rzx������2?Rܙ����D�3�3���$���C��([h�A��sv/�&W��:6����P a����M���T"�z�
	!;��ص�\�LY���Q��%����4<�MN��Z����5vf*�.�Z=G͵��Z=�.;�5�,��4~��ϭ���߀(�.��w��ʵ�0�	0�G�%5���E>�N/�Yd}�������?���F�P��e�ḛIT�ǌ���ZN�(ٯ/�mx!�{A`d���])�s{�X 0ڪ}��1#��H���0ӌ%��`?f���`�GI/�~���n/�܍^/��2R�6�bȽCR�q�W���2��K38�j�ąYW� 0�~^����#�������u��g++Q	�F�����"�)�������^i�O�z�t�<j̏�D����V�����#��`*\�v���1�p`���"��j{���C}�i��b8�`f����,�1j�-4ƺXJm�x�� �M3��Y/���e^Г�j�ҍ ш���7��
 �;�W`Xȷ�"[�rP�v:g߂�K��`C9��y���: ��pm-�޸��wcx�#��Z��´ؗyzF�������8ÿ������Pi���<aI�����Nc���td�0-��?Ӫ^Y7���^
/��[�hƄh��f7�oUR������+-�A���
�xV�n/���V���^/6� ƚ�FȶX��/::23O�i�,�@�6J�+0���6Qb;enY^/�v/�c��5�|>8�m� 7��U�����|U���.�R�L�=_�t��M4�{A,�_���~S�����Hg8ʛCI��]I���+�����nr4�"��۴��G������d�E]�Tyg�������vɱ6/y�e`���:p�`,*��Z�����Y;��N bwDðU�@I���Ob�

j��`�3
�9�W\��ȱ�k�¹)b��yTjS.��qhO:�*Lt�f5:0+�[5|�����b�WZ�A�ow=���n|�_0����f �j`U��M���h��*�f��;0p[k�ʍU%��IU4t����fF�ȃ�����������4=&�uC����h��F�y��r��v$ч���vnm�ϧMD1���bf�� 0��^�?�w�X�m-12� ��cTm|�Ӆ�$F����d����@g��^�/�� G@m��y���@a|ϸ!Yl&�(V�	6�C��e3ٗ 0����n����&�R�-��g["��I��>ƨ`2��l�(\1���1�A���%�ߓ@�����#��q��G��K%��Rn�M�b�2E��FM�C�F>�y]�8�� �� ��>'Xz���"�k��R=b��rr��^j�fA/�VI��)J�Հ��x��?[�G��S<}f,����o<���8o���F�'N�?���X��n=��$�;+�舟>��
��aX7ٔ�b��E���8�9|B�Εc�@�O���U�vG@�WaB�\+��M�g�Y@�Y/�~j����}k�_u�#�(����U��eY6�Z�;($����Q�X����4o7�.� A�O���U6���]�����R'I��t��I�p�g��8Jz���ra��4��#>ho��J��a��c���n�V��!ec&h�b�T^��:5�ڻgq��!���n�!US;di��]�r3�d��T�_�e��8ݾ�+��j����礟qR4~����2��҂�Y�LAA�:��oA��oΠ�0rYvc?����o�3bYO�aDȷ��;�M\�[z���[����C���O�������YTҺ�0>}���R�6|'_��1��7��s����!}q>��m��'1o�W0���ks�R�,�Y&��e��^m�V�g���"�y�ī$��5d�ړ��"ƻ��� ˷�Y"��Z�W�����N�?������UI:����ת�@gQ:$ Ä���YnQ��v���Xm'���0�VҶS-�~�Ju��c5�d��1*�K�	J���J���zA�n�����j�qX�g�2x���d<��N� rlP���Ѽ�� f�@	�����I����S��g�~��rWB+��>��º�ɒ�rcaa/����0p� ^7��ǅ�ߦ$��\����ɲ�M�V�cB\k��L;�f4��ES��`���������+� ���V�G�-�H2	#��اV2\�6J�^%�����Ṇ�~)_1�+�m*ߣ���m� �(%v�I�|��ܮ~_h���� �������O=��Y�8�Xe惬� ��Vad���r�jB�y�[�N���Yp�i&�[�s�!^V�Û��F�c)f�y�t&t�<�`j�ȱ�Fۛ(~|�}s��-����9��U2xL���e�!�n*�0gA郼Ғ��a/�m��w��qry���t��9ɪ���,А��B��j\6k۰�U~���XP68�'����S�ۮ[����JI��B�
�%*bw�Ѐ�g�,��^=?�w�u�No����9 2�vFXb$	�ƪ�e��¢�S�h֬�X\�F�d~���I����X��pj��g�<Y�vE##I0UX}���?��z
�"ߝ5� �J���{l>X�]�xwcw��/����aH�u�d�J���8��XbdQ��4� 0:��{�k��b�(��M�7��U�o����V���Ds4��oZ���ȅ�}|��`��7|͍w%�s��
���q&v����5�&�a�8���s_?ܝ>���},{�ֹ�Ż!�nXR���6 7� �!UI��� �h��p;����
�����_-���WVa|��Gr-Nr��Z�Uy�b5y�㞝�G'g�,Nү���r���'���2�A4�b�|ӽ����X����`�a��a�YuS@�o.�=)Q��B+0�j1M
=@"�9	�P��v����a�m{���3>=�Ӥ:��=�
���OJ�4+��A�7�y� 0���E�E�"<i�H�{7n9��$(9]�(���R�����o3cQ�����Uh���:���BX4j���z(!Ϸt����Z���t�D(<�,{A4�������F?Oπ���V�'��$	�t�,�_0,�i��,У9p3j:��-��>n��'�:{,�))j�M�<NP�x��
w�S\�4�m�fgu���^���7���:_x�����A�5t��F��ЭY��<��55��^�&�mf���;�]L2��nV�V<��!>�X���r�d�u�9�|�5� K�7��^o��$��ـ_�I(�M��#d���d셨6�礎G �  �����~�c��]| ؾ��／��(U����-�$_+c+JM�٤q�z����������wXmk�!�~��qA�����*L���>+���	*�,�^�b�o=\��ί
P�nn�W.�����S�>F�K�vE�ڜ71x����<��	�����ޮ��������"�{�6R�Lk3j-`�0'�Q^F	��L�6ݳg�q��A�a��������8�k�ْz�YYv̮M+˛�� 0��y��-�O �v��Q�"}���V���L�*H��i�C�4.YF����7�������|�o	K��S��rF�_��ú?%E�hk�溅���q�L�hk���Y6i�b>�ӻLb5ɒv&.nc}�-�:%�x�� :5�&G�_�>�-�Cdt��nz/e�#�UY�嬅P�3��A�!����筻�^������ʮ[j+�#�&���6`.7�(��YNA��ߦ� 0�.�\�&;�9P5�˳1�r�
F��Bl�ٕ��%6pS�� �{Aԑ{8��4��]�m���|��/:j����=�ii衺 ��I�e� 0:�9q6�c'��
��K�ޒI��vq�(źe�e��T��3jL�FOOW%:/n7�
��|D��٪,���%��0q���Ef���%ĝb���x�~���o����uhz����mk;ؒ3BÛ�#���ƛg6�2��Ѣ��Q�����:��Pڂ_Q��,"-h!_|��>K�vV�n�+F�y��v/�o����aH�X��⑪�-h�	j݂yx��F55c/�`�A�'N��H+����:�|x
�v��Q;�������f �%���۩�6�q����q+ܘ ��_d_����?	JNcD(�k8-��`�#��&͝^�Ho�������2F��0o�T�u�a8<]�Qa���kkk��h)            x��}YWɶ����mRs�ս}���O�����H��+����cclcF��̏����_��;���̔DU�u����rG�ر�o�����F��4��`O���^W��b%e.�z����ʕ�v%�#y�5�_]�\=Y7�o+��Yޮ�NV&���U�崹�^��U�<^Ϛs[�ǵ�OՅ2���������
��V�*m��Վ��;���93e}X��6��ȳ��o���_�
_�F%w_�m��Wr����G�k���ǻ��׵�s~�V��������M���m%�@~��J�'YP�0U)|�䋕�F�pR�������ze��o�w��!�/�P޶����������۟��������g�g����Y[_(������D���`�R���8J��R(�g�c��Ks�3!�x=o}>ao�;6��+9���Vqɚxo�]{�+�ꩵ�V�.�_{]�.Vrk���.'	_�vS]-Q΋��S�q�y����J�{��W7o����rL� -8EW��)�sNEmN����`v�7��H������i�pX��W
�Ճ������J���K������O�ȗ�}#Ⓙ���1g��-�[k{�v�mM0�Ud�~��M��-_e�k���D�P'X���@�$-��a�e����1���<e����<yǱ�������x�zn��l[��ҽ������1����z©��o(	:��psș9�>��4or��/FX�7�J�����gk�ߪ{����<��J~NZ��A�/���'wŋ>O�QsaҚ�B5���+��E��dk�+n������KT��BI�aG�?y'��_�t۾y���t���+-rkD*�+��7�F��9Ul��wc��T|p(��'�#�w/~��+��J� _f�zY�O���.�'��-��+�l��N�{���&�ռ̛�������ڑ:ӰGd�@�U�C^�H5{���������O�e�y�0i~<�LH�%�F[Z~�����# D��{g����{,^���9���~ǜ�C�ˣ���x�CVd߉!\��� ٰ�g�#�}l�����:�R���5��8����!\ݼ&�����O���`�����e"�;�Pf���u�c� K�����p��욧S�������� �p{!���'�u��W�d���q�?�O�[ �K���R�M�k����$�C��F%ID�o��pz�p�V��%QI�-k�=^z�6a~}�B��ٻ��Ƃ�q_���&:R�+*��B����,8r��*�Ǉ���� ��K���P��3�,۰�s�lwP4�\��H�;��+F'_�.�ck��Ǜ�G��Z��61�x}�Ob���Ȁ�d�{���&o#�2��̴�Z>�'JY�2I��&r�;���`|���㛪,�2|�ȵ;�ϐ�� ��z|�x�`h�oXI��p��Ne������6��ܞY��Z~�4������E ����|5?l��ΠN���������u7�$FX:%|F�G=,DN$�V]ݮ��ھ��Ԕu��>|g~����06P=NǮ�f�}f��e�`8�t��F��c���$ٵ_^��+����)5�ߦk�M�,-1߉�VH��9����&j;���Ӂe�����>H�wr���(G(�7NJ^9i�mK��Y��&GN��4�I��55o�6䋏w�Ȫ`�����}���.TǌsZ�>qB����4⣁�P��t�~�
ٚ�1��|lP��ܩ�A�GI�EKq���K��Ӌ��uuSZ�!Pb����Y8�?�%�GI57�5���Y���_���e?!��<�ک\I�edas�u��'T�Y�Y,�.nk�?!`�r��"ѵP�T]�E�$}�~5�:B#J�ʕ?�T½���s���Pr9ۋ�D�
ԥ����J�Otd~��{�8�}Q�����zY~����8@+ ���t����XG׿�����Ѯ̯�'RC�����Go�<��r�>��^ə���1���|0���ㆯ/8������w�� ~�oL��|b��3c�r ��3V;Z�n����&φ��=7��6GA#R� ��r�ʎ:��Fw�����O�#9x�r`����(�5d�@�WV�c&;����&�3���{X䝏o��N��+E`�z����U�������L��-��
6��F� ����)� �l��3���X�j���~\mC�󑻱�H��:��v�[�c-&��Y`�)�̧��`o�@���N���1�{A���BI����Q��k�/��� �Rg��e�,|Ie̛����J�Q;�P��/�{��P�/��)���Ĳ�qV>䖟;[@4Y+}���T��K�t�QA�����۟?k�H�i =���%#C�h�Aj;`_�nT�U��8�\�j����bi�xνs&{�:������`�tL9 ���^՚�QRG��ŕ��f�IL���������@���1����F})c ����0K�$V�
�̶Wc/���3������
\�:_��j�?E����3�a'����a�En_ �A]���䭂�r�W礄WNJ�T[6����D�Y#љDN~@�9������l�]ۛ�־*�A~��os��~����؃A7�N�,"b��[�� �e�s^��P��B	��`]���P�y,��aT��w��&�$.>[�y���+T�G
�W~B�/>�ѷ/B�-{�bFg"�Τ|���`ofD���^�GQ�e9�CA���5���O�
��w�o\��շn̓e�i�j��
�`+d	ÙV��*6�7j3���/$���(݅��|r�zWvfнİ��=Ԗ.�e����so���l(����sBw��e�$��?�J�}=��d�k`�i��^�p[y�ːG��39*g����ڏw�)���9Y�b�럘�� p�뎹���O�P�$a�"����� ���l;�'�(�T�82ז�:����OP�p$%d��.��`��_�P_�TZ|�o\Թq2�2��p<��O��M��Fp�K)��+I"T�S�P��翼@� ���B�R�P%n6����BNY
R���I�O�a9(Ԭ��0�|c�ح(a��ʻ�����?ު�t�I��!#�������6n�;�Ù�/���G�+���O\�����;H����3��k�kk���<Ԋ�f	�s3O�;Y�6�F�9i�Ը?�Sx��n�/؉�Sj��8E�#���CN?�@�kuu�!%o�(�_{��$�{����܈Kb$�9vU��vo��H�+�����r��}�!l"�6 Od@T�7z�3|��.�I<kc����$�yj��ٵ�TT�^�K��#QXB����QV�������s ��,��o߁H�݇�	��W�Ɗ�T�.��&F ���¾`��hj�˗��Tl��U� �TPS�5�j^�D?y
z\QW�3�q}6�V���_u����hz�;�L�I_@O�	O]��7�`�,��<"w y��ZL�������*��9�۵���^�L�E�,��}��5m��`"ݕ����pw���EX8�5�`�R��C��v�����vs+�B�]�΀��k�����g���<�����+wz_;<~���p@�y"eݤÑ=B�ȅ�_�$y�q���@�ӃM�77��|�������[pwdv��6�8eU,2���t�F�c�C��o$<����r=
F� �h�s�j�hfrs(%��X�R��N|�Ϧ^��s�� ��#Q���Ws^�-�ȟ���[�ݶ�{-@�|L(/�t��cȩ������G�e,��$l�|��зɯ���pt�#��ec���'E��#��nɟ�� {4�d�y��dəe�$�__���D�63e��Ҋ1����� C㕼�*q�� _X�o�"c�`�]Nx�<�}���^a����B�c�m_�_*<=;X;��Q�����l�?��������h�p�ׁ{Ұ�*�K���у�}����λ�O����67��|As��\1��C�jV.*���    ��֔gՓs�����u���le�嶹�
���"�hq};��jc��Q�{c�����@�/M${S����2����S�_�0���A��|+8QGI)T*�Rw�ej�/�����$W_���Ht��6,�T�݆9
p���aރG���%VR��P��j*"�tm��h2�3�F;N�q��KD$:�u�k�.d@4� u�_u��z��$��x/�D�}��T�a���C��|�'~_8�6�_��f��8@��	ڦ[�mE��A���I��΢MT��a��*�[�ߢ���s��{;;|DC��1�3��,3`�Q+ ��%�|pTC�a'Wg�i�L�Rr);z� ����S���~7����ak�f��%)'�]χ�#����@44�H��B=��>�20PyX�x=c]~A����ca�Y���A�,�l��YK`��?��YY�\��/]i�M�;��/Y������7r���n��5'�]P2�{������2HG�XGY���:l���<�I��"e.L.d'|�xe���q�t���!žw��d,��e#��D�#�U�;�Euk�GJ����MPLGJv���'PC�)�V�Q�xd������L��G!'7�G�f�	�@ $�=w�~���,Ue��7ի�4s{�{��'�׳�c�e���>��x][<���1�6|c�p6�P��+r����X�/����Ek�� D	m.QYĎ�
���c���vI~����	��ֽ��I�yqR�mP� � ����j����}�DG��Y`E=3�'�qˤ��?��(ZM��^b��'d5xR�t�RS/W����-��ke�P]���jޞU1��L�ȯ�bY;��]�����ˮ�h��AYg�	���no�J��2Fwj �ۡ�k��$���Lك0�%4��K\{$~e�P���T@���0������4� �>=���؏ey?��I	̻�}�=�\Rȴ����c��=Gov�^�������&��ݯoY@������D�o���N"�V߾0w�֎k�/�հj-mr��^��Al�s��Od����w#��~�=�@TF�7k-��n4�v�������AcF�l�myd��u����1�'��l��Al�YP�n�����PZ��ͥl�B�p��i�ȯE|)7Y�NC�Ki����T���>�[��[��~��n��Z7Ջߘ@���/��;�n;j��,�&(o��=�#�\H߽��-HvƢA�Q��b.y0�³^�jg��n�S��1wF�Y{2!����9=����o�z�t�@b�	�]F�F��P����x�[O<I�Pjk u)�?�+��*�ѽ�v�J��@p,��t�0ߢH^����A��0���Yu��W
3w�p��{��/��3/��LUW���a�RV�����Z�d���&.�"��x����	�u;��RwBO���c?��n�D�C��n�pth�������m[q��C�� E͂I)��
�5��5
�%m��_q�E��S,G鈖�JE�.i��x�N�	�aAu���51eT�d�ע���5�R��hsh���4��4e����Pz�od0�Kc�=�!(��7g��N�aR}�-��Pr�YǇk�X��s�&}�y�\��E��L0��������ݔ, �|�M����1�������:��	�!�b����K�Hd���:6�!�{���tOi���sw4���#+��Hg21�?*�u��(�iVY�Z�wE����Ay����5 �\{�oE��-{=�&e�o���K���͚����T�q�ϔ���4�Ć�j;�ܶ�ѩ��M����xt2���h���n�Xo�:��k���;�Վl���|�J鉖`e�#�J@gfD�(m}��@�7���_(���E�yP�I�G<s�p:��{R�W\;�Z�����B��HA���d����
�N�l���&AG�@Ţ57V�d�)��J}āt�������P����[^#�Dܫ�+�(���m�.P �=z�U��e�Ty�$�QPY����W`3��y�Y �`F�����	�j�d�^��ʰ�)�\mf���|vך_��� {ν�,���2�H�>Fu ���Զ1�';�j<=�GȾ^drAq��%W��#΁#1f����Pڍ��Z��~�g����Bs��n^�w��$��) y�*�E{�awNޘ3<�wbs�\$p�j��˕-���@�+�fX�PRE�U��T�����=*(��־A���l��vPH��k���k��ڐ�h*P���5l%6�u�ɏ^��:#�ۙ����P�7�Ѵ���Y���N{�}�����J�.nWEݘ�kkC�8A��R-W��rxbm�z�Lw�М�X:�JjI��iVĵ�$W�z��/�� LՓR?wH��Y���{��W�/��=�o_D�{"�#��x�\��f�D� q&�y%�,�#H�>b�������>����2�\��:�_�<�c�R���ϟr���FI��WdEDƕnΜ�i.~��<�8R5��}m�K;�j����Xg�H0��H� s�5K8�����
�?@�#6d�!j!3�6�������M:�n��`hY�\�,�'d�W%���̨l���Jt��vt��a_��md�:b^c(��+���ϨO"�����Z�P�Z�l�5������vh(c-l�Wk�y�?��f�x��¶��i�\�p�c(J�!�(ItN�����(p�����#ϵ!ƀ����fϰ�Z�tmwQ����F���R� k��ͺX3��!��s���u�p���:�����	�<�8T1+ܸ'{q����NizjK�Y2�틇����h�!�]q�.*m��U�kH}�D�w �bP�P�)yJB�Ȱs��N �M6}���TY����%Na�1P�JΪm�ņ�P�c����*ܨ�1L �d�s�
�1��u��CC�`1��~� �!YsB���;縆��V�����i���|s
�s���Y��(��
��)b�懶Z"���Z�^��.Py@��S��P�'6��F����a���ǝ�`�����jh2��ig5Q+�� Ο4|lwz}�`ױle�X��kh;����l��������q��ĥ�FM�*�Z�CF��b�8��e��|Ң�Wfkޥ��Y����;�{s_}����j��xT�c��@H���D"F��3�Ve������wh�It]SV1�"�I��ci��;,#	n#t�N�q�nP�nOF����@��l��
E���x6Lj&���v�#%n�h��cD��bd�2-x_ow�����cq�� ����\tĊ�~c���TvhD�JO,�����-t�l]��RRsDHsw�	�oέ�Or��{�ԟ�ƒ,�O�.�q�i󤳕E�ܠ=N�����Ed+��M��#}�_Ѩz���@���А_сI�7!X=�����Hгt��@�3���kw��c`M�v�E��@eȊ����ɤ#Q�ə�n�b"�x�_д���D�����l��oBJu3�RY莁�^�;��r}��\�/�o��S�k��R^\!�ֹRF��{�x,㙒u-l����쑄fP�{�����t� U,�T���>���������Ժƕ��0�1�k"����wQ���7���K�Ty���8�F����2���7�t���^#�.O�_Mg���R�&1�˿�
��w�u��Z�H���s�hn����sΚ�u"��^�h	vlJ1���;��4fj^62SF�2�pl(ғ����`���J��^	L�H�e^i��)m�z-��-,�]��K{�,�J'(e����F}�'	�o��1M�[W\�K�+�e3�n���K�
��������&ӁY�)g	-H�:�{h2�?�DJ�n�
��<�
HUȍ�ADO�Ё%Rr&������(O�	�#S
g���'��J)Y|$k���Y;zh`���vx�6�R�mh�Y0'Kj�r���]9���b3���0V�˅i��@v$��%t��+��[>����&��<2�"��� �  �ٿ%&�$�8�C��]�!�Y/��6�DJh
���c���$��˨u�.�L�:b��6�Avz�E�R��FD���>�\����S��VgH��2c�l��0��������\�|a�Na����^r5`���� �X*g9�~��̚���|R][@]��1��M�Y{�����Qk;}��qv�]�V(�����KΕ����m���T���B���e��eG������62ɑ���/�v����2�������{�VN�4�����D�;�+�W�7�g�����cs�#�!9E������.W]5�<uWX-��\)��B��l��2��a�Vz]����(Ć �]MD�����?�g�9)ꨳTRY6��BOȥ�/��W/̀I1���/���SƵ�M6�Y��D}��ga�̄F�ǂ�!� 	��ŉRS+����͔���Df��S��e�ͦJX�.{mP���-�ҍ40�K�嫄N�[�����D\�R�Q7����Ƣ�.|<�ċ�ih�(�O��3\\���.��������$��'�����Y��TES�����;�x$e���P/o*�2nG��)�8�Iށxp,���t��fc�{���aW+� ��6K������:I�����S!��A���v��4�^]j>�S|_��+�GOvl)7�(!����wGF�]�ߐ1���?����vbŚ�C2�P#2�0LuCÇS�FAO�z��0�����n�D�.�$��f~��+ P��qY8����[�>���M�YH)��vFR}�wF;2#=C)�r���oGd��X��N�*���`7������7]'.�N�E`��[���v�w�H~�Hd�0[*�Ă�}7����)L�>a��F���Y���T��2ǻ�DO?�7�d�u��'�Oɥ�.�������I��sg>��w%b��Gxf	�[��l�9{�p��{��uǏ��I�p8a��}8f{T��$FƆ�1Πf��^�@/ʤU�����y�3=���Ջ�vGv�J����\r�X��ͯ�%�hfb_��i�M���-6%�u]��F�٘_>s@��{��CS��wP��i�b����Q5s�z�K�{>�?���� z'K�i�?A�1w�n3�w��'����$ 7�.�+vRa�E���̬����<B�s��g8
Cj$���^eG�Gx���uT$�;T�v�R��~B��.�x�������o��Y���9����^{E���d86꼾�x�_�<���K��j����C�lї9Ԫ����8������e��5�"F�J'�
>A<m��W���k&fk�G�y13e�A�������700�a��-v�;����Â}�S�|ܱ������~QB�#��24(v��As��+^A+I��Ŏ�v>�JK�=K���j/^_۵a��Y@�����$b��{C��XGc� �n(�kKnEmk�oU�4�F������ϛn��X8}���+v�\R�=����7� �V�l�abr�9��w���i� Z�BI��r�� z�X�9$��bݦw���K�6q�^�[c!3»c��hq^��u�6ڋ��aQF��������`F�{���x��4�N|%�a{��g���\�ה���7�J��+�ws���=zKS.ћjlh�L����#t@'4���`�󶠆��5K��Ü����Jb8��*ʵX�Rʺw�\}I�z����ײ=�Ql�ڽ�������I��}�P<F���wk ,���/m�2pr�ڡۡ@[m��hr�+>��9f�xNgR*}]�IL'�@�r���?鿥��<�c^��w[���V׾��� J҄�<+%�7Y�X���z��p�;��ot��3i5:�e�=U'�K�C��MyP��y8���4�b�E�����KQ�Xb�L����eQ��.��/x\��`X��u��g8f���C���X��~@Vl<SbW���,��n�~��$��{g�S�i7��c�o��k^u� �Ohl� �ŗh��2Zm�4p��4v�-c��ݑ�k9�h�g��k�s��F����x敩�-�h@Dʐb��X�>ZC>�0ͻ47
�N�=�4���5cTT��j&%�ڈ��70����񮡑^?��"��Џ���]=LwNay"5�� @,k0��Q�Y�z�#���ЪX:l_�n��F���𥃙�����q�ўZ�9�H��ZiF��ҮD�J�-��Q��"u�k�Jm�
�9�U����ٴI4a)�PQ;�{��`f�;��� ��P�yn�ӣs��:f<���IּU���b�՚I	H���71D{��0Ӽ{��?o�_��K8aG4�6b�ީe��m�jM����ѧ�V;���/j���H	#�xO��!�oy�#6�1W�����fu�@��\1�-����6Trs��W���m����b�(�Db���0��b4���I�=^���VY��<����.^�Ռ�EV��n���_�W.o�l���X�?��*��C��6CN$��#=e��4�_ߔ��Q��ve#��H �7�b�2*�7�Bt�.��Z�]p�_���q�=� ����%�&����<+�,��p)���\g��q���d���s�2�4���Z[	&qܘ��P�����pW(������T�����g�W�g;)S=�1��"y���!�ޔ��>%����y��7
����	$��v��F�R�ذ�4�k�b�H�Z+�� �k"M\h|&��[�h��\b5YzsX��S�
	���Ik�+R����(R�Gy��`7��td<�R�lx,j�tkv��b_i�輐R]?7���T��׈H�޸< �p��,�(ζ �I�nm�B"ls����|-��>�]p�pp>��i����p�x���w�f:��ZX	����V�XTrX*stg�7�3 ��h*���˻�y;c�K�'b��K�𱌮��)�nt���3t�F�G������?��         �  x��ZI�㰮\˧x�$8�,o���vh�-���$��{�"j�au���H�uw��=��?���˘=�9�*���䧬V���S�)��W&�8��Ǝ��>��1��C���~�n��_�7G��'D�>t�]�խ��L�H�����O{���C�O��ɸ>
s<kԽ�=E���v�Wf`XD�?.�A$���5��:;˸;J{T.���g�+&�U����zA�.���a�u���1�8;*v�<�M�=�2�]%Σ��T+��P��E�&���~��T-�쏋��Q������팠!B�r,��#Lx�<��=��θ="����|3֑w)T�����ݫ}O�J5#}��.�Q����1�|��o��K\�4Nأ;L\�{U?GY��3�I?*k��J1ր�Y
���DB���P���\2�T���\1!��!iפ*��-��'5)�ڴ�`O���HQ��yR1�!t������d���{:����/�1qv��b��4�y�5�T[e�$�ˀ����JY8��b�	]x!��wq'���R��h36E�%uFOb�mSޫ�L����e��G��k�YZ����"���q��I�s��U�]����X�ö2�)iN-�W��b�S��`Ѡ����y�˳�K����9\��M�f��"-�	Id�ԓ�����|w�̬�TSq�݃[<_|�I���#��ó�� �Z��":�?��u��'Q-��B�Ҏ�"hx0�Aw��<��kZ�	6���N�D>�s�W�e\�����$[<�=P1r�%I���o�R�x �����x9Nf��#�W1��8��MIe7�=�Y���}��\����n���ZN��*��l{|�W*�"�,��AY#�{�	m#�J�c�̦=�P�N�M�^��ڭ���pMu�1��A@��ʗo�iO������OD��;�"�oc&#�vRϲ��M�P�ދv9IdM�*���ـ�v��KV��9��5�kN�?�����j��@9O;�.Mԗ�?�bi�|��&'�#�;��[z,Ie�ᅮ��k=����c�2:��[^��,p�'��2�LƐ�:b�}�8/i	铰���H،
Fx��T�X0�Bd��{���M�9�����f�g� �ڼ\�|�Y!*�N�G���S�u~��B�]Xs�� �@6&��8���-��Tu��t�8��$q2���� ��؈���8��>ڻ;W�藥�ĨOYR���=�O��1�,�s���֍�9| /����c����:���(�vQ���=����[�)��C%?o��d��@�d.��Ncf���R��)�I����g����Jy���o9)c	�=��2#�g=�v�v�-�#�U<6�B5�?�eD���ᾙ�5���q��zf�"3�5|mKs��������o�ЛV���KI�w<O"���^XC�͗m����?U�u3�N^@g�3�����K�w���%R^N��>�nM�!c��Ȳ��?M�_!(��x��I�;_�������l��z1�pR�ڈ�$�=�M�:&����S���G���#�ڰ$Ο�}��Y}e��;V홡�#�:�Ihw{��ȉ����*U��0��[Si�S�t:[b�?�I9��v�f��rT���AnB"�Wօ��כZ)��
x�FƗ��=DX�Gt��G�{[�.�T� �бI׈C�ΰi��~��u�`���~�D�jz��1���ADwit؜���\�_�����Ӯ�:�T�Bڌa��
���aݭ~���=���X!C��-�*2~cn���������l��l(�ص*N��*���>���B�e,A�Ew���׳���`X�h��؃�`X��S_�W�V~��I��I�}��#�(]��i_�(&���Qw��<�U�ɔ�}���(���Wd2,��rkR��@��'��e�O���8%?F2�w��
s�X�5�y���ژ�B��gx�BO�cc��B���ĹJV&r5�s�5�yY��������˥"���YkԛP��2	�����A��4�hO��n���A�Q+�F ƾ�{��gǻ&�R�/j2�k�KS��ðޕ@���m�V���F�=��l:]�</�N�6~ݣh!V��fX���	}f66lPEg]/��Q�8`SSM6�w�{W�;��Na׻~�%p�W��k��&=�R�4�=-~��V���y_й�j8/,FR*p��� �_يk����ͦ2��k���*��l���4p�9ߛzZ��\�����/&4�q#'��{�M�1�K5�s���H�p�d�<�O��;���z��?\�ٻ��*r��.��|���:jh��Ɉ�ӯ;_�w�ݒ����
���^�����x	Oni���|�ǂN,�L��q8�F܅����K4�*ݫ/����{|G����vN)����gf�����&N��
 �C#",���l�����i&�����z�ң[2����E��Wl~2�>#m��y�tͦ�N�(��y��oN����@�6`+_��-����kT���Ʈ�;r�t�7lb�n��]��y���_sv����q�SVi�N�o��0��-w�-�E�!��m�]���h����q�Yʂܣo��a4��t�ƚ��n�l���gjd�Lj����ٜ����/W�Y�b��ޅ�=���+�i{9�4�7STϺ]�Tg��(N{�^]Q�ɘ,������7��@[y�����&��pqԋVC,%�l��]n�U�u?^VtI6	�i�BD��o_�t{p��De\>���{�0��%�mAÄ-�����ov�Fx��ʥ�d'�St�S��8k=�/���v������q�n�0�:���$	l�<8�U�Iv�ȌwI���X����eӻL��?�~[�\ri��T�]�ke�!8ux���uփ���gv7���5�=>w&Z��/%�B�H�Yoq�z�7��T��%v���S�k��b6Aw;[F��oL�����������=��%�Rt�gf�՗������<`��*I!C�����t�ַB��O�����lm�<�>���{v����nL�$���4���Z�����u�;��f�=��P�|u��٣o��;�r�^V޹_�0_3,��ChQ�舮��#��J u����Ω~�N�D%���_n��MP27�u���!~1K���A�����!�(�׬�/��.7�~\���[�*_BM�G�;�j] �JR�Cڱ�C��g	���MO��qqzl�Y���ٟ�0��� ���Ά��/y"���p8�?31$     