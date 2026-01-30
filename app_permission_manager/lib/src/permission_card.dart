import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'permission_manager.dart';

class PermissionCard extends StatefulWidget {
  final Permission permission;
  final IconData icon;
  final double size;

  const PermissionCard({
    super.key,
    required this.permission,
    required this.icon,
    this.size = 48,
  });

  @override
  State<PermissionCard> createState() => _PermissionCardState();
}

class _PermissionCardState extends State<PermissionCard> {
  PermissionStatus? _status;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loadStatus();
  }

  Future<void> _loadStatus() async {
    final status = await PermissionManager.check(widget.permission);
    if (!mounted) return;
    setState(() => _status = status);
  }

  Future<void> _request() async {
    if (_loading) return;

    FocusScope.of(context).unfocus();

    setState(() => _loading = true);

    PermissionStatus status;

    if (_status == PermissionStatus.permanentlyDenied) {
      await PermissionManager.openSettings();
      status = await PermissionManager.check(widget.permission);
    } else {
      status = await PermissionManager.request(widget.permission);
    }

    if (!mounted) return;

    setState(() {
      _status = status;
      _loading = false;
    });

    // ✅ SAFE dialog close (NO crash)
    if (status == PermissionStatus.granted) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }
  }

  Color _iconColor() {
    if (_status == PermissionStatus.granted) return Colors.green;
    if (_status == PermissionStatus.permanentlyDenied) return Colors.red;
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.icon, size: widget.size, color: _iconColor()),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: (_status == PermissionStatus.granted || _loading)
                  ? null
                  : _request,
              child: _loading
                  ? const SizedBox(
                      height: 18,
                      width: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(
                      _status == PermissionStatus.permanentlyDenied
                          ? "Open Settings"
                          : "Allow",
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
