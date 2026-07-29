import canonicalLaneMathlib.AdmissibleClass
import LinearElasticityInitialStressesTheoremCanonicalLaneLean.InitialStressAdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ElasticityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse