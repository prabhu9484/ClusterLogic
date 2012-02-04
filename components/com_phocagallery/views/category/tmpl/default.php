<?php
defined('_JEXEC') or die('Restricted access'); 
// Heading
$heading = '';
if ($this->params->get( 'page_title' ) != '') {
	$heading .= $this->params->get( 'page_title' );
}
if ( $this->tmpl['displaycatnametitle'] == 1) {
	if ($this->category->title != '') {
		if ($heading != '') {
			$heading .= ' - ';
		}
		$heading .= $this->category->title;
	}
}
// Pagetitle
if ($this->tmpl['showpagetitle'] != 0) {
	if ( $heading != '') {
	    echo '<div class="componentheading'.$this->params->get( 'pageclass_sfx' ).'">'.$heading.'</div>';
	} 
}
// Image, description
echo '<div class="contentpane'.$this->params->get( 'pageclass_sfx' ).'">';
if ( @$this->tmpl['image'] || @$this->category->description ) {
	echo '<div class="contentdescription'.$this->params->get( 'pageclass_sfx' ).'">';
	if ( isset($this->tmpl['image']) ) {
		echo $this->tmpl['image'];
	}
	echo $this->category->description.'</div>';
}
echo '</div>';

// Form
echo '<form action="'.$this->tmpl['action'].'" method="post" name="adminForm">';

// Phoca Gallery Width
if ($this->tmpl['phocagallerywidth'] != '') {
	$centerPage = '';
	if ($this->tmpl['phocagallerycenter'] == 1 || $this->tmpl['phocagallerycenter'] == 3) {
		$centerPage = 'margin: auto;';
	}
	echo '<div id="phocagallery" style="width:'. $this->tmpl['phocagallerywidth'].'px;'.$centerPage.'">';
} else {
	echo '<div id="phocagallery">';
}

// Detail Window
if ($this->tmpl['detailwindow'] == 7) {
	$tmplCom = '';
} else {
	$tmplCom = '&tmpl=component';
}

// Switch image
$noBaseImg 	= false;
$noBaseImg	= preg_match("/phoca_thumb_l_no_image/i", $this->tmpl['basicimage']);
if ($this->tmpl['switchimage'] == 1 && $noBaseImg == false) {
	$switchImage = PhocaGalleryImage::correctSwitchSize($this->tmpl['switchheight'], $this->tmpl['switchwidth']);
	?><div>
		<center class="main-switch-image">
			<table border="0" cellspacing="5" cellpadding="5" style="" class="main-switch-image-table">
				<tr>
					<td align="center" valign="middle" style="text-align:center;width:<?php echo $switchImage['width'];?>px;height:<?php echo $switchImage['height'];?>px; background: url('<?php echo $this->tmpl['waitimage']; ?>') <?php echo $switchImage['centerw'] ;?>px <?php echo $switchImage['centerh'];?>px no-repeat;margin:0px;padding:0px;"><?php echo $this->tmpl['basicimage'] ?></td>
				</tr>
			</table>
		</center>
	</div>
	<?php
}

// Categories View in Category View -
if ($this->tmpl['displaycategoriescv']) {
	echo $this->loadTemplate('categories');
}
// - - - - - - - - - - - - - - - - - 

// Height of all boxes
$imageHeight 			= PhocaGalleryImage::correctSize($this->tmpl['imageheight'], 100, 100, 0);
$imageWidth 			= PhocaGalleryImage::correctSize($this->tmpl['imagewidth'], 100, 120, 20);
$imageHeight['boxsize']	= PhocaGalleryImage::setBoxSize($imageHeight,$imageWidth, $this->tmpl['displayname'], $this->tmpl['displayicondetail'], $this->tmpl['displayicondownload'], $this->tmpl['displayiconvmbox'], $this->tmpl['startpiclens'], $this->tmpl['trash'], $this->tmpl['publishunpublish'], $this->tmpl['displayicongeobox'], $this->tmpl['displaycamerainfo'], $this->tmpl['displayiconextlink1box'], $this->tmpl['displayiconextlink2box'], $this->tmpl['categoryboxspace'], $this->tmpl['displayimageshadow'], $this->tmpl['displayratingimg'], $this->tmpl['displaycamerainfo'], $this->tmpl['displayiconfolder'], $this->tmpl['imgdescboxheight'], $this->tmpl['approvednotapproved'], $this->tmpl['displayiconcommentimgbox']);
if ( $this->tmpl['displayimageshadow'] != 'none' ) {		
	$imageHeight['size']	= $imageHeight['size'] + 18;
	$imageWidth['size'] 	= $imageWidth['size'] + 18;
}


//$miniHS = '';
// Images	

if (!empty($this->items)) {
	foreach($this->items as $key => $value) {
		
		?><div class="phocagallery-box-file" style="height:<?php echo $imageHeight['boxsize']; ?>px; width:<?php echo $imageWidth['boxsize']; ?>px">
			<center>
				<div class="phocagallery-box-file-first" style="height:<?php echo $imageHeight['size']; ?>px;width:<?php echo $imageWidth['size']; ?>px;">
					<div class="phocagallery-box-file-second">
						<div class="phocagallery-box-file-third">
							<center>
							<a class="<?php echo $value->button->methodname; ?>"<?php
							if ($value->type == 2) {
								if ($value->overlib == 0) {
									echo ' title="'. $value->title.'"';
								}
							}

							echo ' href="'. $value->link.'"';
							
							// Correct size for external Image (Picasa) - subcategory
							if (isset($value->extpic) && $value->extpic != '') {
								$correctImageRes = PhocaGalleryPicasa::correctSizeWithRate($value->extw, $value->exth, $this->tmpl['picasa_correct_width_m'], $this->tmpl['picasa_correct_height_m']);
							}
							
							// Image
							if ($value->type == 2) {
							
								// Correct size for picasa - image
								if (isset($value->extid) && $value->extid != '') {
									$correctImageRes = PhocaGalleryPicasa::correctSizeWithRate($value->extw, $value->exth, $this->tmpl['picasa_correct_width_m'], $this->tmpl['picasa_correct_height_m']);
								}
							
								if ($this->tmpl['detailwindow'] == 1) {
									echo ' onclick="'. $value->button->options.'"';
								} else if ($this->tmpl['detailwindow'] == 4 || $this->tmpl['detailwindow'] == 5) {
									$highSlideOnClick = str_replace('[phocahsfullimg]',$value->linkorig, $this->tmpl['highslideonclick']);
									echo ' onclick="'. $highSlideOnClick.'"';
								} else if ($this->tmpl['detailwindow'] == 6 ) {
									echo ' onclick="gjaks.show('.$value->linknr.'); return false;"';
								} else if ($this->tmpl['detailwindow'] == 7 ) {
									echo '';
								} else {
									echo ' rel="'.$value->button->options.'"';
								}
							
								// SWITCH OR OVERLIB
								if ($this->tmpl['switchimage'] == 1) {
									if ($value->extl != '') {
										$correctImageResL = PhocaGalleryPicasa::correctSizeWithRate($value->extwswitch, $value->exthswitch, $this->tmpl['switchwidth'], $this->tmpl['switchheight']);

									echo ' onmouseover="PhocaGallerySwitchImage(\'PhocaGalleryobjectPicture\', \''. $value->extl.'\', '.$correctImageResL['width'].', '.$correctImageResL['height'].');" '; 
									// onmouseout="PhocaGallerySwitchImage(\'PhocaGalleryobjectPicture\', \''.$value->extl.'\');"
								 
									} else {
										$switchImg = str_replace('phoca_thumb_m_','phoca_thumb_l_',JURI::base(true).'/'. $value->linkthumbnailpath);
										echo ' onmouseover="PhocaGallerySwitchImage(\'PhocaGalleryobjectPicture\', \''. $switchImg.'\');" '; 
										// onmouseout="PhocaGallerySwitchImage(\'PhocaGalleryobjectPicture\', \''.$switchImg.'\');" 
									}
								} else {
									echo $value->overlib_value;					
								}
								
								?> ><?php 
								if ($value->overlib == 0) {
								
									if (isset($value->extid) && $value->extid != '') {
										echo JHTML::_( 'image', $value->extm, '', array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height']), '', $value->title);
									} else {
										echo JHTML::_( 'image.site', $value->linkthumbnailpath, '', '', '', $value->title );
									}
								} else {
									if (isset($value->extid) && $value->extid != '') {
										echo JHTML::_( 'image', $value->extm, '', array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height']), '', '');
									} else {
										echo JHTML::_( 'image.site', $value->linkthumbnailpath, '', '', '', '', array('class' => 'pimo') );
									}
								}

								if ($value->enable_piclens == 1) {
									if ($value->extid != '') {
										echo '<span class="mbf-item">#phocagallerypiclens '.$value->catid.'-phocagallerypiclenscode-'.$value->extid.'</span>';
									} else {
										echo '<span class="mbf-item">#phocagallerypiclens '.$value->catid.'-phocagallerypiclenscode-'.$value->filename.'</span>';
									}
								}
							} else {
								echo ' >'; 
								if (isset($value->extpic) && $value->extpic != '') {
									echo JHTML::_( 'image', $value->extm, '', array('width' => $correctImageRes['width'], 'height' => $correctImageRes['height']), '', $value->title);
								} else {
									echo JHTML::_( 'image.site', $value->linkthumbnailpath, '', '', '', $value->title );
								}
								
							} // if type 2 else type 0, 1 (image, category, folder)
								echo '</a>';
								if ( $this->tmpl['detailwindow'] == 5) {
									if ($this->tmpl['displaytitleindescription'] == 1) {
										echo '<div class="highslide-heading">';
										echo $value->title;
										echo '</div>';
									}
									if ($this->tmpl['displaydescriptiondetail'] == 1) {
										echo '<div class="highslide-caption">';
										echo $value->description;
										echo '</div>';
									}
								} ?>


								
							</center>
						</div>
					</div>
				</div>
			</center>
			
		<?php
		// subfolder
		if ($value->type == 1) {
			if ($value->displayname == 1 || $value->displayname == 2) {
				echo '<div class="phocaname" style="font-size:'.$this->tmpl['fontsizename'].'px">'
				.PhocaGalleryText::wordDelete($value->title, $this->tmpl['charlengthname'], '...').'</div>';
			}
		}
		// image
		if ($value->type == 2) {
			if ($value->displayname == 1) {
				echo '<div class="phocaname" style="font-size:'.$this->tmpl['fontsizename'].'px">'
				.PhocaGalleryText::wordDelete($value->title, $this->tmpl['charlengthname'], '...').'</div>';
			}
			if ($value->displayname == 2) {
				echo '<div class="phocaname" style="font-size:'.$this->tmpl['fontsizename'].'px">&nbsp;</div>';
			}
		}
		
		// Rate Image
		if($value->item_type == 'image' && $this->tmpl['displayratingimg'] == 1) {
			?> <a class="<?php echo $value->buttonother->methodname; ?>" title="<?php echo JText::_('Rate Image');//$value->title; ?>" href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$this->category->slug.'&id='.$value->slug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ); ?>"<?php
			if ($this->tmpl['detailwindow'] == 1) {
				echo ' onclick="'. $value->buttonother->optionsrating.'"';
			} else if ($this->tmpl['detailwindow'] == 4 ) {
				echo ' onclick="'. $this->tmpl['highslideonclick'].'"';
			} else if ($this->tmpl['detailwindow'] == 5 ) {
				echo ' onclick="'. $this->tmpl['highslideonclick2'].'"';
			} else if ($this->tmpl['detailwindow'] == 7 ) {
				echo '';
			} else {
				echo ' rel="'. $value->buttonother->optionsrating.'"';
			}
			echo ' >';
					
			echo '<div><ul class="star-rating-small">'
			.'<li class="current-rating" style="width:'.$value->voteswidthimg.'px"></li>'
			.'<li><span class="star1"></span></li>';
			for ($iV = 2;$iV < 6;$iV++) {
				echo '<li><span class="stars'.$iV.'"></span></li>';
			}
			echo '</ul></div>';
			
			echo '</a>';
		}
	
		

		if ($value->displayicondetail == 1 || $value->displayicondownload > 0 || $value->displayiconfolder == 1 || $value->displayiconvm || $value->startpiclens == 1 || $value->trash == 1 || $value->publishunpublish == 1 || $value->displayicongeo == 1 || $value->camerainfo == 1 || $value->displayiconextlink1	== 1 || $value->displayiconextlink2	== 1 || $value->camerainfo == 1)
		{
			echo '<div class="detail" style="margin-top:2px">';
			
			if ($value->startpiclens == 1) {							
				?><a href="javascript:PicLensLite.start({feedUrl:'<?php echo JURI::base(true) . '/images/phocagallery/'
		. $value->catid .'.rss'; ?>'});" title="Cooliris" ><?php
		echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-cooliris.'.$this->tmpl['formaticon'], 'Cooliris');
		?></a><?php
		  
			}
			
			if ($value->displayicondetail == 1) {
				?> <a class="<?php echo $value->button2->methodname; ?>" title="<?php echo JText::_('Image Detail');//$value->title; ?>" href="<?php echo $value->link2; ?>"<?php
					if ($this->tmpl['detailwindow'] == 1) {
						echo ' onclick="'. $value->button2->options.'"';
					} else if ($this->tmpl['detailwindow'] == 2) {
						echo ' rel="'. $value->button2->options.'"';
					} else if ($this->tmpl['detailwindow'] == 4 ) {
						echo ' onclick="'. $this->tmpl['highslideonclick'].'"';
					} else if ($this->tmpl['detailwindow'] == 5 ) {
						echo ' onclick="'. $this->tmpl['highslideonclick2'].'"';
					} else if ($this->tmpl['detailwindow'] == 6) {
						echo ' onclick="gjaks.show('.$value->linknr.'); return false;"';
					} else if ($this->tmpl['detailwindow'] == 7 ) {
						echo '';
					} else {
						echo ' rel="'. $value->button2->options.'"';
					}
					echo ' >';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-view.'.$this->tmpl['formaticon'], JText::_('Image Detail'));
					echo '</a>';
			}
			
			if ($value->displayiconfolder == 1) {
					?> <a class="<?php echo $value->buttonother->methodname; ?>" title="<?php echo JText::_('Sub category');//$value->title; ?>" href="<?php echo $value->link; ?>">
					<?php
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-folder-small.'.$this->tmpl['formaticon'], $value->title);	
					echo '</a>';
			}
			
			if ($value->displayicondownload > 0) {
				
					// Direct Download but not if there is a youtube
					if ($value->displayicondownload == 2 && $value->videocode == '') {
						?> <a title="<?php echo JText::_('Image Download');//$value->title; ?>" href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$this->category->slug.'&id='.$value->slug. $tmplCom.'&phocadownload='.$value->displayicondownload.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ); ?>"<?php
					} else { 
						
						?> <a class="<?php echo $value->buttonother->methodname; ?>" title="<?php echo JText::_('Image Download');//$value->title; ?>" href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=detail&catid='.$this->category->slug.'&id='.$value->slug. $tmplCom.'&phocadownload='.(int)$value->displayicondownload.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ); ?>"<?php
					
						if ($this->tmpl['detailwindow'] == 1) {
							echo ' onclick="'. $value->buttonother->options.'"';
						} else if ($this->tmpl['detailwindow'] == 4 ) {
							echo ' onclick="'. $this->tmpl['highslideonclick'].'"';
						} else if ($this->tmpl['detailwindow'] == 5 ) {
							echo ' onclick="'. $this->tmpl['highslideonclick2'].'"';
						} else if ($this->tmpl['detailwindow'] == 7 ) {
							echo '';
						} else {
							echo ' rel="'. $value->buttonother->options.'"';
						}
					}
					echo ' >';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-download.'.$this->tmpl['formaticon'], JText::_('Image Download'));
					echo '</a>';
			}
			
			if ($value->displayicongeo == 1) {
				?> <a class="<?php echo $value->buttonother->methodname; ?>" title="<?php echo JText::_('Geotagging');//$value->title; ?>" href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=map&catid='.$this->category->slug.'&id='.$value->slug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ); ?>"<?php
					if ($this->tmpl['detailwindow'] == 1) {
						echo ' onclick="'. $value->buttonother->options.'"';
					} else if ($this->tmpl['detailwindow'] == 4 ) {
						echo ' onclick="'. $this->tmpl['highslideonclick'].'"';
					} else if ($this->tmpl['detailwindow'] == 5 ) {
						echo ' onclick="'. $this->tmpl['highslideonclick2'].'"';
					} else if ($this->tmpl['detailwindow'] == 7 ) {
						echo '';
					} else {
						echo ' rel="'. $value->buttonother->options.'"';
					}
					echo ' >';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-geo.'.$this->tmpl['formaticon'], JText::_('Geotagging'));
					echo '</a>';
			}
			
			if ($value->camerainfo == 1) {
				?> <a class="<?php echo $value->buttonother->methodname; ?>" title="<?php echo JText::_('Camera Info');//$value->title; ?>" href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=info&catid='.$this->category->slug.'&id='.$value->slug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ); ?>"<?php
					if ($this->tmpl['detailwindow'] == 1) {
						echo ' onclick="'. $value->buttonother->options.'"';
					} else if ($this->tmpl['detailwindow'] == 4 ) {
						echo ' onclick="'. $this->tmpl['highslideonclick'].'"';
					} else if ($this->tmpl['detailwindow'] == 5 ) {
						echo ' onclick="'. $this->tmpl['highslideonclick2'].'"';
					} else if ($this->tmpl['detailwindow'] == 7 ) {
						echo '';
					} else {
						echo ' rel="'. $value->buttonother->options.'"';
					}
					echo ' >';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-info.'.$this->tmpl['formaticon'], JText::_('Camera Info'));
					echo '</a>';
			}
			
			if ($value->displayiconcommentimg == 1) {
				?> <a class="<?php echo $value->buttonother->methodname; ?>" title="<?php echo JText::_('PHOCAGALLERY_COMMENT_IMAGE'); ?>" href="<?php echo JRoute::_('index.php?option=com_phocagallery&view=comment&catid='.$this->category->slug.'&id='.$value->slug.$tmplCom.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ); ?>"<?php
				if ($this->tmpl['detailwindow'] == 1) {
					echo ' onclick="'. $value->buttonother->options.'"';
				} else if ($this->tmpl['detailwindow'] == 4 ) {
					echo ' onclick="'. $this->tmpl['highslideonclick'].'"';
				} else if ($this->tmpl['detailwindow'] == 5 ) {
					echo ' onclick="'. $this->tmpl['highslideonclick2'].'"';
				} else if ($this->tmpl['detailwindow'] == 7 ) {
					echo '';
				} else {
					echo ' rel="'. $value->buttonother->options.'"';
				}
				echo ' >';
				$cimgid = JRequest::getVar( 'cimgid', 0, '', 'int');
				if($cimgid > 0) {
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-comment-a.gif', JText::_('PHOCAGALLERY_COMMENT_IMAGE'));
				} else {
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-comment.'.$this->tmpl['formaticon'], JText::_('PHOCAGALLERY_COMMENT_IMAGE'));
				}
				echo '</a>';	
			}
			
			if ($value->displayiconextlink1 == 1) {
				?> <a title="<?php echo $value->extlink1[1] ?>" href="http://<?php echo $value->extlink1[0] ?>" target="<?php echo $value->extlink1[2] ?>" <?php echo $value->extlink1[5]?>><?php echo $value->extlink1[4]; ?></a><?php
				
			}
			if ($value->displayiconextlink2 == 1) {
				?> <a title="<?php echo $value->extlink2[1] ?>" href="http://<?php echo $value->extlink2[0] ?>" target="<?php echo $value->extlink2[2] ?>" <?php echo $value->extlink2[5]?>><?php echo $value->extlink2[4]; ?></a><?php
				
			}
			
			// VirtueMart Link
			if ($value->displayiconvm == 1) {
				echo ' <a title="'.JText::_('Eshop').'" href="'. JRoute::_($value->vmlink).'">';
				echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-cart.'.$this->tmpl['formaticon'], JText::_('Eshop'));
				echo '</a>';
			}
			
			// Trash for private categories
			if ($value->trash == 1) {
				echo ' <a onclick="return confirm(\''.JText::_('WARNWANTDELLISTEDITEMS').'\')" title="'.JText::_('Delete').'" href="'. JRoute::_('index.php?option=com_phocagallery&view=category&catid='.$this->category->slug.'&id='.$value->slug.'&controller=category&task=remove'.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ).$this->tmpl['limitstarturl'].'">';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-trash.'.$this->tmpl['formaticon'], JText::_('Delete'));
					echo '</a>';
			}
			
			// Publish Unpublish for private categories
			if ($value->publishunpublish == 1) {
				if ($value->published == 1) {
				
					echo ' <a title="'.JText::_('Unpublish').'" href="'. JRoute::_('index.php?option=com_phocagallery&view=category&catid='.$this->category->slug.'&id='.$value->slug.'&&controller=category&task=unpublish'.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ).$this->tmpl['limitstarturl'].'">';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-publish.'.$this->tmpl['formaticon'], JText::_('Unpublish'));
					echo '</a>';
				}
				if ($value->published == 0) {
				
					echo ' <a title="'.JText::_('Publish').'" href="'. JRoute::_('index.php?option=com_phocagallery&view=category&catid='.$this->category->slug.'&id='.$value->slug.'&controller=category&task=publish'.'&Itemid='. JRequest::getVar('Itemid', 0, '', 'int') ).$this->tmpl['limitstarturl'].'">';
					echo JHTML::_('image', 'components/com_phocagallery/assets/images/icon-unpublish.'.$this->tmpl['formaticon'], JText::_('Publish'));
					echo '</a>';
				
				}
			}
			
			if ($value->approvednotapproved == 1) {
				// Display the information about Approving too:
				if ($value->approved == 1) {
					echo ' <a href="#" title="'.JText::_('PHOCAGALLERY_IMAGE_APPROVED').'">'.JHTML::_('image', 'components/com_phocagallery/assets/images/icon-publish.'.$this->tmpl['formaticon'], JText::_('PHOCAGALLERY_APPROVED')).'</a>';
				}
				if ($value->approved == 0) {

					echo ' <a href="#" title="'.JText::_('PHOCAGALLERY_IMAGE_NOT_APPROVED').'">'.JHTML::_('image', 'components/com_phocagallery/assets/images/icon-unpublish.'.$this->tmpl['formaticon'], JText::_('PHOCAGALLERY_NOT_APPROVED')).'</a>';
				
				}
			}
		
			

			echo '</div>';
			echo '<div style="clear:both"></div>';
		}
		
		if ($this->tmpl['displayimgdescbox'] == 1  && $value->description != '') {
			echo '<div class="phocaimgdesc" style="font-size:'.$this->tmpl['fontsizeimgdesc'].'px">'.PhocaGalleryText::wordDelete($value->description, $this->tmpl['charlengthimgdesc'], '...').'</div>';
		}
		
		echo '</div>';

	}

} else {
	echo JText::_('There is no image in this category');
}
?>

	<div style="clear:both"></div>
</div>

<p>&nbsp;</p>

<?php
if (count($this->items)) {
	echo '<div><center>';
	if ($this->params->get('show_pagination_limit_category')) {
		
		echo '<div style="margin:0 10px 0 10px;display:inline;">'
			.JText::_('Display Num') .'&nbsp;'
			.$this->tmpl['pagination']->getLimitBox()
			.'</div>';
	}
	
	if ($this->params->get('show_pagination_category')) {
	
		echo '<div style="margin:0 10px 0 10px;display:inline;" class="sectiontablefooter'.$this->params->get( 'pageclass_sfx' ).'" >'
			.$this->tmpl['pagination']->getPagesLinks()
			.'</div>'
		
			.'<div style="margin:0 10px 0 10px;display:inline;" class="pagecounter">'
			.$this->tmpl['pagination']->getPagesCounter()
			.'</div>';
	}
	echo '</center></div>';
}
echo '<input type="hidden" name="controller" value="category" />';
echo JHTML::_( 'form.token' );
echo '</form>';

echo '<div>&nbsp;</div>';


if ($this->tmpl['displaytabs'] > 0) {
	echo '<div id="phocagallery-pane">';
	$pane =& JPane::getInstance('Tabs', array('startOffset'=> $this->tmpl['tab']));
	echo $pane->startPane( 'pane' );
	
	if ((int)$this->tmpl['displayrating'] == 1) {
		echo $pane->startPanel( JHTML::_( 'image.site', 'components/com_phocagallery/assets/images/icon-vote.'.$this->tmpl['formaticon'],'', '', '', '', '') . '&nbsp;'.JText::_('Rating'), 'pgvotes' );
		echo $this->loadTemplate('rating');
		echo $pane->endPanel();
	}

	if ((int)$this->tmpl['displaycomment'] == 1) {
		echo $pane->startPanel( JHTML::_( 'image.site', 'components/com_phocagallery/assets/images/icon-comment.'.$this->tmpl['formaticon'],'', '', '', '', '') . '&nbsp;'.JText::_('Comments'), 'pgcomments' );
		
	
		if (JComponentHelper::isEnabled('com_jcomments', true) && $this->tmpl['externalcommentsystem'] == 1) {
			include_once(JPATH_BASE.DS.'components'.DS.'com_jcomments'.DS.'jcomments.php');
			echo JComments::showComments($this->category->id, 'com_phocagallery', JText::_('PHOCAGALLERY_CATEGORY') .' '. $this->category->title);
		} else {
			echo $this->loadTemplate('comments');
		}
		
	}

	if ((int)$this->tmpl['displaycategorystatistics'] == 1) {
		echo $pane->startPanel( JHTML::_( 'image.site', 'components/com_phocagallery/assets/images/icon-statistics.'.$this->tmpl['formaticon'],'', '', '', '', '') . '&nbsp;'.JText::_('Statistics'), 'pgstatistics' );
		echo $this->loadTemplate('statistics');
		echo $pane->endPanel();
	}
	
	if ((int)$this->tmpl['displaycategorygeotagging'] == 1) {
		echo $pane->startPanel( JHTML::_( 'image.site', 'components/com_phocagallery/assets/images/icon-geo.'.$this->tmpl['formaticon'],'', '', '', '', '') . '&nbsp;'.JText::_('Geotagging'), 'pggeotagging' );
		echo $this->loadTemplate('geotagging');
		echo $pane->endPanel();
	}
	
	if ((int)$this->tmpl['displayupload'] == 1) {
		echo $pane->startPanel( JHTML::_( 'image.site', 'components/com_phocagallery/assets/images/icon-upload.'.$this->tmpl['formaticon'],'', '', '', '', '') . '&nbsp;'.JText::_('Upload'), 'pgupload' );
		echo $this->loadTemplate('upload');
		echo $pane->endPanel();
	}

	echo $pane->endPane();
	echo '</div>';// end phocagallery-pane
}

if ($this->tmpl['detailwindow'] == 6) {
	?><script type="text/javascript">
	var gjaks = new SZN.LightBox(dataJakJs, optgjaks);
	</script><?php
}
echo '<div>&nbsp;</div>';
?>
