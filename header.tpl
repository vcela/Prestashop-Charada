<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"><![endif]-->
<html lang="{$lang_iso}">
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
{/if}
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" /> 
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		{if isset($theme_settings)}<meta name="application-name" content="{$theme_settings.version}" />{/if}
	{if isset($css_files)}{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}{/if}
	{include file="$tpl_dir./settings.tpl"}
		{$HOOK_HEADER}
	<link href="{$css_dir}charadaweb.css" rel="stylesheet" type="text/css" media="{$media}" />	
	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if $logged}registered {else}guest {/if}{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if $content_only} content_only{/if} lang_{$lang_iso}">		
	{if !$content_only}
		{hook h='freePosition'}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="white_bg" {if isset($theme_settings) && isset($theme_settings.back_color)}style="background:{$theme_settings.back_color}"{/if}>
			<div class="{if isset($theme_settings) && isset($theme_settings.pattern)}back_{$theme_settings.pattern}{/if}" id="pattern">
		<div id="page" class="clearfix">			
			<!-- Header -->
			<div id="header">
				{hook h="displayNav"}
				<div id="header_logo">
					<a id="header_logo_img" href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
						<img class="logo{if isset($theme_settings.logo_type) && $theme_settings.logo_type == 1} hidden{/if}" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}"{if $logo_image_width} width="{$logo_image_width}" {/if}{if $logo_image_height} height="{$logo_image_height}" {/if}/>
						<span id="logo-text" class="{if isset($theme_settings.logo_type) && $theme_settings.logo_type == 0}hidden{/if}">
							{if isset($theme_settings.logo_text)}<span class="logo">{$theme_settings.logo_text}</span>{/if}
							{if isset($theme_settings.slogan)}<span class="slogan">{$theme_settings.slogan}</span>{/if}	
						</span>	
					</a>
				</div>
				{$HOOK_TOP}				
			</div>
			{hook h='menu'}
			<div id="columns" class="clearfix{if isset($theme_settings) && ($theme_settings.column == 'right')} right_col{/if}">
				{if $page_name !='index' && $page_name !='pagenotfound'}
					{include file="$tpl_dir./breadcrumb.tpl"}
				{/if}		
				{hook h="displayTopColumn"}
				{if $page_name == "index"}
					{hook h='hook_home_01'}
					{hook h='hook_home_02'}											
					{hook h='hook_home_03'}				
					{hook h='hook_home_04'}				
					{hook h='hook_home_05'}				
					{hook h='hook_home_06'}								
					{hook h='hook_home_07'}
					{hook h='hook_home_08'}
				{/if}		
				<!-- Center -->
				<div id="center_column">
	{/if}
