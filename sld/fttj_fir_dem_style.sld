<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
  <UserLayer>
    <sld:LayerFeatureConstraints>
      <sld:FeatureTypeConstraint/>
    </sld:LayerFeatureConstraints>
    <sld:UserStyle>
      <sld:Name>fttj_fir_dem</sld:Name>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:Opacity>0.8</sld:Opacity>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="ramp">
              <sld:ColorMapEntry color="#00bfbf" quantity="0" opacity="0" label="0"/>
              <sld:ColorMapEntry color="#00ff00" quantity="1000" label="1000"/>
              <sld:ColorMapEntry color="#ffff00" quantity="1500" label="1500"/>
              <sld:ColorMapEntry color="#ff7f00" quantity="2000" label="2000"/>
              <sld:ColorMapEntry color="#bf7f3f" quantity="2500" label="2500"/>
              <sld:ColorMapEntry color="#141414" quantity="3400" label="3400"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
