<?php

	Class formatterMarkdown_Extra extends TextFormatter{

		private static $_parser;

		public function about(){
			return array(
				'name' => 'Markdown Extra',
				'version' => '1.8',
				'release-date' => '2010-04-30',
				'author' => array(
					'name' => 'Alistair Kearney',
					'website' => 'http://symphony-cms.com',
					'email' => 'alistair@symphony-cms.com'
				),
				'description' => 'Write entries in the Markdown format. Wrapper for the PHP Markdown text-to-HTML conversion tool written by Michel Fortin.'
			);
		}
				
		public function run($string){
			if(!self::$_parser){
				include_once(EXTENSIONS . '/markdown/lib/php-markdown-extra-1.2.4/markdown.php');
				self::$_parser = new MarkdownExtra_Parser();
			}
			
			// Markdown transformation
			$result = stripslashes(self::$_parser->transform($string));

			return $result;
		}
		
	}

