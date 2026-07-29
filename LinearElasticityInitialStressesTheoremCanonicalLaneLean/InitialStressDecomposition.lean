import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure InitialStressDecomposition where
  totalStress : Type u → Type v
  initialStress : Type u → Type v
  elasticStress : Type u → Type v
  decompositionRelation : Prop
  initialStressSymmetric : Prop

structure InitialStressDecompositionEvidence (D : InitialStressDecomposition) where
  decompositionRelationClosed : D.decompositionRelation
  initialStressSymmetricClosed : D.initialStressSymmetric

def InitialStressDecompositionClosed (D : InitialStressDecomposition) : Prop :=
  D.decompositionRelation ∧ D.initialStressSymmetric

theorem initial_stress_decomposition_closed_from_evidence (D : InitialStressDecomposition) (E : InitialStressDecompositionEvidence D) : InitialStressDecompositionClosed D :=
  And.intro E.decompositionRelationClosed E.initialStressSymmetricClosed

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse