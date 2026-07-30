import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure PhaseDiagramCurve (T : Type) (C : Type) where
  temperature : T
  composition : C
  solidusLine : Prop
  liquidusLine : Prop
  eutecticPoint : Prop
  phaseBoundariesStable : Prop

structure PhaseDiagramCurveEvidence (T : Type) (C : Type) (pd : PhaseDiagramCurve T C) where
  solidusLineClosed : pd.solidusLine
  liquidusLineClosed : pd.liquidusLine
  eutecticPointClosed : pd.eutecticPoint
  phaseBoundariesStableClosed : pd.phaseBoundariesStable

def PhaseDiagramCurveClosed (T : Type) (C : Type) (pd : PhaseDiagramCurve T C) : Prop :=
  pd.solidusLine ∧ pd.liquidusLine ∧ pd.eutecticPoint ∧ pd.phaseBoundariesStable

theorem phase_diagram_curve_closed_from_evidence (T : Type) (C : Type) (pd : PhaseDiagramCurve T C)
    (E : PhaseDiagramCurveEvidence T C pd) : PhaseDiagramCurveClosed T C pd := by
  exact And.intro E.solidusLineClosed (And.intro E.liquidusLineClosed (And.intro E.eutecticPointClosed E.phaseBoundariesStableClosed))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse
