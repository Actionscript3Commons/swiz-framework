package org.swizframework.reflection
{
	/**
	 * Representation of a class that has been decorated with class level metadata.
	 */
	public class MetadataHostClass extends BaseMetadataHost
	{
		// ========================================
		// public properties
		// ========================================
		
		/**
		 * @return Flag indicating whether or not this whole class has been made bindable.
		 */		
		public function get isBindable():Boolean
		{
			for each( var tag:IMetadataTag in metadataTags )
			{
				if( tag.name == "Bindable" )
					return true;
			}
			
			return false;
		}
		
		// ========================================
		// constructor
		// ========================================
		
		public function MetadataHostClass()
		{
			super();
		}
	}
}