<?php defined('_JEXEC') or die('Restricted access');




if (JRequest::getVar( 'print', '', '', 'int' ) == 1 || JRequest::getVar( 'tmpl', '', '', 'string' ) == 'component') {

	$foutput = '<div style="clear:both"></div>';
} else {
	if ( $this->params->def( 'show_page_title', 1 ) ) {
		echo '<div class="componentheading'. $this->params->get( 'pageclass_sfx' ).'">'
		. $this->params->get('page_title') . '</div>';
	}
	$foutput = PhocaMapsHelper::getInfo();
}

echo '<div id="phocamaps">';

if ((!isset($this->map->longitude))
		|| (!isset($this->map->latitude))
		|| (isset($this->map->longitude) && $this->map->longitude == '')
		|| (isset($this->map->latitude) && $this->map->latitude == '')) {
	echo '<p>' . JText::_('Google Maps Error Front') . '</p>';
} else {
	echo $this->tmpl['description'];
	
	$id		= '';
	$map	= new PhocaMapsMap($id);
	$map->loadAPI();
	$map->loadGeoXMLJS();
	$map->loadBase64JS();
	
	// Map Box
	if ($this->tmpl['border'] == '') {
		echo '<div class="phocamaps-box" align="center" style="'.$this->tmpl['stylesite'].'">';
		if ($this->tmpl['fullwidth'] == 1) {
			echo '<div id="phocaMap'.$id.'" style="margin:0;padding:0;width:100%;height:'.$this->map->height.'px"></div>';
		} else {
			echo '<div id="phocaMap'.$id.'" style="margin:0;padding:0;width:'.$this->map->width.'px;height:'.$this->map->height.'px"></div>';
		}
		echo '</div>';
	} else {
		echo '<div id="phocamaps-box"><div class="pmbox'.$this->tmpl['border'].'" '. $this->tmpl['stylesitewidth'].'><div><div><div>';
		if ($this->tmpl['fullwidth'] == 1) {
			echo '<div id="phocaMap'.$id.'" style="width:100%;height:'.$this->map->height.'px"></div>';
		} else {
			echo '<div id="phocaMap'.$id.'" style="width:'.$this->map->width.'px;height:'.$this->map->height.'px"></div>';
		}
		echo '</div></div></div></div></div>';
	}

	// Direction
	if ($this->tmpl['displaydir']) {
			
		$countMarker 	= count($this->marker);
		$form 			= '';
		if ((int)$countMarker > 1) {
		
			$form .= ' ' . JText::_('To').': <select name="pmto'.$id.'" id="toPMAddress'.$id.'">';
			foreach ($this->marker as $key => $markerV) {
				if ((isset($markerV->longitude) && $markerV->longitude != '')
				&& (isset($markerV->latitude) && $markerV->latitude != '')) {
					$form .= '<option value="'.$markerV->latitude.','.$markerV->longitude.'">'.$markerV->title.'</option>';
				}
			}
			$form .= '</select>';
		} else if ((int)$countMarker == 1) {
		
			foreach ($this->marker as $key => $markerV) {
				if ((isset($markerV->longitude) && $markerV->longitude != '')
				&& (isset($markerV->latitude) && $markerV->latitude != '')) {
					$form .= '<input name="pmto'.$id.'" id="toPMAddress'.$id.'" type="hidden" value="'.$markerV->latitude.','.$markerV->longitude.'" />';
				}
			}
		
		}
		
		if ($form != '') {
			echo '<div class="pmroute"><form action="#" onsubmit="setPhocaDir'.$id.'(this.pmfrom'.$id.'.value, this.pmto'.$id.'.value); return false;">';
			echo JText::_('From Address').': <input type="text" size="30" id="fromPMAddress'.$id.'" name="pmfrom'.$id.'" value=""/>';
			echo $form;
			echo ' <input name="pmsubmit'.$id.'" type="submit" value="'.JText::_('Get Route').'" /></form></div>';
			echo '<div id="phocaDir'.$id.'">';
			if ($this->tmpl['display_print_route'] == 1) {
				echo '<div id="phocaMapsPrintIcon'.$id.'" style="display:none"></div>';
			}
			echo '</div>';
		}
	}	

	// $id is not used anymore as this is added in methods of Phoca Maps Class
	// e.g. 'phocaMap' will be not 'phocaMap'.$id as the id will be set in methods
	
	echo $map->startJScData();
	echo $map->addAjaxAPI('maps', '3.x', $this->tmpl['params']);
	echo $map->addAjaxAPI('search', '1', $this->tmpl['paramssearch']);

	echo $map->createMap('phocaMap', 'mapPhocaMap', 'phocaLatLng', 'phocaOptions','tstPhocaMap', 'tstIntPhocaMap', FALSE, FALSE, $this->tmpl['displaydir']);
	echo $map->cancelEventFunction();
	echo $map->checkMapFunction();
	echo $map->startMapFunction();

		echo $map->setLatLng( $this->map->latitude, $this->map->longitude );

		echo $map->startMapOptions();
		echo $map->setMapOption('zoom', $this->map->zoom).','."\n";
		echo $map->setCenterOpt().','."\n";
		echo $map->setTypeControlOpt($this->map->typecontrol, $this->map->typecontrolposition).','."\n";
		echo $map->setNavigationControlOpt($this->map->zoomcontrol).','."\n";
		echo $map->setMapOption('scaleControl', $this->map->scalecontrol, TRUE ).','."\n";
		echo $map->setMapOption('scrollwheel', $this->map->scrollwheelzoom).','."\n";
		echo $map->setMapOption('disableDoubleClickZoom', $this->map->disabledoubleclickzoom).','."\n";
	//	echo $map->setMapOption('googleBar', $this->map->googlebar).','."\n";// Not ready yet
	//	echo $map->setMapOption('continuousZoom', $this->map->continuouszoom).','."\n";// Not ready yet
		echo $map->setMapTypeOpt($this->map->typeid)."\n";
		echo $map->endMapOptions();
		echo $map->setMap();
		
		// Markers
		jimport('joomla.filter.output');
		if (isset($this->marker) && !empty($this->marker)) {
		
			$iconArray = array(); // add information about created icons to array and check it so no duplicity icons js code will be created
			foreach ($this->marker as $key => $markerV) {
			
				if ((isset($markerV->longitude) && $markerV->longitude != '')
				&& (isset($markerV->latitude) && $markerV->latitude != '')) {
					
					
					$text = '<h1>' . addslashes($markerV->title) . '</h1>';
					$text .= '<div>'. PhocaMapsHelper::strTrimAll(addslashes($markerV->description)).'</div>';
					if ($markerV->displaygps == 1) {
						$text .= '<div class="pmgps"><table border="0"><tr><td><strong>'. JText::_('GPS') . ': </strong></td>'
								.'<td>'.PhocaMapsHelper::strTrimAll(addslashes($markerV->gpslatitude)).'</td></tr>'
								.'<tr><td></td>'
								.'<td>'.PhocaMapsHelper::strTrimAll(addslashes($markerV->gpslongitude)).'</td></tr></table></div>';
					}
					
					
					if(empty($markerV->icon)) {
						$markerV->icon = 0;
					}
					if(empty($markerV->title)){
						$markerV->title = '';
					}
					if(empty($markerV->description)){
						$markerV->description = '';
					}
					
					$iconOutput = $map->setMarkerIcon($markerV->icon);
					if (!in_array($markerV->icon, $iconArray)) {	
						echo $iconOutput['js'];
						$iconArray[] = $markerV->icon;
					}
					echo $map->setMarker($markerV->id,$markerV->title,$markerV->description,$markerV->latitude, $markerV->longitude, $iconOutput['icon'], $iconOutput['iconid'], $text, $markerV->contentwidth, $markerV->contentheight,  $markerV->markerwindow );
					
				}
			}
		}

		if ($this->tmpl['load_kml']) {
			echo $map->setKMLFile($this->tmpl['load_kml']);
		}
		
		if ($this->tmpl['displaydir']) {
			echo $map->setDirectionDisplayService('phocaDir');
		}
		echo $map->setListener();
		echo $map->endMapFunction();

		if ($this->tmpl['displaydir']) {
			
			echo $map->setDirectionFunction($this->tmpl['display_print_route'], $this->map->id, $this->map->alias, $this->tmpl['lang']);
		}
		
		echo $map->setInitializeFunction();
	echo $map->endJScData();
}


echo $foutput;
echo '</div>';
?>
