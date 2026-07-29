import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure InitialStressBoundaryValue where
  domain : Type
  tractionBoundary : Prop
  displacementBoundary : Prop
  initialStressSpecified : Prop
  wellPosedness : Prop
  tractionBoundaryTerm : tractionBoundary
  displacementBoundaryTerm : displacementBoundary
  initialStressSpecifiedTerm : initialStressSpecified
  wellPosednessTerm : wellPosedness

structure BoundaryValueEvidence (B : InitialStressBoundaryValue) where
  tractionBoundaryClosed : B.tractionBoundary
  displacementBoundaryClosed : B.displacementBoundary
  initialStressSpecifiedClosed : B.initialStressSpecified
  wellPosednessClosed : B.wellPosedness

def BoundaryValueClosed (B : InitialStressBoundaryValue) : Prop :=
  B.tractionBoundary ∧ B.displacementBoundary ∧ B.initialStressSpecified ∧ B.wellPosedness

theorem boundary_value_closed_from_evidence (B : InitialStressBoundaryValue) (E : BoundaryValueEvidence B) : BoundaryValueClosed B := by
  exact And.intro E.tractionBoundaryClosed
    (And.intro E.displacementBoundaryClosed
      (And.intro E.initialStressSpecifiedClosed E.wellPosednessClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse