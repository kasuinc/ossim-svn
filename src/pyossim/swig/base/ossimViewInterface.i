/*-----------------------------------------------------------------------------
 * Filename        : ossimViewInterface.i
 * Author          : Vipul Raheja
 * License         : See top level LICENSE.txt file.
 * Description     : Contains SWIG-Python of class ossimViewInterface
 * -----------------------------------------------------------------------------*/

%module pyossim

%{

#include <ossim/base/ossimRtti.h>
#include <ossim/base/ossimViewInterface.h>

%}

/* Wrapping class ossimViewInterface */
class ossimViewInterface
{
        public:
                ossimViewInterface();
                ossimViewInterface(ossimObject* base);
                virtual ~ossimViewInterface();

                /*!
                 * The derived classes should overrid this method and
                 * return true or false whether it was able to cast the
                 * past in view to a view that it can interface to.
                 * So if you are a projective view you might
                 * cast to an ossimProjection.  The ownsTheView specifies
                 * whether or not it owns the passed in view pointer.
                 * This will specifiy whether or not the derived classes
                 * need to re-allocate the pointer or just delete its old
                 * pointer and set it to the passed in pointer.
                 */
                virtual bool setView(ossimObject* baseObject)=0;
                virtual ossimObject* getView()=0;
                virtual const ossimObject* getView()const=0;
                virtual void refreshView();
                ossimObject* getBaseObject();

        protected:
                ossimObject* theObject;
                /* Ignoring Macro 
                   TYPE_DATA */
};
