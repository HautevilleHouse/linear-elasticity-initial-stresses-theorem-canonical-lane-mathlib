import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearElasticityInitialStressesTheoremCanonicalLaneLean.InitialStressFields

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure StressDecomposition (P : InitialStressFieldPackage) where
  elasticPart : P.field.body → ℝ
  inelasticPart : P.field.body → ℝ
  decompositionLaw : Prop

structure DecompositionEvidence (P : InitialStressFieldPackage) (D : StressDecomposition P) where
  elasticPartClosed : D.elasticPart = P.field.body
  inelasticPartClosed : D.inelasticPart = 0
  decompositionLawClosed : D.decompositionLaw

def StressDecompositionClosed (P : InitialStressFieldPackage) (D : StressDecomposition P) : Prop :=
  D.elasticPart = P.field.body ∧ D.inelasticPart = 0 ∧ D.decompositionLaw

theorem stress_decomposition_closed_from_evidence (P : InitialStressFieldPackage) (D : StressDecomposition P)
    (E : DecompositionEvidence P D) : StressDecompositionClosed P D := by
  exact And.intro E.elasticPartClosed (And.intro E.inelasticPartClosed E.decompositionLawClosed)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse