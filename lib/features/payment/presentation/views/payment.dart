import 'package:edulink_mobile/common_widgets/header/header.dart';
import 'package:edulink_mobile/features/payment/data/models/tranche_model.dart';
import 'package:edulink_mobile/features/payment/presentation/bloc/tranches_bloc.dart';
import 'package:edulink_mobile/features/payment/presentation/widgets/paid_tranche.dart';
import 'package:edulink_mobile/features/payment/presentation/widgets/unpaid_tranche.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Payment extends StatelessWidget implements AutoRouteWrapper {
  const Payment({Key? key}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => TranchesBloc()..add(GetTranchesEvent()),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Header(
                title: "Paiment",
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: BlocBuilder<TranchesBloc, TrancheState>(
                  builder: (context, state) {
                    if (state is GetTranchesSuccess) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.tranches.length,
                        itemBuilder: (context, index) {
                          final TrancheModel tranche = state.tranches[index];
                          return tranche.paid
                              ? PaidTranche(
                                  tranche: tranche,
                                )
                              : UnpaidTranche(
                                  tranche: tranche,
                                );
                        },
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
