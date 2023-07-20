--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.accesstoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accesstoken_id_seq OWNER TO quay;

--
-- Name: accesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.accesstoken_id_seq OWNED BY public.accesstoken.id;


--
-- Name: accesstokenkind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.accesstokenkind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accesstokenkind_id_seq OWNER TO quay;

--
-- Name: accesstokenkind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.accesstokenkind_id_seq OWNED BY public.accesstokenkind.id;


--
-- Name: apprblob_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprblob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprblob_id_seq OWNER TO quay;

--
-- Name: apprblob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprblob_id_seq OWNED BY public.apprblob.id;


--
-- Name: apprblobplacement_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprblobplacement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprblobplacement_id_seq OWNER TO quay;

--
-- Name: apprblobplacement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprblobplacement_id_seq OWNED BY public.apprblobplacement.id;


--
-- Name: apprblobplacementlocation_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprblobplacementlocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprblobplacementlocation_id_seq OWNER TO quay;

--
-- Name: apprblobplacementlocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprblobplacementlocation_id_seq OWNED BY public.apprblobplacementlocation.id;


--
-- Name: apprmanifest_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprmanifest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprmanifest_id_seq OWNER TO quay;

--
-- Name: apprmanifest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprmanifest_id_seq OWNED BY public.apprmanifest.id;


--
-- Name: apprmanifestblob_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprmanifestblob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprmanifestblob_id_seq OWNER TO quay;

--
-- Name: apprmanifestblob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprmanifestblob_id_seq OWNED BY public.apprmanifestblob.id;


--
-- Name: apprmanifestlist_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprmanifestlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprmanifestlist_id_seq OWNER TO quay;

--
-- Name: apprmanifestlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprmanifestlist_id_seq OWNED BY public.apprmanifestlist.id;


--
-- Name: apprmanifestlistmanifest_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprmanifestlistmanifest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprmanifestlistmanifest_id_seq OWNER TO quay;

--
-- Name: apprmanifestlistmanifest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprmanifestlistmanifest_id_seq OWNED BY public.apprmanifestlistmanifest.id;


--
-- Name: apprtag_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprtag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprtag_id_seq OWNER TO quay;

--
-- Name: apprtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprtag_id_seq OWNED BY public.apprtag.id;


--
-- Name: apprtagkind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.apprtagkind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apprtagkind_id_seq OWNER TO quay;

--
-- Name: apprtagkind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.apprtagkind_id_seq OWNED BY public.apprtagkind.id;


--
-- Name: appspecificauthtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.appspecificauthtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appspecificauthtoken_id_seq OWNER TO quay;

--
-- Name: appspecificauthtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.appspecificauthtoken_id_seq OWNED BY public.appspecificauthtoken.id;


--
-- Name: blobupload_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.blobupload_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blobupload_id_seq OWNER TO quay;

--
-- Name: blobupload_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.blobupload_id_seq OWNED BY public.blobupload.id;


--
-- Name: buildtriggerservice_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.buildtriggerservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buildtriggerservice_id_seq OWNER TO quay;

--
-- Name: buildtriggerservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.buildtriggerservice_id_seq OWNED BY public.buildtriggerservice.id;


--
-- Name: deletednamespace_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.deletednamespace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deletednamespace_id_seq OWNER TO quay;

--
-- Name: deletednamespace_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.deletednamespace_id_seq OWNED BY public.deletednamespace.id;


--
-- Name: deletedrepository_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.deletedrepository_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deletedrepository_id_seq OWNER TO quay;

--
-- Name: deletedrepository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.deletedrepository_id_seq OWNED BY public.deletedrepository.id;


--
-- Name: derivedstorageforimage_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.derivedstorageforimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.derivedstorageforimage_id_seq OWNER TO quay;

--
-- Name: derivedstorageforimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.derivedstorageforimage_id_seq OWNED BY public.derivedstorageforimage.id;


--
-- Name: disablereason_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.disablereason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disablereason_id_seq OWNER TO quay;

--
-- Name: disablereason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.disablereason_id_seq OWNED BY public.disablereason.id;


--
-- Name: emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emailconfirmation_id_seq OWNER TO quay;

--
-- Name: emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.emailconfirmation_id_seq OWNED BY public.emailconfirmation.id;


--
-- Name: externalnotificationevent_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.externalnotificationevent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.externalnotificationevent_id_seq OWNER TO quay;

--
-- Name: externalnotificationevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.externalnotificationevent_id_seq OWNED BY public.externalnotificationevent.id;


--
-- Name: externalnotificationmethod_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.externalnotificationmethod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.externalnotificationmethod_id_seq OWNER TO quay;

--
-- Name: externalnotificationmethod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.externalnotificationmethod_id_seq OWNED BY public.externalnotificationmethod.id;


--
-- Name: federatedlogin_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.federatedlogin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.federatedlogin_id_seq OWNER TO quay;

--
-- Name: federatedlogin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.federatedlogin_id_seq OWNED BY public.federatedlogin.id;


--
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.image_id_seq OWNER TO quay;

--
-- Name: image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;


--
-- Name: imagestorage_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.imagestorage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagestorage_id_seq OWNER TO quay;

--
-- Name: imagestorage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.imagestorage_id_seq OWNED BY public.imagestorage.id;


--
-- Name: imagestoragelocation_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.imagestoragelocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagestoragelocation_id_seq OWNER TO quay;

--
-- Name: imagestoragelocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.imagestoragelocation_id_seq OWNED BY public.imagestoragelocation.id;


--
-- Name: imagestorageplacement_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.imagestorageplacement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagestorageplacement_id_seq OWNER TO quay;

--
-- Name: imagestorageplacement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.imagestorageplacement_id_seq OWNED BY public.imagestorageplacement.id;


--
-- Name: imagestoragesignature_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.imagestoragesignature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagestoragesignature_id_seq OWNER TO quay;

--
-- Name: imagestoragesignature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.imagestoragesignature_id_seq OWNED BY public.imagestoragesignature.id;


--
-- Name: imagestoragesignaturekind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.imagestoragesignaturekind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagestoragesignaturekind_id_seq OWNER TO quay;

--
-- Name: imagestoragesignaturekind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.imagestoragesignaturekind_id_seq OWNED BY public.imagestoragesignaturekind.id;


--
-- Name: imagestoragetransformation_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.imagestoragetransformation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imagestoragetransformation_id_seq OWNER TO quay;

--
-- Name: imagestoragetransformation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.imagestoragetransformation_id_seq OWNED BY public.imagestoragetransformation.id;


--
-- Name: label_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.label_id_seq OWNER TO quay;

--
-- Name: label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.label_id_seq OWNED BY public.label.id;


--
-- Name: labelsourcetype_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.labelsourcetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.labelsourcetype_id_seq OWNER TO quay;

--
-- Name: labelsourcetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.labelsourcetype_id_seq OWNED BY public.labelsourcetype.id;


--
-- Name: logentry2_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.logentry2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logentry2_id_seq OWNER TO quay;

--
-- Name: logentry2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.logentry2_id_seq OWNED BY public.logentry2.id;


--
-- Name: logentry3_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.logentry3_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logentry3_id_seq OWNER TO quay;

--
-- Name: logentry3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.logentry3_id_seq OWNED BY public.logentry3.id;


--
-- Name: logentry_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.logentry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logentry_id_seq OWNER TO quay;

--
-- Name: logentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.logentry_id_seq OWNED BY public.logentry.id;


--
-- Name: logentrykind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.logentrykind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logentrykind_id_seq OWNER TO quay;

--
-- Name: logentrykind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.logentrykind_id_seq OWNED BY public.logentrykind.id;


--
-- Name: loginservice_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.loginservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loginservice_id_seq OWNER TO quay;

--
-- Name: loginservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.loginservice_id_seq OWNED BY public.loginservice.id;


--
-- Name: manifest_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.manifest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manifest_id_seq OWNER TO quay;

--
-- Name: manifest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.manifest_id_seq OWNED BY public.manifest.id;


--
-- Name: manifestblob_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.manifestblob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manifestblob_id_seq OWNER TO quay;

--
-- Name: manifestblob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.manifestblob_id_seq OWNED BY public.manifestblob.id;


--
-- Name: manifestchild_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.manifestchild_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manifestchild_id_seq OWNER TO quay;

--
-- Name: manifestchild_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.manifestchild_id_seq OWNED BY public.manifestchild.id;


--
-- Name: manifestlabel_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.manifestlabel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manifestlabel_id_seq OWNER TO quay;

--
-- Name: manifestlabel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.manifestlabel_id_seq OWNED BY public.manifestlabel.id;


--
-- Name: manifestlegacyimage_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.manifestlegacyimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manifestlegacyimage_id_seq OWNER TO quay;

--
-- Name: manifestlegacyimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.manifestlegacyimage_id_seq OWNED BY public.manifestlegacyimage.id;


--
-- Name: manifestsecuritystatus_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.manifestsecuritystatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manifestsecuritystatus_id_seq OWNER TO quay;

--
-- Name: manifestsecuritystatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.manifestsecuritystatus_id_seq OWNED BY public.manifestsecuritystatus.id;


--
-- Name: mediatype_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.mediatype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mediatype_id_seq OWNER TO quay;

--
-- Name: mediatype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.mediatype_id_seq OWNED BY public.mediatype.id;


--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO quay;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: namespacegeorestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.namespacegeorestriction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.namespacegeorestriction_id_seq OWNER TO quay;

--
-- Name: namespacegeorestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.namespacegeorestriction_id_seq OWNED BY public.namespacegeorestriction.id;


--
-- Name: notification_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_id_seq OWNER TO quay;

--
-- Name: notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.notification_id_seq OWNED BY public.notification.id;


--
-- Name: notificationkind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.notificationkind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notificationkind_id_seq OWNER TO quay;

--
-- Name: notificationkind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.notificationkind_id_seq OWNED BY public.notificationkind.id;


--
-- Name: oauthaccesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.oauthaccesstoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauthaccesstoken_id_seq OWNER TO quay;

--
-- Name: oauthaccesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.oauthaccesstoken_id_seq OWNED BY public.oauthaccesstoken.id;


--
-- Name: oauthapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.oauthapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauthapplication_id_seq OWNER TO quay;

--
-- Name: oauthapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.oauthapplication_id_seq OWNED BY public.oauthapplication.id;


--
-- Name: oauthauthorizationcode_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.oauthauthorizationcode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauthauthorizationcode_id_seq OWNER TO quay;

--
-- Name: oauthauthorizationcode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.oauthauthorizationcode_id_seq OWNED BY public.oauthauthorizationcode.id;


--
-- Name: permissionprototype_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.permissionprototype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissionprototype_id_seq OWNER TO quay;

--
-- Name: permissionprototype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.permissionprototype_id_seq OWNED BY public.permissionprototype.id;


--
-- Name: proxycacheconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.proxycacheconfig_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proxycacheconfig_id_seq OWNER TO quay;

--
-- Name: proxycacheconfig_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.proxycacheconfig_id_seq OWNED BY public.proxycacheconfig.id;


--
-- Name: quayregion_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quayregion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quayregion_id_seq OWNER TO quay;

--
-- Name: quayregion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quayregion_id_seq OWNED BY public.quayregion.id;


--
-- Name: quayrelease_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quayrelease_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quayrelease_id_seq OWNER TO quay;

--
-- Name: quayrelease_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quayrelease_id_seq OWNED BY public.quayrelease.id;


--
-- Name: quayservice_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quayservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quayservice_id_seq OWNER TO quay;

--
-- Name: quayservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quayservice_id_seq OWNED BY public.quayservice.id;


--
-- Name: queueitem_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.queueitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queueitem_id_seq OWNER TO quay;

--
-- Name: queueitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.queueitem_id_seq OWNED BY public.queueitem.id;


--
-- Name: quotalimits_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quotalimits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotalimits_id_seq OWNER TO quay;

--
-- Name: quotalimits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quotalimits_id_seq OWNED BY public.quotalimits.id;


--
-- Name: quotanamespacesize_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quotanamespacesize_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotanamespacesize_id_seq OWNER TO quay;

--
-- Name: quotanamespacesize_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quotanamespacesize_id_seq OWNED BY public.quotanamespacesize.id;


--
-- Name: quotaregistrysize_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quotaregistrysize_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotaregistrysize_id_seq OWNER TO quay;

--
-- Name: quotaregistrysize_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quotaregistrysize_id_seq OWNED BY public.quotaregistrysize.id;


--
-- Name: quotarepositorysize_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quotarepositorysize_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotarepositorysize_id_seq OWNER TO quay;

--
-- Name: quotarepositorysize_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quotarepositorysize_id_seq OWNED BY public.quotarepositorysize.id;


--
-- Name: quotatype_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.quotatype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotatype_id_seq OWNER TO quay;

--
-- Name: quotatype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.quotatype_id_seq OWNED BY public.quotatype.id;


--
-- Name: redhatsubscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.redhatsubscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.redhatsubscriptions_id_seq OWNER TO quay;

--
-- Name: redhatsubscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.redhatsubscriptions_id_seq OWNED BY public.redhatsubscriptions.id;


--
-- Name: repomirrorconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repomirrorconfig_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repomirrorconfig_id_seq OWNER TO quay;

--
-- Name: repomirrorconfig_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repomirrorconfig_id_seq OWNED BY public.repomirrorconfig.id;


--
-- Name: repomirrorrule_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repomirrorrule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repomirrorrule_id_seq OWNER TO quay;

--
-- Name: repomirrorrule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repomirrorrule_id_seq OWNED BY public.repomirrorrule.id;


--
-- Name: repository_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repository_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repository_id_seq OWNER TO quay;

--
-- Name: repository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repository_id_seq OWNED BY public.repository.id;


--
-- Name: repositoryactioncount_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositoryactioncount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositoryactioncount_id_seq OWNER TO quay;

--
-- Name: repositoryactioncount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositoryactioncount_id_seq OWNED BY public.repositoryactioncount.id;


--
-- Name: repositoryauthorizedemail_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositoryauthorizedemail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositoryauthorizedemail_id_seq OWNER TO quay;

--
-- Name: repositoryauthorizedemail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositoryauthorizedemail_id_seq OWNED BY public.repositoryauthorizedemail.id;


--
-- Name: repositorybuild_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorybuild_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorybuild_id_seq OWNER TO quay;

--
-- Name: repositorybuild_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorybuild_id_seq OWNED BY public.repositorybuild.id;


--
-- Name: repositorybuildtrigger_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorybuildtrigger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorybuildtrigger_id_seq OWNER TO quay;

--
-- Name: repositorybuildtrigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorybuildtrigger_id_seq OWNED BY public.repositorybuildtrigger.id;


--
-- Name: repositorykind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorykind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorykind_id_seq OWNER TO quay;

--
-- Name: repositorykind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorykind_id_seq OWNED BY public.repositorykind.id;


--
-- Name: repositorynotification_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorynotification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorynotification_id_seq OWNER TO quay;

--
-- Name: repositorynotification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorynotification_id_seq OWNED BY public.repositorynotification.id;


--
-- Name: repositorypermission_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorypermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorypermission_id_seq OWNER TO quay;

--
-- Name: repositorypermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorypermission_id_seq OWNED BY public.repositorypermission.id;


--
-- Name: repositorysearchscore_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorysearchscore_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorysearchscore_id_seq OWNER TO quay;

--
-- Name: repositorysearchscore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorysearchscore_id_seq OWNED BY public.repositorysearchscore.id;


--
-- Name: repositorysize_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorysize_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorysize_id_seq OWNER TO quay;

--
-- Name: repositorysize_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorysize_id_seq OWNED BY public.repositorysize.id;


--
-- Name: repositorytag_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.repositorytag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repositorytag_id_seq OWNER TO quay;

--
-- Name: repositorytag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.repositorytag_id_seq OWNED BY public.repositorytag.id;


--
-- Name: robotaccountmetadata_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.robotaccountmetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robotaccountmetadata_id_seq OWNER TO quay;

--
-- Name: robotaccountmetadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.robotaccountmetadata_id_seq OWNED BY public.robotaccountmetadata.id;


--
-- Name: robotaccounttoken_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.robotaccounttoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robotaccounttoken_id_seq OWNER TO quay;

--
-- Name: robotaccounttoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.robotaccounttoken_id_seq OWNED BY public.robotaccounttoken.id;


--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO quay;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: servicekey_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.servicekey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicekey_id_seq OWNER TO quay;

--
-- Name: servicekey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.servicekey_id_seq OWNED BY public.servicekey.id;


--
-- Name: servicekeyapproval_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.servicekeyapproval_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicekeyapproval_id_seq OWNER TO quay;

--
-- Name: servicekeyapproval_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.servicekeyapproval_id_seq OWNED BY public.servicekeyapproval.id;


--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO quay;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.id;


--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_id_seq OWNER TO quay;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;


--
-- Name: tagkind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tagkind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagkind_id_seq OWNER TO quay;

--
-- Name: tagkind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tagkind_id_seq OWNED BY public.tagkind.id;


--
-- Name: tagmanifest_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tagmanifest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagmanifest_id_seq OWNER TO quay;

--
-- Name: tagmanifest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tagmanifest_id_seq OWNED BY public.tagmanifest.id;


--
-- Name: tagmanifestlabel_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tagmanifestlabel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagmanifestlabel_id_seq OWNER TO quay;

--
-- Name: tagmanifestlabel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tagmanifestlabel_id_seq OWNED BY public.tagmanifestlabel.id;


--
-- Name: tagmanifestlabelmap_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tagmanifestlabelmap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagmanifestlabelmap_id_seq OWNER TO quay;

--
-- Name: tagmanifestlabelmap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tagmanifestlabelmap_id_seq OWNED BY public.tagmanifestlabelmap.id;


--
-- Name: tagmanifesttomanifest_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tagmanifesttomanifest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagmanifesttomanifest_id_seq OWNER TO quay;

--
-- Name: tagmanifesttomanifest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tagmanifesttomanifest_id_seq OWNED BY public.tagmanifesttomanifest.id;


--
-- Name: tagtorepositorytag_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.tagtorepositorytag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagtorepositorytag_id_seq OWNER TO quay;

--
-- Name: tagtorepositorytag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.tagtorepositorytag_id_seq OWNED BY public.tagtorepositorytag.id;


--
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO quay;

--
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;


--
-- Name: teammember_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.teammember_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teammember_id_seq OWNER TO quay;

--
-- Name: teammember_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.teammember_id_seq OWNED BY public.teammember.id;


--
-- Name: teammemberinvite_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.teammemberinvite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teammemberinvite_id_seq OWNER TO quay;

--
-- Name: teammemberinvite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.teammemberinvite_id_seq OWNED BY public.teammemberinvite.id;


--
-- Name: teamrole_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.teamrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teamrole_id_seq OWNER TO quay;

--
-- Name: teamrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.teamrole_id_seq OWNED BY public.teamrole.id;


--
-- Name: teamsync_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.teamsync_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teamsync_id_seq OWNER TO quay;

--
-- Name: teamsync_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.teamsync_id_seq OWNED BY public.teamsync.id;


--
-- Name: torrentinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.torrentinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.torrentinfo_id_seq OWNER TO quay;

--
-- Name: torrentinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.torrentinfo_id_seq OWNED BY public.torrentinfo.id;


--
-- Name: uploadedblob_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.uploadedblob_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uploadedblob_id_seq OWNER TO quay;

--
-- Name: uploadedblob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.uploadedblob_id_seq OWNED BY public.uploadedblob.id;


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO quay;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: userorganizationquota_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.userorganizationquota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userorganizationquota_id_seq OWNER TO quay;

--
-- Name: userorganizationquota_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.userorganizationquota_id_seq OWNED BY public.userorganizationquota.id;


--
-- Name: userprompt_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.userprompt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userprompt_id_seq OWNER TO quay;

--
-- Name: userprompt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.userprompt_id_seq OWNED BY public.userprompt.id;


--
-- Name: userpromptkind_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.userpromptkind_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userpromptkind_id_seq OWNER TO quay;

--
-- Name: userpromptkind_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.userpromptkind_id_seq OWNED BY public.userpromptkind.id;


--
-- Name: userregion_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.userregion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userregion_id_seq OWNER TO quay;

--
-- Name: userregion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.userregion_id_seq OWNED BY public.userregion.id;


--
-- Name: visibility_id_seq; Type: SEQUENCE; Schema: public; Owner: quay
--

CREATE SEQUENCE public.visibility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visibility_id_seq OWNER TO quay;

--
-- Name: visibility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quay
--

ALTER SEQUENCE public.visibility_id_seq OWNED BY public.visibility.id;


--
-- Name: accesstoken id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstoken ALTER COLUMN id SET DEFAULT nextval('public.accesstoken_id_seq'::regclass);


--
-- Name: accesstokenkind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstokenkind ALTER COLUMN id SET DEFAULT nextval('public.accesstokenkind_id_seq'::regclass);


--
-- Name: apprblob id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblob ALTER COLUMN id SET DEFAULT nextval('public.apprblob_id_seq'::regclass);


--
-- Name: apprblobplacement id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblobplacement ALTER COLUMN id SET DEFAULT nextval('public.apprblobplacement_id_seq'::regclass);


--
-- Name: apprblobplacementlocation id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblobplacementlocation ALTER COLUMN id SET DEFAULT nextval('public.apprblobplacementlocation_id_seq'::regclass);


--
-- Name: apprmanifest id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifest ALTER COLUMN id SET DEFAULT nextval('public.apprmanifest_id_seq'::regclass);


--
-- Name: apprmanifestblob id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestblob ALTER COLUMN id SET DEFAULT nextval('public.apprmanifestblob_id_seq'::regclass);


--
-- Name: apprmanifestlist id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlist ALTER COLUMN id SET DEFAULT nextval('public.apprmanifestlist_id_seq'::regclass);


--
-- Name: apprmanifestlistmanifest id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlistmanifest ALTER COLUMN id SET DEFAULT nextval('public.apprmanifestlistmanifest_id_seq'::regclass);


--
-- Name: apprtag id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtag ALTER COLUMN id SET DEFAULT nextval('public.apprtag_id_seq'::regclass);


--
-- Name: apprtagkind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtagkind ALTER COLUMN id SET DEFAULT nextval('public.apprtagkind_id_seq'::regclass);


--
-- Name: appspecificauthtoken id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.appspecificauthtoken ALTER COLUMN id SET DEFAULT nextval('public.appspecificauthtoken_id_seq'::regclass);


--
-- Name: blobupload id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.blobupload ALTER COLUMN id SET DEFAULT nextval('public.blobupload_id_seq'::regclass);


--
-- Name: buildtriggerservice id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.buildtriggerservice ALTER COLUMN id SET DEFAULT nextval('public.buildtriggerservice_id_seq'::regclass);


--
-- Name: deletednamespace id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.deletednamespace ALTER COLUMN id SET DEFAULT nextval('public.deletednamespace_id_seq'::regclass);


--
-- Name: deletedrepository id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.deletedrepository ALTER COLUMN id SET DEFAULT nextval('public.deletedrepository_id_seq'::regclass);


--
-- Name: derivedstorageforimage id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.derivedstorageforimage ALTER COLUMN id SET DEFAULT nextval('public.derivedstorageforimage_id_seq'::regclass);


--
-- Name: disablereason id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.disablereason ALTER COLUMN id SET DEFAULT nextval('public.disablereason_id_seq'::regclass);


--
-- Name: emailconfirmation id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.emailconfirmation_id_seq'::regclass);


--
-- Name: externalnotificationevent id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.externalnotificationevent ALTER COLUMN id SET DEFAULT nextval('public.externalnotificationevent_id_seq'::regclass);


--
-- Name: externalnotificationmethod id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.externalnotificationmethod ALTER COLUMN id SET DEFAULT nextval('public.externalnotificationmethod_id_seq'::regclass);


--
-- Name: federatedlogin id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.federatedlogin ALTER COLUMN id SET DEFAULT nextval('public.federatedlogin_id_seq'::regclass);


--
-- Name: image id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);


--
-- Name: imagestorage id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestorage ALTER COLUMN id SET DEFAULT nextval('public.imagestorage_id_seq'::regclass);


--
-- Name: imagestoragelocation id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragelocation ALTER COLUMN id SET DEFAULT nextval('public.imagestoragelocation_id_seq'::regclass);


--
-- Name: imagestorageplacement id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestorageplacement ALTER COLUMN id SET DEFAULT nextval('public.imagestorageplacement_id_seq'::regclass);


--
-- Name: imagestoragesignature id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragesignature ALTER COLUMN id SET DEFAULT nextval('public.imagestoragesignature_id_seq'::regclass);


--
-- Name: imagestoragesignaturekind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragesignaturekind ALTER COLUMN id SET DEFAULT nextval('public.imagestoragesignaturekind_id_seq'::regclass);


--
-- Name: imagestoragetransformation id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragetransformation ALTER COLUMN id SET DEFAULT nextval('public.imagestoragetransformation_id_seq'::regclass);


--
-- Name: label id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.label ALTER COLUMN id SET DEFAULT nextval('public.label_id_seq'::regclass);


--
-- Name: labelsourcetype id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.labelsourcetype ALTER COLUMN id SET DEFAULT nextval('public.labelsourcetype_id_seq'::regclass);


--
-- Name: logentry id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry ALTER COLUMN id SET DEFAULT nextval('public.logentry_id_seq'::regclass);


--
-- Name: logentry2 id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry2 ALTER COLUMN id SET DEFAULT nextval('public.logentry2_id_seq'::regclass);


--
-- Name: logentry3 id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry3 ALTER COLUMN id SET DEFAULT nextval('public.logentry3_id_seq'::regclass);


--
-- Name: logentrykind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentrykind ALTER COLUMN id SET DEFAULT nextval('public.logentrykind_id_seq'::regclass);


--
-- Name: loginservice id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.loginservice ALTER COLUMN id SET DEFAULT nextval('public.loginservice_id_seq'::regclass);


--
-- Name: manifest id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifest ALTER COLUMN id SET DEFAULT nextval('public.manifest_id_seq'::regclass);


--
-- Name: manifestblob id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestblob ALTER COLUMN id SET DEFAULT nextval('public.manifestblob_id_seq'::regclass);


--
-- Name: manifestchild id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestchild ALTER COLUMN id SET DEFAULT nextval('public.manifestchild_id_seq'::regclass);


--
-- Name: manifestlabel id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlabel ALTER COLUMN id SET DEFAULT nextval('public.manifestlabel_id_seq'::regclass);


--
-- Name: manifestlegacyimage id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlegacyimage ALTER COLUMN id SET DEFAULT nextval('public.manifestlegacyimage_id_seq'::regclass);


--
-- Name: manifestsecuritystatus id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestsecuritystatus ALTER COLUMN id SET DEFAULT nextval('public.manifestsecuritystatus_id_seq'::regclass);


--
-- Name: mediatype id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.mediatype ALTER COLUMN id SET DEFAULT nextval('public.mediatype_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: namespacegeorestriction id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.namespacegeorestriction ALTER COLUMN id SET DEFAULT nextval('public.namespacegeorestriction_id_seq'::regclass);


--
-- Name: notification id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.notification ALTER COLUMN id SET DEFAULT nextval('public.notification_id_seq'::regclass);


--
-- Name: notificationkind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.notificationkind ALTER COLUMN id SET DEFAULT nextval('public.notificationkind_id_seq'::regclass);


--
-- Name: oauthaccesstoken id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthaccesstoken ALTER COLUMN id SET DEFAULT nextval('public.oauthaccesstoken_id_seq'::regclass);


--
-- Name: oauthapplication id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthapplication ALTER COLUMN id SET DEFAULT nextval('public.oauthapplication_id_seq'::regclass);


--
-- Name: oauthauthorizationcode id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthauthorizationcode ALTER COLUMN id SET DEFAULT nextval('public.oauthauthorizationcode_id_seq'::regclass);


--
-- Name: permissionprototype id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype ALTER COLUMN id SET DEFAULT nextval('public.permissionprototype_id_seq'::regclass);


--
-- Name: proxycacheconfig id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.proxycacheconfig ALTER COLUMN id SET DEFAULT nextval('public.proxycacheconfig_id_seq'::regclass);


--
-- Name: quayregion id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayregion ALTER COLUMN id SET DEFAULT nextval('public.quayregion_id_seq'::regclass);


--
-- Name: quayrelease id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayrelease ALTER COLUMN id SET DEFAULT nextval('public.quayrelease_id_seq'::regclass);


--
-- Name: quayservice id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayservice ALTER COLUMN id SET DEFAULT nextval('public.quayservice_id_seq'::regclass);


--
-- Name: queueitem id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.queueitem ALTER COLUMN id SET DEFAULT nextval('public.queueitem_id_seq'::regclass);


--
-- Name: quotalimits id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotalimits ALTER COLUMN id SET DEFAULT nextval('public.quotalimits_id_seq'::regclass);


--
-- Name: quotanamespacesize id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotanamespacesize ALTER COLUMN id SET DEFAULT nextval('public.quotanamespacesize_id_seq'::regclass);


--
-- Name: quotaregistrysize id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotaregistrysize ALTER COLUMN id SET DEFAULT nextval('public.quotaregistrysize_id_seq'::regclass);


--
-- Name: quotarepositorysize id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotarepositorysize ALTER COLUMN id SET DEFAULT nextval('public.quotarepositorysize_id_seq'::regclass);


--
-- Name: quotatype id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotatype ALTER COLUMN id SET DEFAULT nextval('public.quotatype_id_seq'::regclass);


--
-- Name: redhatsubscriptions id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.redhatsubscriptions ALTER COLUMN id SET DEFAULT nextval('public.redhatsubscriptions_id_seq'::regclass);


--
-- Name: repomirrorconfig id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorconfig ALTER COLUMN id SET DEFAULT nextval('public.repomirrorconfig_id_seq'::regclass);


--
-- Name: repomirrorrule id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorrule ALTER COLUMN id SET DEFAULT nextval('public.repomirrorrule_id_seq'::regclass);


--
-- Name: repository id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repository ALTER COLUMN id SET DEFAULT nextval('public.repository_id_seq'::regclass);


--
-- Name: repositoryactioncount id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositoryactioncount ALTER COLUMN id SET DEFAULT nextval('public.repositoryactioncount_id_seq'::regclass);


--
-- Name: repositoryauthorizedemail id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositoryauthorizedemail ALTER COLUMN id SET DEFAULT nextval('public.repositoryauthorizedemail_id_seq'::regclass);


--
-- Name: repositorybuild id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuild ALTER COLUMN id SET DEFAULT nextval('public.repositorybuild_id_seq'::regclass);


--
-- Name: repositorybuildtrigger id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger ALTER COLUMN id SET DEFAULT nextval('public.repositorybuildtrigger_id_seq'::regclass);


--
-- Name: repositorykind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorykind ALTER COLUMN id SET DEFAULT nextval('public.repositorykind_id_seq'::regclass);


--
-- Name: repositorynotification id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorynotification ALTER COLUMN id SET DEFAULT nextval('public.repositorynotification_id_seq'::regclass);


--
-- Name: repositorypermission id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorypermission ALTER COLUMN id SET DEFAULT nextval('public.repositorypermission_id_seq'::regclass);


--
-- Name: repositorysearchscore id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorysearchscore ALTER COLUMN id SET DEFAULT nextval('public.repositorysearchscore_id_seq'::regclass);


--
-- Name: repositorysize id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorysize ALTER COLUMN id SET DEFAULT nextval('public.repositorysize_id_seq'::regclass);


--
-- Name: repositorytag id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorytag ALTER COLUMN id SET DEFAULT nextval('public.repositorytag_id_seq'::regclass);


--
-- Name: robotaccountmetadata id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.robotaccountmetadata ALTER COLUMN id SET DEFAULT nextval('public.robotaccountmetadata_id_seq'::regclass);


--
-- Name: robotaccounttoken id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.robotaccounttoken ALTER COLUMN id SET DEFAULT nextval('public.robotaccounttoken_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: servicekey id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.servicekey ALTER COLUMN id SET DEFAULT nextval('public.servicekey_id_seq'::regclass);


--
-- Name: servicekeyapproval id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.servicekeyapproval ALTER COLUMN id SET DEFAULT nextval('public.servicekeyapproval_id_seq'::regclass);


--
-- Name: star id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.star ALTER COLUMN id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: tag id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);


--
-- Name: tagkind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagkind ALTER COLUMN id SET DEFAULT nextval('public.tagkind_id_seq'::regclass);


--
-- Name: tagmanifest id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifest ALTER COLUMN id SET DEFAULT nextval('public.tagmanifest_id_seq'::regclass);


--
-- Name: tagmanifestlabel id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabel ALTER COLUMN id SET DEFAULT nextval('public.tagmanifestlabel_id_seq'::regclass);


--
-- Name: tagmanifestlabelmap id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap ALTER COLUMN id SET DEFAULT nextval('public.tagmanifestlabelmap_id_seq'::regclass);


--
-- Name: tagmanifesttomanifest id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifesttomanifest ALTER COLUMN id SET DEFAULT nextval('public.tagmanifesttomanifest_id_seq'::regclass);


--
-- Name: tagtorepositorytag id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagtorepositorytag ALTER COLUMN id SET DEFAULT nextval('public.tagtorepositorytag_id_seq'::regclass);


--
-- Name: team id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);


--
-- Name: teammember id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammember ALTER COLUMN id SET DEFAULT nextval('public.teammember_id_seq'::regclass);


--
-- Name: teammemberinvite id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammemberinvite ALTER COLUMN id SET DEFAULT nextval('public.teammemberinvite_id_seq'::regclass);


--
-- Name: teamrole id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teamrole ALTER COLUMN id SET DEFAULT nextval('public.teamrole_id_seq'::regclass);


--
-- Name: teamsync id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teamsync ALTER COLUMN id SET DEFAULT nextval('public.teamsync_id_seq'::regclass);


--
-- Name: torrentinfo id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.torrentinfo ALTER COLUMN id SET DEFAULT nextval('public.torrentinfo_id_seq'::regclass);


--
-- Name: uploadedblob id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.uploadedblob ALTER COLUMN id SET DEFAULT nextval('public.uploadedblob_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: userorganizationquota id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userorganizationquota ALTER COLUMN id SET DEFAULT nextval('public.userorganizationquota_id_seq'::regclass);


--
-- Name: userprompt id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userprompt ALTER COLUMN id SET DEFAULT nextval('public.userprompt_id_seq'::regclass);


--
-- Name: userpromptkind id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userpromptkind ALTER COLUMN id SET DEFAULT nextval('public.userpromptkind_id_seq'::regclass);


--
-- Name: userregion id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userregion ALTER COLUMN id SET DEFAULT nextval('public.userregion_id_seq'::regclass);


--
-- Name: visibility id; Type: DEFAULT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.visibility ALTER COLUMN id SET DEFAULT nextval('public.visibility_id_seq'::regclass);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: accesstoken pk_accesstoken; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstoken
    ADD CONSTRAINT pk_accesstoken PRIMARY KEY (id);


--
-- Name: accesstokenkind pk_accesstokenkind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstokenkind
    ADD CONSTRAINT pk_accesstokenkind PRIMARY KEY (id);


--
-- Name: apprblob pk_apprblob; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblob
    ADD CONSTRAINT pk_apprblob PRIMARY KEY (id);


--
-- Name: apprblobplacement pk_apprblobplacement; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblobplacement
    ADD CONSTRAINT pk_apprblobplacement PRIMARY KEY (id);


--
-- Name: apprblobplacementlocation pk_apprblobplacementlocation; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblobplacementlocation
    ADD CONSTRAINT pk_apprblobplacementlocation PRIMARY KEY (id);


--
-- Name: apprmanifest pk_apprmanifest; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifest
    ADD CONSTRAINT pk_apprmanifest PRIMARY KEY (id);


--
-- Name: apprmanifestblob pk_apprmanifestblob; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestblob
    ADD CONSTRAINT pk_apprmanifestblob PRIMARY KEY (id);


--
-- Name: apprmanifestlist pk_apprmanifestlist; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlist
    ADD CONSTRAINT pk_apprmanifestlist PRIMARY KEY (id);


--
-- Name: apprmanifestlistmanifest pk_apprmanifestlistmanifest; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlistmanifest
    ADD CONSTRAINT pk_apprmanifestlistmanifest PRIMARY KEY (id);


--
-- Name: apprtag pk_apprtag; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtag
    ADD CONSTRAINT pk_apprtag PRIMARY KEY (id);


--
-- Name: apprtagkind pk_apprtagkind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtagkind
    ADD CONSTRAINT pk_apprtagkind PRIMARY KEY (id);


--
-- Name: appspecificauthtoken pk_appspecificauthtoken; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.appspecificauthtoken
    ADD CONSTRAINT pk_appspecificauthtoken PRIMARY KEY (id);


--
-- Name: blobupload pk_blobupload; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.blobupload
    ADD CONSTRAINT pk_blobupload PRIMARY KEY (id);


--
-- Name: buildtriggerservice pk_buildtriggerservice; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.buildtriggerservice
    ADD CONSTRAINT pk_buildtriggerservice PRIMARY KEY (id);


--
-- Name: deletednamespace pk_deletednamespace; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.deletednamespace
    ADD CONSTRAINT pk_deletednamespace PRIMARY KEY (id);


--
-- Name: deletedrepository pk_deletedrepository; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.deletedrepository
    ADD CONSTRAINT pk_deletedrepository PRIMARY KEY (id);


--
-- Name: derivedstorageforimage pk_derivedstorageforimage; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.derivedstorageforimage
    ADD CONSTRAINT pk_derivedstorageforimage PRIMARY KEY (id);


--
-- Name: disablereason pk_disablereason; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.disablereason
    ADD CONSTRAINT pk_disablereason PRIMARY KEY (id);


--
-- Name: emailconfirmation pk_emailconfirmation; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.emailconfirmation
    ADD CONSTRAINT pk_emailconfirmation PRIMARY KEY (id);


--
-- Name: externalnotificationevent pk_externalnotificationevent; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.externalnotificationevent
    ADD CONSTRAINT pk_externalnotificationevent PRIMARY KEY (id);


--
-- Name: externalnotificationmethod pk_externalnotificationmethod; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.externalnotificationmethod
    ADD CONSTRAINT pk_externalnotificationmethod PRIMARY KEY (id);


--
-- Name: federatedlogin pk_federatedlogin; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.federatedlogin
    ADD CONSTRAINT pk_federatedlogin PRIMARY KEY (id);


--
-- Name: image pk_image; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT pk_image PRIMARY KEY (id);


--
-- Name: imagestorage pk_imagestorage; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestorage
    ADD CONSTRAINT pk_imagestorage PRIMARY KEY (id);


--
-- Name: imagestoragelocation pk_imagestoragelocation; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragelocation
    ADD CONSTRAINT pk_imagestoragelocation PRIMARY KEY (id);


--
-- Name: imagestorageplacement pk_imagestorageplacement; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestorageplacement
    ADD CONSTRAINT pk_imagestorageplacement PRIMARY KEY (id);


--
-- Name: imagestoragesignature pk_imagestoragesignature; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragesignature
    ADD CONSTRAINT pk_imagestoragesignature PRIMARY KEY (id);


--
-- Name: imagestoragesignaturekind pk_imagestoragesignaturekind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragesignaturekind
    ADD CONSTRAINT pk_imagestoragesignaturekind PRIMARY KEY (id);


--
-- Name: imagestoragetransformation pk_imagestoragetransformation; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragetransformation
    ADD CONSTRAINT pk_imagestoragetransformation PRIMARY KEY (id);


--
-- Name: label pk_label; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT pk_label PRIMARY KEY (id);


--
-- Name: labelsourcetype pk_labelsourcetype; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.labelsourcetype
    ADD CONSTRAINT pk_labelsourcetype PRIMARY KEY (id);


--
-- Name: logentry pk_logentry; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry
    ADD CONSTRAINT pk_logentry PRIMARY KEY (id);


--
-- Name: logentry2 pk_logentry2; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry2
    ADD CONSTRAINT pk_logentry2 PRIMARY KEY (id);


--
-- Name: logentry3 pk_logentry3; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry3
    ADD CONSTRAINT pk_logentry3 PRIMARY KEY (id);


--
-- Name: logentrykind pk_logentrykind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentrykind
    ADD CONSTRAINT pk_logentrykind PRIMARY KEY (id);


--
-- Name: loginservice pk_loginservice; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.loginservice
    ADD CONSTRAINT pk_loginservice PRIMARY KEY (id);


--
-- Name: manifest pk_manifest; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifest
    ADD CONSTRAINT pk_manifest PRIMARY KEY (id);


--
-- Name: manifestblob pk_manifestblob; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestblob
    ADD CONSTRAINT pk_manifestblob PRIMARY KEY (id);


--
-- Name: manifestchild pk_manifestchild; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestchild
    ADD CONSTRAINT pk_manifestchild PRIMARY KEY (id);


--
-- Name: manifestlabel pk_manifestlabel; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlabel
    ADD CONSTRAINT pk_manifestlabel PRIMARY KEY (id);


--
-- Name: manifestlegacyimage pk_manifestlegacyimage; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlegacyimage
    ADD CONSTRAINT pk_manifestlegacyimage PRIMARY KEY (id);


--
-- Name: manifestsecuritystatus pk_manifestsecuritystatus; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestsecuritystatus
    ADD CONSTRAINT pk_manifestsecuritystatus PRIMARY KEY (id);


--
-- Name: mediatype pk_mediatype; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.mediatype
    ADD CONSTRAINT pk_mediatype PRIMARY KEY (id);


--
-- Name: messages pk_messages; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT pk_messages PRIMARY KEY (id);


--
-- Name: namespacegeorestriction pk_namespacegeorestriction; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.namespacegeorestriction
    ADD CONSTRAINT pk_namespacegeorestriction PRIMARY KEY (id);


--
-- Name: notification pk_notification; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT pk_notification PRIMARY KEY (id);


--
-- Name: notificationkind pk_notificationkind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.notificationkind
    ADD CONSTRAINT pk_notificationkind PRIMARY KEY (id);


--
-- Name: oauthaccesstoken pk_oauthaccesstoken; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthaccesstoken
    ADD CONSTRAINT pk_oauthaccesstoken PRIMARY KEY (id);


--
-- Name: oauthapplication pk_oauthapplication; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthapplication
    ADD CONSTRAINT pk_oauthapplication PRIMARY KEY (id);


--
-- Name: oauthauthorizationcode pk_oauthauthorizationcode; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthauthorizationcode
    ADD CONSTRAINT pk_oauthauthorizationcode PRIMARY KEY (id);


--
-- Name: permissionprototype pk_permissionprototype; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype
    ADD CONSTRAINT pk_permissionprototype PRIMARY KEY (id);


--
-- Name: proxycacheconfig pk_proxy_cache_config; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.proxycacheconfig
    ADD CONSTRAINT pk_proxy_cache_config PRIMARY KEY (id);


--
-- Name: quayregion pk_quayregion; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayregion
    ADD CONSTRAINT pk_quayregion PRIMARY KEY (id);


--
-- Name: quayrelease pk_quayrelease; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayrelease
    ADD CONSTRAINT pk_quayrelease PRIMARY KEY (id);


--
-- Name: quayservice pk_quayservice; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayservice
    ADD CONSTRAINT pk_quayservice PRIMARY KEY (id);


--
-- Name: queueitem pk_queueitem; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.queueitem
    ADD CONSTRAINT pk_queueitem PRIMARY KEY (id);


--
-- Name: quotalimits pk_quotalimits; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotalimits
    ADD CONSTRAINT pk_quotalimits PRIMARY KEY (id);


--
-- Name: quotanamespacesize pk_quotanamespacesizeid; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotanamespacesize
    ADD CONSTRAINT pk_quotanamespacesizeid PRIMARY KEY (id);


--
-- Name: quotaregistrysize pk_quotaregistrysizeid; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotaregistrysize
    ADD CONSTRAINT pk_quotaregistrysizeid PRIMARY KEY (id);


--
-- Name: quotarepositorysize pk_quotarepositorysizeid; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotarepositorysize
    ADD CONSTRAINT pk_quotarepositorysizeid PRIMARY KEY (id);


--
-- Name: quotatype pk_quotatype; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotatype
    ADD CONSTRAINT pk_quotatype PRIMARY KEY (id);


--
-- Name: redhatsubscriptions pk_redhatsubscriptions; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.redhatsubscriptions
    ADD CONSTRAINT pk_redhatsubscriptions PRIMARY KEY (id);


--
-- Name: repomirrorconfig pk_repomirrorconfig; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorconfig
    ADD CONSTRAINT pk_repomirrorconfig PRIMARY KEY (id);


--
-- Name: repomirrorrule pk_repomirrorrule; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorrule
    ADD CONSTRAINT pk_repomirrorrule PRIMARY KEY (id);


--
-- Name: repository pk_repository; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repository
    ADD CONSTRAINT pk_repository PRIMARY KEY (id);


--
-- Name: repositoryactioncount pk_repositoryactioncount; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositoryactioncount
    ADD CONSTRAINT pk_repositoryactioncount PRIMARY KEY (id);


--
-- Name: repositoryauthorizedemail pk_repositoryauthorizedemail; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositoryauthorizedemail
    ADD CONSTRAINT pk_repositoryauthorizedemail PRIMARY KEY (id);


--
-- Name: repositorybuild pk_repositorybuild; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuild
    ADD CONSTRAINT pk_repositorybuild PRIMARY KEY (id);


--
-- Name: repositorybuildtrigger pk_repositorybuildtrigger; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT pk_repositorybuildtrigger PRIMARY KEY (id);


--
-- Name: repositorykind pk_repositorykind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorykind
    ADD CONSTRAINT pk_repositorykind PRIMARY KEY (id);


--
-- Name: repositorynotification pk_repositorynotification; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorynotification
    ADD CONSTRAINT pk_repositorynotification PRIMARY KEY (id);


--
-- Name: repositorypermission pk_repositorypermission; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorypermission
    ADD CONSTRAINT pk_repositorypermission PRIMARY KEY (id);


--
-- Name: repositorysearchscore pk_repositorysearchscore; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorysearchscore
    ADD CONSTRAINT pk_repositorysearchscore PRIMARY KEY (id);


--
-- Name: repositorysize pk_repositorysizeid; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorysize
    ADD CONSTRAINT pk_repositorysizeid PRIMARY KEY (id);


--
-- Name: repositorytag pk_repositorytag; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorytag
    ADD CONSTRAINT pk_repositorytag PRIMARY KEY (id);


--
-- Name: robotaccountmetadata pk_robotaccountmetadata; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.robotaccountmetadata
    ADD CONSTRAINT pk_robotaccountmetadata PRIMARY KEY (id);


--
-- Name: robotaccounttoken pk_robotaccounttoken; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.robotaccounttoken
    ADD CONSTRAINT pk_robotaccounttoken PRIMARY KEY (id);


--
-- Name: role pk_role; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT pk_role PRIMARY KEY (id);


--
-- Name: servicekey pk_servicekey; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.servicekey
    ADD CONSTRAINT pk_servicekey PRIMARY KEY (id);


--
-- Name: servicekeyapproval pk_servicekeyapproval; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.servicekeyapproval
    ADD CONSTRAINT pk_servicekeyapproval PRIMARY KEY (id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (id);


--
-- Name: tag pk_tag; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT pk_tag PRIMARY KEY (id);


--
-- Name: tagkind pk_tagkind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagkind
    ADD CONSTRAINT pk_tagkind PRIMARY KEY (id);


--
-- Name: tagmanifest pk_tagmanifest; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifest
    ADD CONSTRAINT pk_tagmanifest PRIMARY KEY (id);


--
-- Name: tagmanifestlabel pk_tagmanifestlabel; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabel
    ADD CONSTRAINT pk_tagmanifestlabel PRIMARY KEY (id);


--
-- Name: tagmanifestlabelmap pk_tagmanifestlabelmap; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap
    ADD CONSTRAINT pk_tagmanifestlabelmap PRIMARY KEY (id);


--
-- Name: tagmanifesttomanifest pk_tagmanifesttomanifest; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifesttomanifest
    ADD CONSTRAINT pk_tagmanifesttomanifest PRIMARY KEY (id);


--
-- Name: tagtorepositorytag pk_tagtorepositorytag; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagtorepositorytag
    ADD CONSTRAINT pk_tagtorepositorytag PRIMARY KEY (id);


--
-- Name: team pk_team; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT pk_team PRIMARY KEY (id);


--
-- Name: teammember pk_teammember; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammember
    ADD CONSTRAINT pk_teammember PRIMARY KEY (id);


--
-- Name: teammemberinvite pk_teammemberinvite; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammemberinvite
    ADD CONSTRAINT pk_teammemberinvite PRIMARY KEY (id);


--
-- Name: teamrole pk_teamrole; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teamrole
    ADD CONSTRAINT pk_teamrole PRIMARY KEY (id);


--
-- Name: teamsync pk_teamsync; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teamsync
    ADD CONSTRAINT pk_teamsync PRIMARY KEY (id);


--
-- Name: torrentinfo pk_torrentinfo; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.torrentinfo
    ADD CONSTRAINT pk_torrentinfo PRIMARY KEY (id);


--
-- Name: uploadedblob pk_uploadedblob; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.uploadedblob
    ADD CONSTRAINT pk_uploadedblob PRIMARY KEY (id);


--
-- Name: user pk_user; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT pk_user PRIMARY KEY (id);


--
-- Name: userorganizationquota pk_userorganizationquota; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userorganizationquota
    ADD CONSTRAINT pk_userorganizationquota PRIMARY KEY (id);


--
-- Name: userprompt pk_userprompt; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userprompt
    ADD CONSTRAINT pk_userprompt PRIMARY KEY (id);


--
-- Name: userpromptkind pk_userpromptkind; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userpromptkind
    ADD CONSTRAINT pk_userpromptkind PRIMARY KEY (id);


--
-- Name: userregion pk_userregion; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userregion
    ADD CONSTRAINT pk_userregion PRIMARY KEY (id);


--
-- Name: visibility pk_visibility; Type: CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.visibility
    ADD CONSTRAINT pk_visibility PRIMARY KEY (id);


--
-- Name: accesstoken_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX accesstoken_kind_id ON public.accesstoken USING btree (kind_id);


--
-- Name: accesstoken_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX accesstoken_repository_id ON public.accesstoken USING btree (repository_id);


--
-- Name: accesstoken_role_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX accesstoken_role_id ON public.accesstoken USING btree (role_id);


--
-- Name: accesstoken_token_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX accesstoken_token_name ON public.accesstoken USING btree (token_name);


--
-- Name: accesstokenkind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX accesstokenkind_name ON public.accesstokenkind USING btree (name);


--
-- Name: apprblob_digest; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprblob_digest ON public.apprblob USING btree (digest);


--
-- Name: apprblob_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprblob_media_type_id ON public.apprblob USING btree (media_type_id);


--
-- Name: apprblobplacement_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprblobplacement_blob_id ON public.apprblobplacement USING btree (blob_id);


--
-- Name: apprblobplacement_blob_id_location_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprblobplacement_blob_id_location_id ON public.apprblobplacement USING btree (blob_id, location_id);


--
-- Name: apprblobplacement_location_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprblobplacement_location_id ON public.apprblobplacement USING btree (location_id);


--
-- Name: apprblobplacementlocation_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprblobplacementlocation_name ON public.apprblobplacementlocation USING btree (name);


--
-- Name: apprmanifest_digest; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprmanifest_digest ON public.apprmanifest USING btree (digest);


--
-- Name: apprmanifest_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifest_media_type_id ON public.apprmanifest USING btree (media_type_id);


--
-- Name: apprmanifestblob_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestblob_blob_id ON public.apprmanifestblob USING btree (blob_id);


--
-- Name: apprmanifestblob_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestblob_manifest_id ON public.apprmanifestblob USING btree (manifest_id);


--
-- Name: apprmanifestblob_manifest_id_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprmanifestblob_manifest_id_blob_id ON public.apprmanifestblob USING btree (manifest_id, blob_id);


--
-- Name: apprmanifestlist_digest; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprmanifestlist_digest ON public.apprmanifestlist USING btree (digest);


--
-- Name: apprmanifestlist_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestlist_media_type_id ON public.apprmanifestlist USING btree (media_type_id);


--
-- Name: apprmanifestlistmanifest_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestlistmanifest_manifest_id ON public.apprmanifestlistmanifest USING btree (manifest_id);


--
-- Name: apprmanifestlistmanifest_manifest_list_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestlistmanifest_manifest_list_id ON public.apprmanifestlistmanifest USING btree (manifest_list_id);


--
-- Name: apprmanifestlistmanifest_manifest_list_id_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestlistmanifest_manifest_list_id_media_type_id ON public.apprmanifestlistmanifest USING btree (manifest_list_id, media_type_id);


--
-- Name: apprmanifestlistmanifest_manifest_list_id_operating_system_arch; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestlistmanifest_manifest_list_id_operating_system_arch ON public.apprmanifestlistmanifest USING btree (manifest_list_id, operating_system, architecture, media_type_id);


--
-- Name: apprmanifestlistmanifest_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprmanifestlistmanifest_media_type_id ON public.apprmanifestlistmanifest USING btree (media_type_id);


--
-- Name: apprtag_lifetime_end; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_lifetime_end ON public.apprtag USING btree (lifetime_end);


--
-- Name: apprtag_linked_tag_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_linked_tag_id ON public.apprtag USING btree (linked_tag_id);


--
-- Name: apprtag_manifest_list_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_manifest_list_id ON public.apprtag USING btree (manifest_list_id);


--
-- Name: apprtag_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_repository_id ON public.apprtag USING btree (repository_id);


--
-- Name: apprtag_repository_id_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_repository_id_name ON public.apprtag USING btree (repository_id, name);


--
-- Name: apprtag_repository_id_name_hidden; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_repository_id_name_hidden ON public.apprtag USING btree (repository_id, name, hidden);


--
-- Name: apprtag_repository_id_name_lifetime_end; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprtag_repository_id_name_lifetime_end ON public.apprtag USING btree (repository_id, name, lifetime_end);


--
-- Name: apprtag_tag_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX apprtag_tag_kind_id ON public.apprtag USING btree (tag_kind_id);


--
-- Name: apprtagkind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX apprtagkind_name ON public.apprtagkind USING btree (name);


--
-- Name: appspecificauthtoken_token_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX appspecificauthtoken_token_name ON public.appspecificauthtoken USING btree (token_name);


--
-- Name: appspecificauthtoken_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX appspecificauthtoken_user_id ON public.appspecificauthtoken USING btree (user_id);


--
-- Name: appspecificauthtoken_user_id_expiration; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX appspecificauthtoken_user_id_expiration ON public.appspecificauthtoken USING btree (user_id, expiration);


--
-- Name: appspecificauthtoken_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX appspecificauthtoken_uuid ON public.appspecificauthtoken USING btree (uuid);


--
-- Name: blobupload_created; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX blobupload_created ON public.blobupload USING btree (created);


--
-- Name: blobupload_location_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX blobupload_location_id ON public.blobupload USING btree (location_id);


--
-- Name: blobupload_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX blobupload_repository_id ON public.blobupload USING btree (repository_id);


--
-- Name: blobupload_repository_id_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX blobupload_repository_id_uuid ON public.blobupload USING btree (repository_id, uuid);


--
-- Name: blobupload_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX blobupload_uuid ON public.blobupload USING btree (uuid);


--
-- Name: buildtriggerservice_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX buildtriggerservice_name ON public.buildtriggerservice USING btree (name);


--
-- Name: deletednamespace_namespace_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX deletednamespace_namespace_id ON public.deletednamespace USING btree (namespace_id);


--
-- Name: deletednamespace_original_email; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX deletednamespace_original_email ON public.deletednamespace USING btree (original_email);


--
-- Name: deletednamespace_original_username; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX deletednamespace_original_username ON public.deletednamespace USING btree (original_username);


--
-- Name: deletednamespace_queue_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX deletednamespace_queue_id ON public.deletednamespace USING btree (queue_id);


--
-- Name: deletedrepository_original_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX deletedrepository_original_name ON public.deletedrepository USING btree (original_name);


--
-- Name: deletedrepository_queue_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX deletedrepository_queue_id ON public.deletedrepository USING btree (queue_id);


--
-- Name: deletedrepository_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX deletedrepository_repository_id ON public.deletedrepository USING btree (repository_id);


--
-- Name: derivedstorageforimage_derivative_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX derivedstorageforimage_derivative_id ON public.derivedstorageforimage USING btree (derivative_id);


--
-- Name: derivedstorageforimage_source_image_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX derivedstorageforimage_source_image_id ON public.derivedstorageforimage USING btree (source_image_id);


--
-- Name: derivedstorageforimage_transformation_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX derivedstorageforimage_transformation_id ON public.derivedstorageforimage USING btree (transformation_id);


--
-- Name: disablereason_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX disablereason_name ON public.disablereason USING btree (name);


--
-- Name: emailconfirmation_code; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX emailconfirmation_code ON public.emailconfirmation USING btree (code);


--
-- Name: emailconfirmation_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX emailconfirmation_user_id ON public.emailconfirmation USING btree (user_id);


--
-- Name: externalnotificationevent_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX externalnotificationevent_name ON public.externalnotificationevent USING btree (name);


--
-- Name: externalnotificationmethod_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX externalnotificationmethod_name ON public.externalnotificationmethod USING btree (name);


--
-- Name: federatedlogin_service_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX federatedlogin_service_id ON public.federatedlogin USING btree (service_id);


--
-- Name: federatedlogin_service_id_service_ident; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX federatedlogin_service_id_service_ident ON public.federatedlogin USING btree (service_id, service_ident);


--
-- Name: federatedlogin_service_id_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX federatedlogin_service_id_user_id ON public.federatedlogin USING btree (service_id, user_id);


--
-- Name: federatedlogin_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX federatedlogin_user_id ON public.federatedlogin USING btree (user_id);


--
-- Name: image_ancestors; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_ancestors ON public.image USING btree (ancestors);


--
-- Name: image_docker_image_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_docker_image_id ON public.image USING btree (docker_image_id);


--
-- Name: image_parent_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_parent_id ON public.image USING btree (parent_id);


--
-- Name: image_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_repository_id ON public.image USING btree (repository_id);


--
-- Name: image_repository_id_docker_image_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX image_repository_id_docker_image_id ON public.image USING btree (repository_id, docker_image_id);


--
-- Name: image_security_indexed; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_security_indexed ON public.image USING btree (security_indexed);


--
-- Name: image_security_indexed_engine; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_security_indexed_engine ON public.image USING btree (security_indexed_engine);


--
-- Name: image_security_indexed_engine_security_indexed; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_security_indexed_engine_security_indexed ON public.image USING btree (security_indexed_engine, security_indexed);


--
-- Name: image_storage_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX image_storage_id ON public.image USING btree (storage_id);


--
-- Name: imagestorage_content_checksum; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX imagestorage_content_checksum ON public.imagestorage USING btree (content_checksum);


--
-- Name: imagestorage_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX imagestorage_uuid ON public.imagestorage USING btree (uuid);


--
-- Name: imagestoragelocation_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX imagestoragelocation_name ON public.imagestoragelocation USING btree (name);


--
-- Name: imagestorageplacement_location_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX imagestorageplacement_location_id ON public.imagestorageplacement USING btree (location_id);


--
-- Name: imagestorageplacement_storage_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX imagestorageplacement_storage_id ON public.imagestorageplacement USING btree (storage_id);


--
-- Name: imagestorageplacement_storage_id_location_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX imagestorageplacement_storage_id_location_id ON public.imagestorageplacement USING btree (storage_id, location_id);


--
-- Name: imagestoragesignature_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX imagestoragesignature_kind_id ON public.imagestoragesignature USING btree (kind_id);


--
-- Name: imagestoragesignature_kind_id_storage_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX imagestoragesignature_kind_id_storage_id ON public.imagestoragesignature USING btree (kind_id, storage_id);


--
-- Name: imagestoragesignature_storage_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX imagestoragesignature_storage_id ON public.imagestoragesignature USING btree (storage_id);


--
-- Name: imagestoragesignaturekind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX imagestoragesignaturekind_name ON public.imagestoragesignaturekind USING btree (name);


--
-- Name: imagestoragetransformation_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX imagestoragetransformation_name ON public.imagestoragetransformation USING btree (name);


--
-- Name: label_key; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX label_key ON public.label USING btree (key);


--
-- Name: label_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX label_media_type_id ON public.label USING btree (media_type_id);


--
-- Name: label_source_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX label_source_type_id ON public.label USING btree (source_type_id);


--
-- Name: label_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX label_uuid ON public.label USING btree (uuid);


--
-- Name: labelsourcetype_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX labelsourcetype_name ON public.labelsourcetype USING btree (name);


--
-- Name: logentry2_account_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_account_id ON public.logentry2 USING btree (account_id);


--
-- Name: logentry2_account_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_account_id_datetime ON public.logentry2 USING btree (account_id, datetime);


--
-- Name: logentry2_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_datetime ON public.logentry2 USING btree (datetime);


--
-- Name: logentry2_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_kind_id ON public.logentry2 USING btree (kind_id);


--
-- Name: logentry2_performer_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_performer_id ON public.logentry2 USING btree (performer_id);


--
-- Name: logentry2_performer_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_performer_id_datetime ON public.logentry2 USING btree (performer_id, datetime);


--
-- Name: logentry2_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_repository_id ON public.logentry2 USING btree (repository_id);


--
-- Name: logentry2_repository_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_repository_id_datetime ON public.logentry2 USING btree (repository_id, datetime);


--
-- Name: logentry2_repository_id_datetime_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry2_repository_id_datetime_kind_id ON public.logentry2 USING btree (repository_id, datetime, kind_id);


--
-- Name: logentry3_account_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry3_account_id_datetime ON public.logentry3 USING btree (account_id, datetime);


--
-- Name: logentry3_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry3_datetime ON public.logentry3 USING btree (datetime);


--
-- Name: logentry3_performer_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry3_performer_id_datetime ON public.logentry3 USING btree (performer_id, datetime);


--
-- Name: logentry3_repository_id_datetime_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry3_repository_id_datetime_kind_id ON public.logentry3 USING btree (repository_id, datetime, kind_id);


--
-- Name: logentry_account_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_account_id ON public.logentry USING btree (account_id);


--
-- Name: logentry_account_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_account_id_datetime ON public.logentry USING btree (account_id, datetime);


--
-- Name: logentry_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_datetime ON public.logentry USING btree (datetime);


--
-- Name: logentry_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_kind_id ON public.logentry USING btree (kind_id);


--
-- Name: logentry_performer_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_performer_id ON public.logentry USING btree (performer_id);


--
-- Name: logentry_performer_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_performer_id_datetime ON public.logentry USING btree (performer_id, datetime);


--
-- Name: logentry_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_repository_id ON public.logentry USING btree (repository_id);


--
-- Name: logentry_repository_id_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_repository_id_datetime ON public.logentry USING btree (repository_id, datetime);


--
-- Name: logentry_repository_id_datetime_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX logentry_repository_id_datetime_kind_id ON public.logentry USING btree (repository_id, datetime, kind_id);


--
-- Name: logentrykind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX logentrykind_name ON public.logentrykind USING btree (name);


--
-- Name: loginservice_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX loginservice_name ON public.loginservice USING btree (name);


--
-- Name: manifest_digest; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifest_digest ON public.manifest USING btree (digest);


--
-- Name: manifest_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifest_media_type_id ON public.manifest USING btree (media_type_id);


--
-- Name: manifest_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifest_repository_id ON public.manifest USING btree (repository_id);


--
-- Name: manifest_repository_id_config_media_type; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifest_repository_id_config_media_type ON public.manifest USING btree (repository_id, config_media_type);


--
-- Name: manifest_repository_id_digest; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX manifest_repository_id_digest ON public.manifest USING btree (repository_id, digest);


--
-- Name: manifest_repository_id_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifest_repository_id_media_type_id ON public.manifest USING btree (repository_id, media_type_id);


--
-- Name: manifestblob_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestblob_blob_id ON public.manifestblob USING btree (blob_id);


--
-- Name: manifestblob_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestblob_manifest_id ON public.manifestblob USING btree (manifest_id);


--
-- Name: manifestblob_manifest_id_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX manifestblob_manifest_id_blob_id ON public.manifestblob USING btree (manifest_id, blob_id);


--
-- Name: manifestblob_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestblob_repository_id ON public.manifestblob USING btree (repository_id);


--
-- Name: manifestblob_repository_id_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestblob_repository_id_blob_id ON public.manifestblob USING btree (repository_id, blob_id);


--
-- Name: manifestchild_child_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestchild_child_manifest_id ON public.manifestchild USING btree (child_manifest_id);


--
-- Name: manifestchild_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestchild_manifest_id ON public.manifestchild USING btree (manifest_id);


--
-- Name: manifestchild_manifest_id_child_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX manifestchild_manifest_id_child_manifest_id ON public.manifestchild USING btree (manifest_id, child_manifest_id);


--
-- Name: manifestchild_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestchild_repository_id ON public.manifestchild USING btree (repository_id);


--
-- Name: manifestchild_repository_id_child_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestchild_repository_id_child_manifest_id ON public.manifestchild USING btree (repository_id, child_manifest_id);


--
-- Name: manifestchild_repository_id_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestchild_repository_id_manifest_id ON public.manifestchild USING btree (repository_id, manifest_id);


--
-- Name: manifestchild_repository_id_manifest_id_child_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestchild_repository_id_manifest_id_child_manifest_id ON public.manifestchild USING btree (repository_id, manifest_id, child_manifest_id);


--
-- Name: manifestlabel_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestlabel_label_id ON public.manifestlabel USING btree (label_id);


--
-- Name: manifestlabel_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestlabel_manifest_id ON public.manifestlabel USING btree (manifest_id);


--
-- Name: manifestlabel_manifest_id_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX manifestlabel_manifest_id_label_id ON public.manifestlabel USING btree (manifest_id, label_id);


--
-- Name: manifestlabel_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestlabel_repository_id ON public.manifestlabel USING btree (repository_id);


--
-- Name: manifestlegacyimage_image_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestlegacyimage_image_id ON public.manifestlegacyimage USING btree (image_id);


--
-- Name: manifestlegacyimage_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX manifestlegacyimage_manifest_id ON public.manifestlegacyimage USING btree (manifest_id);


--
-- Name: manifestlegacyimage_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestlegacyimage_repository_id ON public.manifestlegacyimage USING btree (repository_id);


--
-- Name: manifestsecuritystatus_index_status; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestsecuritystatus_index_status ON public.manifestsecuritystatus USING btree (index_status);


--
-- Name: manifestsecuritystatus_indexer_hash; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestsecuritystatus_indexer_hash ON public.manifestsecuritystatus USING btree (indexer_hash);


--
-- Name: manifestsecuritystatus_indexer_version; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestsecuritystatus_indexer_version ON public.manifestsecuritystatus USING btree (indexer_version);


--
-- Name: manifestsecuritystatus_last_indexed; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestsecuritystatus_last_indexed ON public.manifestsecuritystatus USING btree (last_indexed);


--
-- Name: manifestsecuritystatus_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX manifestsecuritystatus_manifest_id ON public.manifestsecuritystatus USING btree (manifest_id);


--
-- Name: manifestsecuritystatus_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX manifestsecuritystatus_repository_id ON public.manifestsecuritystatus USING btree (repository_id);


--
-- Name: mediatype_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX mediatype_name ON public.mediatype USING btree (name);


--
-- Name: messages_media_type_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX messages_media_type_id ON public.messages USING btree (media_type_id);


--
-- Name: messages_severity; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX messages_severity ON public.messages USING btree (severity);


--
-- Name: messages_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX messages_uuid ON public.messages USING btree (uuid);


--
-- Name: namespacegeorestriction_namespace_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX namespacegeorestriction_namespace_id ON public.namespacegeorestriction USING btree (namespace_id);


--
-- Name: namespacegeorestriction_namespace_id_restricted_region_iso_code; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX namespacegeorestriction_namespace_id_restricted_region_iso_code ON public.namespacegeorestriction USING btree (namespace_id, restricted_region_iso_code);


--
-- Name: namespacegeorestriction_restricted_region_iso_code; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX namespacegeorestriction_restricted_region_iso_code ON public.namespacegeorestriction USING btree (restricted_region_iso_code);


--
-- Name: notification_created; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX notification_created ON public.notification USING btree (created);


--
-- Name: notification_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX notification_kind_id ON public.notification USING btree (kind_id);


--
-- Name: notification_lookup_path; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX notification_lookup_path ON public.notification USING btree (lookup_path);


--
-- Name: notification_target_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX notification_target_id ON public.notification USING btree (target_id);


--
-- Name: notification_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX notification_uuid ON public.notification USING btree (uuid);


--
-- Name: notificationkind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX notificationkind_name ON public.notificationkind USING btree (name);


--
-- Name: oauthaccesstoken_application_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX oauthaccesstoken_application_id ON public.oauthaccesstoken USING btree (application_id);


--
-- Name: oauthaccesstoken_authorized_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX oauthaccesstoken_authorized_user_id ON public.oauthaccesstoken USING btree (authorized_user_id);


--
-- Name: oauthaccesstoken_token_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX oauthaccesstoken_token_name ON public.oauthaccesstoken USING btree (token_name);


--
-- Name: oauthaccesstoken_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX oauthaccesstoken_uuid ON public.oauthaccesstoken USING btree (uuid);


--
-- Name: oauthapplication_client_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX oauthapplication_client_id ON public.oauthapplication USING btree (client_id);


--
-- Name: oauthapplication_organization_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX oauthapplication_organization_id ON public.oauthapplication USING btree (organization_id);


--
-- Name: oauthauthorizationcode_application_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX oauthauthorizationcode_application_id ON public.oauthauthorizationcode USING btree (application_id);


--
-- Name: oauthauthorizationcode_code_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX oauthauthorizationcode_code_name ON public.oauthauthorizationcode USING btree (code_name);


--
-- Name: permissionprototype_activating_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_activating_user_id ON public.permissionprototype USING btree (activating_user_id);


--
-- Name: permissionprototype_delegate_team_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_delegate_team_id ON public.permissionprototype USING btree (delegate_team_id);


--
-- Name: permissionprototype_delegate_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_delegate_user_id ON public.permissionprototype USING btree (delegate_user_id);


--
-- Name: permissionprototype_org_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_org_id ON public.permissionprototype USING btree (org_id);


--
-- Name: permissionprototype_org_id_activating_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_org_id_activating_user_id ON public.permissionprototype USING btree (org_id, activating_user_id);


--
-- Name: permissionprototype_role_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_role_id ON public.permissionprototype USING btree (role_id);


--
-- Name: permissionprototype_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX permissionprototype_uuid ON public.permissionprototype USING btree (uuid);


--
-- Name: quayregion_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX quayregion_name ON public.quayregion USING btree (name);


--
-- Name: quayrelease_created; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX quayrelease_created ON public.quayrelease USING btree (created);


--
-- Name: quayrelease_region_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX quayrelease_region_id ON public.quayrelease USING btree (region_id);


--
-- Name: quayrelease_service_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX quayrelease_service_id ON public.quayrelease USING btree (service_id);


--
-- Name: quayrelease_service_id_region_id_created; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX quayrelease_service_id_region_id_created ON public.quayrelease USING btree (service_id, region_id, created);


--
-- Name: quayrelease_service_id_version_region_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX quayrelease_service_id_version_region_id ON public.quayrelease USING btree (service_id, version, region_id);


--
-- Name: quayservice_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX quayservice_name ON public.quayservice USING btree (name);


--
-- Name: queueitem_pe_aafter_qname_rremaining_available; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX queueitem_pe_aafter_qname_rremaining_available ON public.queueitem USING btree (processing_expires, available_after, queue_name, retries_remaining, available);


--
-- Name: queueitem_pexpires_aafter_rremaining_available; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX queueitem_pexpires_aafter_rremaining_available ON public.queueitem USING btree (processing_expires, available_after, retries_remaining, available);


--
-- Name: queueitem_processing_expires_available; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX queueitem_processing_expires_available ON public.queueitem USING btree (processing_expires, available);


--
-- Name: queueitem_processing_expires_queue_name_available; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX queueitem_processing_expires_queue_name_available ON public.queueitem USING btree (processing_expires, queue_name, available);


--
-- Name: queueitem_queue_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX queueitem_queue_name ON public.queueitem USING btree (queue_name);


--
-- Name: queueitem_state_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX queueitem_state_id ON public.queueitem USING btree (state_id);


--
-- Name: quotalimits_quota_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX quotalimits_quota_id ON public.quotalimits USING btree (quota_id);


--
-- Name: repomirrorconfig_internal_robot_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorconfig_internal_robot_id ON public.repomirrorconfig USING btree (internal_robot_id);


--
-- Name: repomirrorconfig_mirror_type; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorconfig_mirror_type ON public.repomirrorconfig USING btree (mirror_type);


--
-- Name: repomirrorconfig_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repomirrorconfig_repository_id ON public.repomirrorconfig USING btree (repository_id);


--
-- Name: repomirrorconfig_root_rule_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorconfig_root_rule_id ON public.repomirrorconfig USING btree (root_rule_id);


--
-- Name: repomirrorconfig_sync_status; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorconfig_sync_status ON public.repomirrorconfig USING btree (sync_status);


--
-- Name: repomirrorconfig_sync_transaction_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorconfig_sync_transaction_id ON public.repomirrorconfig USING btree (sync_transaction_id);


--
-- Name: repomirrorrule_left_child_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorrule_left_child_id ON public.repomirrorrule USING btree (left_child_id);


--
-- Name: repomirrorrule_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorrule_repository_id ON public.repomirrorrule USING btree (repository_id);


--
-- Name: repomirrorrule_right_child_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorrule_right_child_id ON public.repomirrorrule USING btree (right_child_id);


--
-- Name: repomirrorrule_rule_type; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repomirrorrule_rule_type ON public.repomirrorrule USING btree (rule_type);


--
-- Name: repomirrorrule_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repomirrorrule_uuid ON public.repomirrorrule USING btree (uuid);


--
-- Name: repository_description__fulltext; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repository_description__fulltext ON public.repository USING gin (description public.gin_trgm_ops);


--
-- Name: repository_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repository_kind_id ON public.repository USING btree (kind_id);


--
-- Name: repository_name__fulltext; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repository_name__fulltext ON public.repository USING gin (name public.gin_trgm_ops);


--
-- Name: repository_namespace_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repository_namespace_user_id ON public.repository USING btree (namespace_user_id);


--
-- Name: repository_namespace_user_id_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repository_namespace_user_id_name ON public.repository USING btree (namespace_user_id, name);


--
-- Name: repository_state; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repository_state ON public.repository USING btree (state);


--
-- Name: repository_visibility_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repository_visibility_id ON public.repository USING btree (visibility_id);


--
-- Name: repositoryactioncount_date; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositoryactioncount_date ON public.repositoryactioncount USING btree (date);


--
-- Name: repositoryactioncount_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositoryactioncount_repository_id ON public.repositoryactioncount USING btree (repository_id);


--
-- Name: repositoryactioncount_repository_id_date; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositoryactioncount_repository_id_date ON public.repositoryactioncount USING btree (repository_id, date);


--
-- Name: repositoryauthorizedemail_code; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositoryauthorizedemail_code ON public.repositoryauthorizedemail USING btree (code);


--
-- Name: repositoryauthorizedemail_email_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositoryauthorizedemail_email_repository_id ON public.repositoryauthorizedemail USING btree (email, repository_id);


--
-- Name: repositoryauthorizedemail_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositoryauthorizedemail_repository_id ON public.repositoryauthorizedemail USING btree (repository_id);


--
-- Name: repositorybuild_access_token_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_access_token_id ON public.repositorybuild USING btree (access_token_id);


--
-- Name: repositorybuild_logs_archived; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_logs_archived ON public.repositorybuild USING btree (logs_archived);


--
-- Name: repositorybuild_pull_robot_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_pull_robot_id ON public.repositorybuild USING btree (pull_robot_id);


--
-- Name: repositorybuild_queue_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_queue_id ON public.repositorybuild USING btree (queue_id);


--
-- Name: repositorybuild_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_repository_id ON public.repositorybuild USING btree (repository_id);


--
-- Name: repositorybuild_repository_id_started_phase; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_repository_id_started_phase ON public.repositorybuild USING btree (repository_id, started, phase);


--
-- Name: repositorybuild_resource_key; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_resource_key ON public.repositorybuild USING btree (resource_key);


--
-- Name: repositorybuild_started; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_started ON public.repositorybuild USING btree (started);


--
-- Name: repositorybuild_started_logs_archived_phase; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_started_logs_archived_phase ON public.repositorybuild USING btree (started, logs_archived, phase);


--
-- Name: repositorybuild_trigger_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_trigger_id ON public.repositorybuild USING btree (trigger_id);


--
-- Name: repositorybuild_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuild_uuid ON public.repositorybuild USING btree (uuid);


--
-- Name: repositorybuildtrigger_connected_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_connected_user_id ON public.repositorybuildtrigger USING btree (connected_user_id);


--
-- Name: repositorybuildtrigger_disabled_datetime; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_disabled_datetime ON public.repositorybuildtrigger USING btree (disabled_datetime);


--
-- Name: repositorybuildtrigger_disabled_reason_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_disabled_reason_id ON public.repositorybuildtrigger USING btree (disabled_reason_id);


--
-- Name: repositorybuildtrigger_pull_robot_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_pull_robot_id ON public.repositorybuildtrigger USING btree (pull_robot_id);


--
-- Name: repositorybuildtrigger_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_repository_id ON public.repositorybuildtrigger USING btree (repository_id);


--
-- Name: repositorybuildtrigger_service_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_service_id ON public.repositorybuildtrigger USING btree (service_id);


--
-- Name: repositorybuildtrigger_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_uuid ON public.repositorybuildtrigger USING btree (uuid);


--
-- Name: repositorybuildtrigger_write_token_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorybuildtrigger_write_token_id ON public.repositorybuildtrigger USING btree (write_token_id);


--
-- Name: repositorykind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositorykind_name ON public.repositorykind USING btree (name);


--
-- Name: repositorynotification_event_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorynotification_event_id ON public.repositorynotification USING btree (event_id);


--
-- Name: repositorynotification_method_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorynotification_method_id ON public.repositorynotification USING btree (method_id);


--
-- Name: repositorynotification_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorynotification_repository_id ON public.repositorynotification USING btree (repository_id);


--
-- Name: repositorynotification_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorynotification_uuid ON public.repositorynotification USING btree (uuid);


--
-- Name: repositorypermission_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorypermission_repository_id ON public.repositorypermission USING btree (repository_id);


--
-- Name: repositorypermission_role_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorypermission_role_id ON public.repositorypermission USING btree (role_id);


--
-- Name: repositorypermission_team_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorypermission_team_id ON public.repositorypermission USING btree (team_id);


--
-- Name: repositorypermission_team_id_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositorypermission_team_id_repository_id ON public.repositorypermission USING btree (team_id, repository_id);


--
-- Name: repositorypermission_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorypermission_user_id ON public.repositorypermission USING btree (user_id);


--
-- Name: repositorypermission_user_id_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositorypermission_user_id_repository_id ON public.repositorypermission USING btree (user_id, repository_id);


--
-- Name: repositorysearchscore_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositorysearchscore_repository_id ON public.repositorysearchscore USING btree (repository_id);


--
-- Name: repositorysearchscore_score; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorysearchscore_score ON public.repositorysearchscore USING btree (score);


--
-- Name: repositorysize_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositorysize_repository_id ON public.repositorysize USING btree (repository_id);


--
-- Name: repositorytag_image_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorytag_image_id ON public.repositorytag USING btree (image_id);


--
-- Name: repositorytag_lifetime_end_ts; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorytag_lifetime_end_ts ON public.repositorytag USING btree (lifetime_end_ts);


--
-- Name: repositorytag_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorytag_repository_id ON public.repositorytag USING btree (repository_id);


--
-- Name: repositorytag_repository_id_lifetime_end_ts; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorytag_repository_id_lifetime_end_ts ON public.repositorytag USING btree (repository_id, lifetime_end_ts);


--
-- Name: repositorytag_repository_id_lifetime_start_ts; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorytag_repository_id_lifetime_start_ts ON public.repositorytag USING btree (repository_id, lifetime_start_ts);


--
-- Name: repositorytag_repository_id_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX repositorytag_repository_id_name ON public.repositorytag USING btree (repository_id, name);


--
-- Name: repositorytag_repository_id_name_lifetime_end_ts; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX repositorytag_repository_id_name_lifetime_end_ts ON public.repositorytag USING btree (repository_id, name, lifetime_end_ts);


--
-- Name: robotaccountmetadata_robot_account_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX robotaccountmetadata_robot_account_id ON public.robotaccountmetadata USING btree (robot_account_id);


--
-- Name: robotaccounttoken_robot_account_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX robotaccounttoken_robot_account_id ON public.robotaccounttoken USING btree (robot_account_id);


--
-- Name: role_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX role_name ON public.role USING btree (name);


--
-- Name: servicekey_approval_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX servicekey_approval_id ON public.servicekey USING btree (approval_id);


--
-- Name: servicekey_kid; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX servicekey_kid ON public.servicekey USING btree (kid);


--
-- Name: servicekey_service; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX servicekey_service ON public.servicekey USING btree (service);


--
-- Name: servicekeyapproval_approval_type; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX servicekeyapproval_approval_type ON public.servicekeyapproval USING btree (approval_type);


--
-- Name: servicekeyapproval_approver_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX servicekeyapproval_approver_id ON public.servicekeyapproval USING btree (approver_id);


--
-- Name: star_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX star_repository_id ON public.star USING btree (repository_id);


--
-- Name: star_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX star_user_id ON public.star USING btree (user_id);


--
-- Name: star_user_id_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX star_user_id_repository_id ON public.star USING btree (user_id, repository_id);


--
-- Name: tag_lifetime_end_ms; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_lifetime_end_ms ON public.tag USING btree (lifetime_end_ms);


--
-- Name: tag_linked_tag_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_linked_tag_id ON public.tag USING btree (linked_tag_id);


--
-- Name: tag_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_manifest_id ON public.tag USING btree (manifest_id);


--
-- Name: tag_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_repository_id ON public.tag USING btree (repository_id);


--
-- Name: tag_repository_id_lifetime_end_ms; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_repository_id_lifetime_end_ms ON public.tag USING btree (repository_id, lifetime_end_ms);


--
-- Name: tag_repository_id_lifetime_start_ms; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_repository_id_lifetime_start_ms ON public.tag USING btree (repository_id, lifetime_start_ms);


--
-- Name: tag_repository_id_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_repository_id_name ON public.tag USING btree (repository_id, name);


--
-- Name: tag_repository_id_name_hidden; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_repository_id_name_hidden ON public.tag USING btree (repository_id, name, hidden);


--
-- Name: tag_repository_id_name_lifetime_end_ms; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tag_repository_id_name_lifetime_end_ms ON public.tag USING btree (repository_id, name, lifetime_end_ms);


--
-- Name: tag_repository_id_name_tag_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_repository_id_name_tag_kind_id ON public.tag USING btree (repository_id, name, tag_kind_id);


--
-- Name: tag_tag_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tag_tag_kind_id ON public.tag USING btree (tag_kind_id);


--
-- Name: tagkind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tagkind_name ON public.tagkind USING btree (name);


--
-- Name: tagmanifest_digest; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifest_digest ON public.tagmanifest USING btree (digest);


--
-- Name: tagmanifest_tag_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tagmanifest_tag_id ON public.tagmanifest USING btree (tag_id);


--
-- Name: tagmanifestlabel_annotated_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabel_annotated_id ON public.tagmanifestlabel USING btree (annotated_id);


--
-- Name: tagmanifestlabel_annotated_id_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tagmanifestlabel_annotated_id_label_id ON public.tagmanifestlabel USING btree (annotated_id, label_id);


--
-- Name: tagmanifestlabel_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabel_label_id ON public.tagmanifestlabel USING btree (label_id);


--
-- Name: tagmanifestlabel_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabel_repository_id ON public.tagmanifestlabel USING btree (repository_id);


--
-- Name: tagmanifestlabelmap_broken_manifest; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabelmap_broken_manifest ON public.tagmanifestlabelmap USING btree (broken_manifest);


--
-- Name: tagmanifestlabelmap_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabelmap_label_id ON public.tagmanifestlabelmap USING btree (label_id);


--
-- Name: tagmanifestlabelmap_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabelmap_manifest_id ON public.tagmanifestlabelmap USING btree (manifest_id);


--
-- Name: tagmanifestlabelmap_manifest_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabelmap_manifest_label_id ON public.tagmanifestlabelmap USING btree (manifest_label_id);


--
-- Name: tagmanifestlabelmap_tag_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabelmap_tag_manifest_id ON public.tagmanifestlabelmap USING btree (tag_manifest_id);


--
-- Name: tagmanifestlabelmap_tag_manifest_label_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifestlabelmap_tag_manifest_label_id ON public.tagmanifestlabelmap USING btree (tag_manifest_label_id);


--
-- Name: tagmanifesttomanifest_broken; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifesttomanifest_broken ON public.tagmanifesttomanifest USING btree (broken);


--
-- Name: tagmanifesttomanifest_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagmanifesttomanifest_manifest_id ON public.tagmanifesttomanifest USING btree (manifest_id);


--
-- Name: tagmanifesttomanifest_tag_manifest_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tagmanifesttomanifest_tag_manifest_id ON public.tagmanifesttomanifest USING btree (tag_manifest_id);


--
-- Name: tagtorepositorytag_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX tagtorepositorytag_repository_id ON public.tagtorepositorytag USING btree (repository_id);


--
-- Name: tagtorepositorytag_repository_tag_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tagtorepositorytag_repository_tag_id ON public.tagtorepositorytag USING btree (repository_tag_id);


--
-- Name: tagtorepositorytag_tag_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX tagtorepositorytag_tag_id ON public.tagtorepositorytag USING btree (tag_id);


--
-- Name: team_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX team_name ON public.team USING btree (name);


--
-- Name: team_name_organization_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX team_name_organization_id ON public.team USING btree (name, organization_id);


--
-- Name: team_organization_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX team_organization_id ON public.team USING btree (organization_id);


--
-- Name: team_role_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX team_role_id ON public.team USING btree (role_id);


--
-- Name: teammember_team_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teammember_team_id ON public.teammember USING btree (team_id);


--
-- Name: teammember_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teammember_user_id ON public.teammember USING btree (user_id);


--
-- Name: teammember_user_id_team_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX teammember_user_id_team_id ON public.teammember USING btree (user_id, team_id);


--
-- Name: teammemberinvite_inviter_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teammemberinvite_inviter_id ON public.teammemberinvite USING btree (inviter_id);


--
-- Name: teammemberinvite_team_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teammemberinvite_team_id ON public.teammemberinvite USING btree (team_id);


--
-- Name: teammemberinvite_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teammemberinvite_user_id ON public.teammemberinvite USING btree (user_id);


--
-- Name: teamrole_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teamrole_name ON public.teamrole USING btree (name);


--
-- Name: teamsync_last_updated; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teamsync_last_updated ON public.teamsync USING btree (last_updated);


--
-- Name: teamsync_service_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX teamsync_service_id ON public.teamsync USING btree (service_id);


--
-- Name: teamsync_team_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX teamsync_team_id ON public.teamsync USING btree (team_id);


--
-- Name: torrentinfo_storage_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX torrentinfo_storage_id ON public.torrentinfo USING btree (storage_id);


--
-- Name: torrentinfo_storage_id_piece_length; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX torrentinfo_storage_id_piece_length ON public.torrentinfo USING btree (storage_id, piece_length);


--
-- Name: uniqueness_index; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX uniqueness_index ON public.derivedstorageforimage USING btree (source_image_id, transformation_id, uniqueness_hash);


--
-- Name: uploadedblob_blob_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX uploadedblob_blob_id ON public.uploadedblob USING btree (blob_id);


--
-- Name: uploadedblob_expires_at; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX uploadedblob_expires_at ON public.uploadedblob USING btree (expires_at);


--
-- Name: uploadedblob_repository_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX uploadedblob_repository_id ON public.uploadedblob USING btree (repository_id);


--
-- Name: user_email; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX user_email ON public."user" USING btree (email);


--
-- Name: user_invoice_email_address; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX user_invoice_email_address ON public."user" USING btree (invoice_email_address);


--
-- Name: user_last_accessed; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX user_last_accessed ON public."user" USING btree (last_accessed);


--
-- Name: user_organization; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX user_organization ON public."user" USING btree (organization);


--
-- Name: user_robot; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX user_robot ON public."user" USING btree (robot);


--
-- Name: user_stripe_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX user_stripe_id ON public."user" USING btree (stripe_id);


--
-- Name: user_username; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX user_username ON public."user" USING btree (username);


--
-- Name: user_uuid; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX user_uuid ON public."user" USING btree (uuid);


--
-- Name: userorganizationquota_organization; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX userorganizationquota_organization ON public.userorganizationquota USING btree (namespace_id);


--
-- Name: userprompt_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX userprompt_kind_id ON public.userprompt USING btree (kind_id);


--
-- Name: userprompt_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX userprompt_user_id ON public.userprompt USING btree (user_id);


--
-- Name: userprompt_user_id_kind_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX userprompt_user_id_kind_id ON public.userprompt USING btree (user_id, kind_id);


--
-- Name: userpromptkind_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX userpromptkind_name ON public.userpromptkind USING btree (name);


--
-- Name: userregion_location_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX userregion_location_id ON public.userregion USING btree (location_id);


--
-- Name: userregion_user_id; Type: INDEX; Schema: public; Owner: quay
--

CREATE INDEX userregion_user_id ON public.userregion USING btree (user_id);


--
-- Name: visibility_name; Type: INDEX; Schema: public; Owner: quay
--

CREATE UNIQUE INDEX visibility_name ON public.visibility USING btree (name);


--
-- Name: accesstoken fk_accesstoken_kind_id_accesstokenkind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstoken
    ADD CONSTRAINT fk_accesstoken_kind_id_accesstokenkind FOREIGN KEY (kind_id) REFERENCES public.accesstokenkind(id);


--
-- Name: accesstoken fk_accesstoken_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstoken
    ADD CONSTRAINT fk_accesstoken_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: accesstoken fk_accesstoken_role_id_role; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.accesstoken
    ADD CONSTRAINT fk_accesstoken_role_id_role FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: apprblob fk_apprblob_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblob
    ADD CONSTRAINT fk_apprblob_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: apprblobplacement fk_apprblobplacement_blob_id_apprblob; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblobplacement
    ADD CONSTRAINT fk_apprblobplacement_blob_id_apprblob FOREIGN KEY (blob_id) REFERENCES public.apprblob(id);


--
-- Name: apprblobplacement fk_apprblobplacement_location_id_apprblobplacementlocation; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprblobplacement
    ADD CONSTRAINT fk_apprblobplacement_location_id_apprblobplacementlocation FOREIGN KEY (location_id) REFERENCES public.apprblobplacementlocation(id);


--
-- Name: apprmanifest fk_apprmanifest_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifest
    ADD CONSTRAINT fk_apprmanifest_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: apprmanifestblob fk_apprmanifestblob_blob_id_apprblob; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestblob
    ADD CONSTRAINT fk_apprmanifestblob_blob_id_apprblob FOREIGN KEY (blob_id) REFERENCES public.apprblob(id);


--
-- Name: apprmanifestblob fk_apprmanifestblob_manifest_id_apprmanifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestblob
    ADD CONSTRAINT fk_apprmanifestblob_manifest_id_apprmanifest FOREIGN KEY (manifest_id) REFERENCES public.apprmanifest(id);


--
-- Name: apprmanifestlist fk_apprmanifestlist_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlist
    ADD CONSTRAINT fk_apprmanifestlist_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: apprmanifestlistmanifest fk_apprmanifestlistmanifest_manifest_id_apprmanifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlistmanifest
    ADD CONSTRAINT fk_apprmanifestlistmanifest_manifest_id_apprmanifest FOREIGN KEY (manifest_id) REFERENCES public.apprmanifest(id);


--
-- Name: apprmanifestlistmanifest fk_apprmanifestlistmanifest_manifest_list_id_apprmanifestlist; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlistmanifest
    ADD CONSTRAINT fk_apprmanifestlistmanifest_manifest_list_id_apprmanifestlist FOREIGN KEY (manifest_list_id) REFERENCES public.apprmanifestlist(id);


--
-- Name: apprmanifestlistmanifest fk_apprmanifestlistmanifest_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprmanifestlistmanifest
    ADD CONSTRAINT fk_apprmanifestlistmanifest_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: apprtag fk_apprtag_linked_tag_id_apprtag; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtag
    ADD CONSTRAINT fk_apprtag_linked_tag_id_apprtag FOREIGN KEY (linked_tag_id) REFERENCES public.apprtag(id);


--
-- Name: apprtag fk_apprtag_manifest_list_id_apprmanifestlist; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtag
    ADD CONSTRAINT fk_apprtag_manifest_list_id_apprmanifestlist FOREIGN KEY (manifest_list_id) REFERENCES public.apprmanifestlist(id);


--
-- Name: apprtag fk_apprtag_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtag
    ADD CONSTRAINT fk_apprtag_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: apprtag fk_apprtag_tag_kind_id_apprtagkind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.apprtag
    ADD CONSTRAINT fk_apprtag_tag_kind_id_apprtagkind FOREIGN KEY (tag_kind_id) REFERENCES public.apprtagkind(id);


--
-- Name: appspecificauthtoken fk_appspecificauthtoken_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.appspecificauthtoken
    ADD CONSTRAINT fk_appspecificauthtoken_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: blobupload fk_blobupload_location_id_imagestoragelocation; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.blobupload
    ADD CONSTRAINT fk_blobupload_location_id_imagestoragelocation FOREIGN KEY (location_id) REFERENCES public.imagestoragelocation(id);


--
-- Name: blobupload fk_blobupload_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.blobupload
    ADD CONSTRAINT fk_blobupload_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: deletednamespace fk_deletednamespace_namespace_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.deletednamespace
    ADD CONSTRAINT fk_deletednamespace_namespace_id_user FOREIGN KEY (namespace_id) REFERENCES public."user"(id);


--
-- Name: deletedrepository fk_deletedrepository_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.deletedrepository
    ADD CONSTRAINT fk_deletedrepository_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: derivedstorageforimage fk_derivedstorageforimage_derivative_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.derivedstorageforimage
    ADD CONSTRAINT fk_derivedstorageforimage_derivative_id_imagestorage FOREIGN KEY (derivative_id) REFERENCES public.imagestorage(id);


--
-- Name: derivedstorageforimage fk_derivedstorageforimage_source_image_id_image; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.derivedstorageforimage
    ADD CONSTRAINT fk_derivedstorageforimage_source_image_id_image FOREIGN KEY (source_image_id) REFERENCES public.image(id);


--
-- Name: derivedstorageforimage fk_derivedstorageforimage_transformation_constraint; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.derivedstorageforimage
    ADD CONSTRAINT fk_derivedstorageforimage_transformation_constraint FOREIGN KEY (transformation_id) REFERENCES public.imagestoragetransformation(id);


--
-- Name: emailconfirmation fk_emailconfirmation_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.emailconfirmation
    ADD CONSTRAINT fk_emailconfirmation_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: federatedlogin fk_federatedlogin_service_id_loginservice; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.federatedlogin
    ADD CONSTRAINT fk_federatedlogin_service_id_loginservice FOREIGN KEY (service_id) REFERENCES public.loginservice(id);


--
-- Name: federatedlogin fk_federatedlogin_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.federatedlogin
    ADD CONSTRAINT fk_federatedlogin_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: image fk_image_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fk_image_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: image fk_image_storage_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fk_image_storage_id_imagestorage FOREIGN KEY (storage_id) REFERENCES public.imagestorage(id);


--
-- Name: imagestorageplacement fk_imagestorageplacement_location_id_imagestoragelocation; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestorageplacement
    ADD CONSTRAINT fk_imagestorageplacement_location_id_imagestoragelocation FOREIGN KEY (location_id) REFERENCES public.imagestoragelocation(id);


--
-- Name: imagestorageplacement fk_imagestorageplacement_storage_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestorageplacement
    ADD CONSTRAINT fk_imagestorageplacement_storage_id_imagestorage FOREIGN KEY (storage_id) REFERENCES public.imagestorage(id);


--
-- Name: imagestoragesignature fk_imagestoragesignature_kind_id_imagestoragesignaturekind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragesignature
    ADD CONSTRAINT fk_imagestoragesignature_kind_id_imagestoragesignaturekind FOREIGN KEY (kind_id) REFERENCES public.imagestoragesignaturekind(id);


--
-- Name: imagestoragesignature fk_imagestoragesignature_storage_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.imagestoragesignature
    ADD CONSTRAINT fk_imagestoragesignature_storage_id_imagestorage FOREIGN KEY (storage_id) REFERENCES public.imagestorage(id);


--
-- Name: label fk_label_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT fk_label_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: label fk_label_source_type_id_labelsourcetype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT fk_label_source_type_id_labelsourcetype FOREIGN KEY (source_type_id) REFERENCES public.labelsourcetype(id);


--
-- Name: logentry2 fk_logentry2_kind_id_logentrykind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry2
    ADD CONSTRAINT fk_logentry2_kind_id_logentrykind FOREIGN KEY (kind_id) REFERENCES public.logentrykind(id);


--
-- Name: logentry fk_logentry_kind_id_logentrykind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.logentry
    ADD CONSTRAINT fk_logentry_kind_id_logentrykind FOREIGN KEY (kind_id) REFERENCES public.logentrykind(id);


--
-- Name: manifest fk_manifest_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifest
    ADD CONSTRAINT fk_manifest_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: manifest fk_manifest_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifest
    ADD CONSTRAINT fk_manifest_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: manifestblob fk_manifestblob_blob_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestblob
    ADD CONSTRAINT fk_manifestblob_blob_id_imagestorage FOREIGN KEY (blob_id) REFERENCES public.imagestorage(id);


--
-- Name: manifestblob fk_manifestblob_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestblob
    ADD CONSTRAINT fk_manifestblob_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: manifestblob fk_manifestblob_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestblob
    ADD CONSTRAINT fk_manifestblob_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: manifestchild fk_manifestchild_child_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestchild
    ADD CONSTRAINT fk_manifestchild_child_manifest_id_manifest FOREIGN KEY (child_manifest_id) REFERENCES public.manifest(id);


--
-- Name: manifestchild fk_manifestchild_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestchild
    ADD CONSTRAINT fk_manifestchild_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: manifestchild fk_manifestchild_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestchild
    ADD CONSTRAINT fk_manifestchild_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: manifestlabel fk_manifestlabel_label_id_label; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlabel
    ADD CONSTRAINT fk_manifestlabel_label_id_label FOREIGN KEY (label_id) REFERENCES public.label(id);


--
-- Name: manifestlabel fk_manifestlabel_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlabel
    ADD CONSTRAINT fk_manifestlabel_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: manifestlabel fk_manifestlabel_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlabel
    ADD CONSTRAINT fk_manifestlabel_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: manifestlegacyimage fk_manifestlegacyimage_image_id_image; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlegacyimage
    ADD CONSTRAINT fk_manifestlegacyimage_image_id_image FOREIGN KEY (image_id) REFERENCES public.image(id);


--
-- Name: manifestlegacyimage fk_manifestlegacyimage_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlegacyimage
    ADD CONSTRAINT fk_manifestlegacyimage_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: manifestlegacyimage fk_manifestlegacyimage_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestlegacyimage
    ADD CONSTRAINT fk_manifestlegacyimage_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: manifestsecuritystatus fk_manifestsecuritystatus_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestsecuritystatus
    ADD CONSTRAINT fk_manifestsecuritystatus_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: manifestsecuritystatus fk_manifestsecuritystatus_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.manifestsecuritystatus
    ADD CONSTRAINT fk_manifestsecuritystatus_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: messages fk_messages_media_type_id_mediatype; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_messages_media_type_id_mediatype FOREIGN KEY (media_type_id) REFERENCES public.mediatype(id);


--
-- Name: namespacegeorestriction fk_namespacegeorestriction_namespace_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.namespacegeorestriction
    ADD CONSTRAINT fk_namespacegeorestriction_namespace_id_user FOREIGN KEY (namespace_id) REFERENCES public."user"(id);


--
-- Name: notification fk_notification_kind_id_notificationkind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_notification_kind_id_notificationkind FOREIGN KEY (kind_id) REFERENCES public.notificationkind(id);


--
-- Name: notification fk_notification_target_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_notification_target_id_user FOREIGN KEY (target_id) REFERENCES public."user"(id);


--
-- Name: oauthaccesstoken fk_oauthaccesstoken_application_id_oauthapplication; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthaccesstoken
    ADD CONSTRAINT fk_oauthaccesstoken_application_id_oauthapplication FOREIGN KEY (application_id) REFERENCES public.oauthapplication(id);


--
-- Name: oauthaccesstoken fk_oauthaccesstoken_authorized_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthaccesstoken
    ADD CONSTRAINT fk_oauthaccesstoken_authorized_user_id_user FOREIGN KEY (authorized_user_id) REFERENCES public."user"(id);


--
-- Name: oauthapplication fk_oauthapplication_organization_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthapplication
    ADD CONSTRAINT fk_oauthapplication_organization_id_user FOREIGN KEY (organization_id) REFERENCES public."user"(id);


--
-- Name: oauthauthorizationcode fk_oauthauthorizationcode_application_id_oauthapplication; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.oauthauthorizationcode
    ADD CONSTRAINT fk_oauthauthorizationcode_application_id_oauthapplication FOREIGN KEY (application_id) REFERENCES public.oauthapplication(id);


--
-- Name: permissionprototype fk_permissionprototype_activating_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype
    ADD CONSTRAINT fk_permissionprototype_activating_user_id_user FOREIGN KEY (activating_user_id) REFERENCES public."user"(id);


--
-- Name: permissionprototype fk_permissionprototype_delegate_team_id_team; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype
    ADD CONSTRAINT fk_permissionprototype_delegate_team_id_team FOREIGN KEY (delegate_team_id) REFERENCES public.team(id);


--
-- Name: permissionprototype fk_permissionprototype_delegate_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype
    ADD CONSTRAINT fk_permissionprototype_delegate_user_id_user FOREIGN KEY (delegate_user_id) REFERENCES public."user"(id);


--
-- Name: permissionprototype fk_permissionprototype_org_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype
    ADD CONSTRAINT fk_permissionprototype_org_id_user FOREIGN KEY (org_id) REFERENCES public."user"(id);


--
-- Name: permissionprototype fk_permissionprototype_role_id_role; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.permissionprototype
    ADD CONSTRAINT fk_permissionprototype_role_id_role FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: proxycacheconfig fk_proxy_cache_config_organization_id; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.proxycacheconfig
    ADD CONSTRAINT fk_proxy_cache_config_organization_id FOREIGN KEY (organization_id) REFERENCES public."user"(id);


--
-- Name: quayrelease fk_quayrelease_region_id_quayregion; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayrelease
    ADD CONSTRAINT fk_quayrelease_region_id_quayregion FOREIGN KEY (region_id) REFERENCES public.quayregion(id);


--
-- Name: quayrelease fk_quayrelease_service_id_quayservice; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quayrelease
    ADD CONSTRAINT fk_quayrelease_service_id_quayservice FOREIGN KEY (service_id) REFERENCES public.quayservice(id);


--
-- Name: quotalimits fk_quotalimit_id; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotalimits
    ADD CONSTRAINT fk_quotalimit_id FOREIGN KEY (quota_id) REFERENCES public.userorganizationquota(id);


--
-- Name: quotalimits fk_quotalimit_type; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotalimits
    ADD CONSTRAINT fk_quotalimit_type FOREIGN KEY (quota_type_id) REFERENCES public.quotatype(id);


--
-- Name: quotanamespacesize fk_quotanamespacesize_namespace_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotanamespacesize
    ADD CONSTRAINT fk_quotanamespacesize_namespace_user_id_user FOREIGN KEY (namespace_user_id) REFERENCES public."user"(id);


--
-- Name: quotarepositorysize fk_quotarepositorysize_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.quotarepositorysize
    ADD CONSTRAINT fk_quotarepositorysize_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: redhatsubscriptions fk_redhatsubscriptions; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.redhatsubscriptions
    ADD CONSTRAINT fk_redhatsubscriptions FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: repomirrorconfig fk_repomirrorconfig_internal_robot_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorconfig
    ADD CONSTRAINT fk_repomirrorconfig_internal_robot_id_user FOREIGN KEY (internal_robot_id) REFERENCES public."user"(id);


--
-- Name: repomirrorconfig fk_repomirrorconfig_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorconfig
    ADD CONSTRAINT fk_repomirrorconfig_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repomirrorconfig fk_repomirrorconfig_root_rule_id_repomirrorrule; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorconfig
    ADD CONSTRAINT fk_repomirrorconfig_root_rule_id_repomirrorrule FOREIGN KEY (root_rule_id) REFERENCES public.repomirrorrule(id);


--
-- Name: repomirrorrule fk_repomirrorrule_left_child_id_repomirrorrule; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorrule
    ADD CONSTRAINT fk_repomirrorrule_left_child_id_repomirrorrule FOREIGN KEY (left_child_id) REFERENCES public.repomirrorrule(id);


--
-- Name: repomirrorrule fk_repomirrorrule_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorrule
    ADD CONSTRAINT fk_repomirrorrule_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repomirrorrule fk_repomirrorrule_right_child_id_repomirrorrule; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repomirrorrule
    ADD CONSTRAINT fk_repomirrorrule_right_child_id_repomirrorrule FOREIGN KEY (right_child_id) REFERENCES public.repomirrorrule(id);


--
-- Name: repository fk_repository_kind_id_repositorykind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repository
    ADD CONSTRAINT fk_repository_kind_id_repositorykind FOREIGN KEY (kind_id) REFERENCES public.repositorykind(id);


--
-- Name: repository fk_repository_namespace_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repository
    ADD CONSTRAINT fk_repository_namespace_user_id_user FOREIGN KEY (namespace_user_id) REFERENCES public."user"(id);


--
-- Name: repository fk_repository_visibility_id_visibility; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repository
    ADD CONSTRAINT fk_repository_visibility_id_visibility FOREIGN KEY (visibility_id) REFERENCES public.visibility(id);


--
-- Name: repositoryactioncount fk_repositoryactioncount_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositoryactioncount
    ADD CONSTRAINT fk_repositoryactioncount_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositoryauthorizedemail fk_repositoryauthorizedemail_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositoryauthorizedemail
    ADD CONSTRAINT fk_repositoryauthorizedemail_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorybuild fk_repositorybuild_access_token_id_accesstoken; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuild
    ADD CONSTRAINT fk_repositorybuild_access_token_id_accesstoken FOREIGN KEY (access_token_id) REFERENCES public.accesstoken(id);


--
-- Name: repositorybuild fk_repositorybuild_pull_robot_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuild
    ADD CONSTRAINT fk_repositorybuild_pull_robot_id_user FOREIGN KEY (pull_robot_id) REFERENCES public."user"(id);


--
-- Name: repositorybuild fk_repositorybuild_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuild
    ADD CONSTRAINT fk_repositorybuild_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorybuild fk_repositorybuild_trigger_id_repositorybuildtrigger; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuild
    ADD CONSTRAINT fk_repositorybuild_trigger_id_repositorybuildtrigger FOREIGN KEY (trigger_id) REFERENCES public.repositorybuildtrigger(id);


--
-- Name: repositorybuildtrigger fk_repositorybuildtrigger_connected_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT fk_repositorybuildtrigger_connected_user_id_user FOREIGN KEY (connected_user_id) REFERENCES public."user"(id);


--
-- Name: repositorybuildtrigger fk_repositorybuildtrigger_disabled_reason_id_disablereason; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT fk_repositorybuildtrigger_disabled_reason_id_disablereason FOREIGN KEY (disabled_reason_id) REFERENCES public.disablereason(id);


--
-- Name: repositorybuildtrigger fk_repositorybuildtrigger_pull_robot_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT fk_repositorybuildtrigger_pull_robot_id_user FOREIGN KEY (pull_robot_id) REFERENCES public."user"(id);


--
-- Name: repositorybuildtrigger fk_repositorybuildtrigger_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT fk_repositorybuildtrigger_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorybuildtrigger fk_repositorybuildtrigger_service_id_buildtriggerservice; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT fk_repositorybuildtrigger_service_id_buildtriggerservice FOREIGN KEY (service_id) REFERENCES public.buildtriggerservice(id);


--
-- Name: repositorybuildtrigger fk_repositorybuildtrigger_write_token_id_accesstoken; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorybuildtrigger
    ADD CONSTRAINT fk_repositorybuildtrigger_write_token_id_accesstoken FOREIGN KEY (write_token_id) REFERENCES public.accesstoken(id);


--
-- Name: repositorynotification fk_repositorynotification_event_id_externalnotificationevent; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorynotification
    ADD CONSTRAINT fk_repositorynotification_event_id_externalnotificationevent FOREIGN KEY (event_id) REFERENCES public.externalnotificationevent(id);


--
-- Name: repositorynotification fk_repositorynotification_method_id_externalnotificationmethod; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorynotification
    ADD CONSTRAINT fk_repositorynotification_method_id_externalnotificationmethod FOREIGN KEY (method_id) REFERENCES public.externalnotificationmethod(id);


--
-- Name: repositorynotification fk_repositorynotification_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorynotification
    ADD CONSTRAINT fk_repositorynotification_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorypermission fk_repositorypermission_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorypermission
    ADD CONSTRAINT fk_repositorypermission_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorypermission fk_repositorypermission_role_id_role; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorypermission
    ADD CONSTRAINT fk_repositorypermission_role_id_role FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: repositorypermission fk_repositorypermission_team_id_team; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorypermission
    ADD CONSTRAINT fk_repositorypermission_team_id_team FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: repositorypermission fk_repositorypermission_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorypermission
    ADD CONSTRAINT fk_repositorypermission_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: repositorysearchscore fk_repositorysearchscore_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorysearchscore
    ADD CONSTRAINT fk_repositorysearchscore_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorysize fk_repositorysize_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorysize
    ADD CONSTRAINT fk_repositorysize_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: repositorytag fk_repositorytag_image_id_image; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorytag
    ADD CONSTRAINT fk_repositorytag_image_id_image FOREIGN KEY (image_id) REFERENCES public.image(id);


--
-- Name: repositorytag fk_repositorytag_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.repositorytag
    ADD CONSTRAINT fk_repositorytag_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: robotaccountmetadata fk_robotaccountmetadata_robot_account_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.robotaccountmetadata
    ADD CONSTRAINT fk_robotaccountmetadata_robot_account_id_user FOREIGN KEY (robot_account_id) REFERENCES public."user"(id);


--
-- Name: robotaccounttoken fk_robotaccounttoken_robot_account_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.robotaccounttoken
    ADD CONSTRAINT fk_robotaccounttoken_robot_account_id_user FOREIGN KEY (robot_account_id) REFERENCES public."user"(id);


--
-- Name: servicekey fk_servicekey_approval_id_servicekeyapproval; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.servicekey
    ADD CONSTRAINT fk_servicekey_approval_id_servicekeyapproval FOREIGN KEY (approval_id) REFERENCES public.servicekeyapproval(id);


--
-- Name: star fk_star_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: star fk_star_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: tag fk_tag_linked_tag_id_tag; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT fk_tag_linked_tag_id_tag FOREIGN KEY (linked_tag_id) REFERENCES public.tag(id);


--
-- Name: tag fk_tag_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT fk_tag_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: tag fk_tag_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT fk_tag_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: tag fk_tag_tag_kind_id_tagkind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT fk_tag_tag_kind_id_tagkind FOREIGN KEY (tag_kind_id) REFERENCES public.tagkind(id);


--
-- Name: tagmanifest fk_tagmanifest_tag_id_repositorytag; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifest
    ADD CONSTRAINT fk_tagmanifest_tag_id_repositorytag FOREIGN KEY (tag_id) REFERENCES public.repositorytag(id);


--
-- Name: tagmanifestlabel fk_tagmanifestlabel_annotated_id_tagmanifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabel
    ADD CONSTRAINT fk_tagmanifestlabel_annotated_id_tagmanifest FOREIGN KEY (annotated_id) REFERENCES public.tagmanifest(id);


--
-- Name: tagmanifestlabel fk_tagmanifestlabel_label_id_label; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabel
    ADD CONSTRAINT fk_tagmanifestlabel_label_id_label FOREIGN KEY (label_id) REFERENCES public.label(id);


--
-- Name: tagmanifestlabel fk_tagmanifestlabel_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabel
    ADD CONSTRAINT fk_tagmanifestlabel_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: tagmanifestlabelmap fk_tagmanifestlabelmap_label_id_label; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap
    ADD CONSTRAINT fk_tagmanifestlabelmap_label_id_label FOREIGN KEY (label_id) REFERENCES public.label(id);


--
-- Name: tagmanifestlabelmap fk_tagmanifestlabelmap_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap
    ADD CONSTRAINT fk_tagmanifestlabelmap_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: tagmanifestlabelmap fk_tagmanifestlabelmap_manifest_label_id_manifestlabel; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap
    ADD CONSTRAINT fk_tagmanifestlabelmap_manifest_label_id_manifestlabel FOREIGN KEY (manifest_label_id) REFERENCES public.manifestlabel(id);


--
-- Name: tagmanifestlabelmap fk_tagmanifestlabelmap_tag_manifest_id_tagmanifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap
    ADD CONSTRAINT fk_tagmanifestlabelmap_tag_manifest_id_tagmanifest FOREIGN KEY (tag_manifest_id) REFERENCES public.tagmanifest(id);


--
-- Name: tagmanifestlabelmap fk_tagmanifestlabelmap_tag_manifest_label_id_tagmanifestlabel; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifestlabelmap
    ADD CONSTRAINT fk_tagmanifestlabelmap_tag_manifest_label_id_tagmanifestlabel FOREIGN KEY (tag_manifest_label_id) REFERENCES public.tagmanifestlabel(id);


--
-- Name: tagmanifesttomanifest fk_tagmanifesttomanifest_manifest_id_manifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifesttomanifest
    ADD CONSTRAINT fk_tagmanifesttomanifest_manifest_id_manifest FOREIGN KEY (manifest_id) REFERENCES public.manifest(id);


--
-- Name: tagmanifesttomanifest fk_tagmanifesttomanifest_tag_manifest_id_tagmanifest; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagmanifesttomanifest
    ADD CONSTRAINT fk_tagmanifesttomanifest_tag_manifest_id_tagmanifest FOREIGN KEY (tag_manifest_id) REFERENCES public.tagmanifest(id);


--
-- Name: tagtorepositorytag fk_tagtorepositorytag_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagtorepositorytag
    ADD CONSTRAINT fk_tagtorepositorytag_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: tagtorepositorytag fk_tagtorepositorytag_repository_tag_id_repositorytag; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagtorepositorytag
    ADD CONSTRAINT fk_tagtorepositorytag_repository_tag_id_repositorytag FOREIGN KEY (repository_tag_id) REFERENCES public.repositorytag(id);


--
-- Name: tagtorepositorytag fk_tagtorepositorytag_tag_id_tag; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.tagtorepositorytag
    ADD CONSTRAINT fk_tagtorepositorytag_tag_id_tag FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: team fk_team_organization_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT fk_team_organization_id_user FOREIGN KEY (organization_id) REFERENCES public."user"(id);


--
-- Name: team fk_team_role_id_teamrole; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT fk_team_role_id_teamrole FOREIGN KEY (role_id) REFERENCES public.teamrole(id);


--
-- Name: teammember fk_teammember_team_id_team; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammember
    ADD CONSTRAINT fk_teammember_team_id_team FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: teammember fk_teammember_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammember
    ADD CONSTRAINT fk_teammember_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: teammemberinvite fk_teammemberinvite_inviter_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammemberinvite
    ADD CONSTRAINT fk_teammemberinvite_inviter_id_user FOREIGN KEY (inviter_id) REFERENCES public."user"(id);


--
-- Name: teammemberinvite fk_teammemberinvite_team_id_team; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammemberinvite
    ADD CONSTRAINT fk_teammemberinvite_team_id_team FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: teammemberinvite fk_teammemberinvite_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teammemberinvite
    ADD CONSTRAINT fk_teammemberinvite_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: teamsync fk_teamsync_service_id_loginservice; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teamsync
    ADD CONSTRAINT fk_teamsync_service_id_loginservice FOREIGN KEY (service_id) REFERENCES public.loginservice(id);


--
-- Name: teamsync fk_teamsync_team_id_team; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.teamsync
    ADD CONSTRAINT fk_teamsync_team_id_team FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: torrentinfo fk_torrentinfo_storage_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.torrentinfo
    ADD CONSTRAINT fk_torrentinfo_storage_id_imagestorage FOREIGN KEY (storage_id) REFERENCES public.imagestorage(id);


--
-- Name: uploadedblob fk_uploadedblob_blob_id_imagestorage; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.uploadedblob
    ADD CONSTRAINT fk_uploadedblob_blob_id_imagestorage FOREIGN KEY (blob_id) REFERENCES public.imagestorage(id);


--
-- Name: uploadedblob fk_uploadedblob_repository_id_repository; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.uploadedblob
    ADD CONSTRAINT fk_uploadedblob_repository_id_repository FOREIGN KEY (repository_id) REFERENCES public.repository(id);


--
-- Name: userorganizationquota fk_userorganizationquota_organization; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userorganizationquota
    ADD CONSTRAINT fk_userorganizationquota_organization FOREIGN KEY (namespace_id) REFERENCES public."user"(id);


--
-- Name: userprompt fk_userprompt_kind_id_userpromptkind; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userprompt
    ADD CONSTRAINT fk_userprompt_kind_id_userpromptkind FOREIGN KEY (kind_id) REFERENCES public.userpromptkind(id);


--
-- Name: userprompt fk_userprompt_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userprompt
    ADD CONSTRAINT fk_userprompt_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: userregion fk_userregion_location_id_imagestoragelocation; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userregion
    ADD CONSTRAINT fk_userregion_location_id_imagestoragelocation FOREIGN KEY (location_id) REFERENCES public.imagestoragelocation(id);


--
-- Name: userregion fk_userregion_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: quay
--

ALTER TABLE ONLY public.userregion
    ADD CONSTRAINT fk_userregion_user_id_user FOREIGN KEY (user_id) REFERENCES public."user"(id);


