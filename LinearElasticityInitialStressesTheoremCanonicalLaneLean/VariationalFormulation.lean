import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearElasticityInitialStressesTheoremCanonicalLaneLean.InitialStressFields

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure VariationalFormulation (P : InitialStressFieldPackage) where
  energyFunctional : Type
  stationaryPoint : Prop
  eulerLagrangeEquation : Prop

structure VariationalEvidence (P : InitialStressFieldPackage) (V : VariationalFormulation P) where
  stationaryPointClosed : V.stationaryPoint
  eulerLagrangeEquationClosed : V.eulerLagrangeEquation

def VariationalClosed (P : InitialStressFieldPackage) (V : VariationalFormulation P) : Prop :=
  V.stationaryPoint ∧ V.eulerLagrangeEquation

theorem variational_closed_from_evidence (P : InitialStressFieldPackage) (V : VariationalFormulation P)
    (E : VariationalEvidence P V) : VariationalClosed P V := by
  exact And.intro E.stationaryPointClosed E.eulerLagrangeEquationClosed

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse