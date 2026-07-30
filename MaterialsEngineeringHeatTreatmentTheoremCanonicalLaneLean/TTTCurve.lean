import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure TTTCurvePackage where
  temperatureAxis : Prop
  timeAxis : Prop
  transformationStart : Prop
  transformationEnd : Prop
  pearliteRegion : Prop
  bainiteRegion : Prop

structure TTTCurveEvidence (T : TTTCurvePackage) where
  temperatureAxisClosed : T.temperatureAxis
  timeAxisClosed : T.timeAxis
  transformationStartClosed : T.transformationStart
  transformationEndClosed : T.transformationEnd
  pearliteRegionClosed : T.pearliteRegion
  bainiteRegionClosed : T.bainiteRegion

def TTTCurveClosed (T : TTTCurvePackage) : Prop :=
  T.temperatureAxis ∧ T.timeAxis ∧ T.transformationStart ∧
  T.transformationEnd ∧ T.pearliteRegion ∧ T.bainiteRegion

theorem ttt_curve_closed_from_evidence (T : TTTCurvePackage) (E : TTTCurveEvidence T) :
    TTTCurveClosed T := by
  exact And.intro E.temperatureAxisClosed
    (And.intro E.timeAxisClosed
      (And.intro E.transformationStartClosed
        (And.intro E.transformationEndClosed
          (And.intro E.pearliteRegionClosed E.bainiteRegionClosed))))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse